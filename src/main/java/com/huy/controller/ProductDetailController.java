package com.huy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.huy.dao.ProductDAO;
import com.huy.entity.Product;

@Controller
public class ProductDetailController {

	@Autowired
	ProductDAO dao;
	
	@RequestMapping("/layout/productdetail")
	public String index() {
		
		return "layout/productDetail";
	}
	
	@RequestMapping("/layout/productdetail/{id}")
	public String idpro(Model model, @PathVariable("id") Integer id) {
		Product item = dao.findById(id).get();
		model.addAttribute("item", item);
		return "layout/productDetail";
	}
}
