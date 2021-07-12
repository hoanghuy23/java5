package com.huy.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.huy.dao.CategoryDAO;
import com.huy.entity.Category;
import com.huy.entity.Product;

@Controller
public class CateroryController {
	
	@Autowired
	CategoryDAO dao;
	
	@RequestMapping("/Admin/index/caterory")
	public String index(Model model) {
		Category item = new Category();
		model.addAttribute("item", item);
		List<Category> items = dao.findAll();
		model.addAttribute("items", items);
		return "admin/caterory";
	}
	
	@RequestMapping("/caterory/edit/{id}")
	public String edit(Model model, @PathVariable("id") String id) {		
		Category item = dao.findById(id).get();
		model.addAttribute("item", item);
		List<Category> items = dao.findAll();
		model.addAttribute("items", items);
		return "admin/caterory";
	}
	
	@RequestMapping("/caterory/create")
	public String create(Category item) {		
		dao.save(item);
		return "redirect:/Admin/index/caterory";
	}
	
	@RequestMapping("/caterory/update")
	public String update(Category item) {
		dao.save(item);
		return "redirect:/caterory/edit/" + item.getId();
	}
	
	@RequestMapping("/caterory/delete/{id}")
	public String delete(@PathVariable("id") String id) {
		dao.deleteById(id);
		return "redirect:/Admin/index/caterory";
	}	
}
