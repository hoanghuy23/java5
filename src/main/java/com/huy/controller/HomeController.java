package com.huy.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.huy.dao.CategoryDAO;
import com.huy.dao.ProductDAO;
import com.huy.entity.Category;
import com.huy.entity.Product;
import com.huy.service.SessionService;

@Controller
public class HomeController {
	@Autowired
	ProductDAO dao;
	
	@Autowired
	CategoryDAO ctedao;
	
	@Autowired
	SessionService session;
	
	@RequestMapping("/layout/Home")
	public String home(Model model, 
			@RequestParam("keywords") Optional<String> kw, 
			@RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 8);
		String kwords = kw.orElse(session.get("keywords", ""));
		List<Category> list = ctedao.findAll();
		model.addAttribute("list", list);
		session.set("keywords", kwords);
		Page<Product> items = dao.findAllByNameLike("%"+kwords+"%",pageable);
		model.addAttribute("items", items);
		return "layout/index";
	
	}
	
	@RequestMapping("/layout/Search")
	public String search(Model model, 
			@RequestParam("min") Optional<Double> min,
			@RequestParam("max") Optional<Double> max) {
		double minPrice = min.orElse(Double.MIN_VALUE);
		double maxPrice = max.orElse(Double.MAX_VALUE);
		List<Product> items = dao.findByPriceBetween(minPrice, maxPrice);
		model.addAttribute("items", items);
		return "layout/priceSearch";
	}
	
	
}
