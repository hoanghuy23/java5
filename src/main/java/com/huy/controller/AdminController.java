package com.huy.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


import com.huy.dao.ProductDAO;

import com.huy.entity.Product;

@Controller
public class AdminController {
	@Autowired
	ProductDAO dao;
	
	@RequestMapping("/Admin/index/product")
	public String indexProduct(Model model) {
		Product item = new Product();		
		model.addAttribute("item", item);
		List<Product> items = dao.findAll();
		model.addAttribute("items", items);
		return "admin/index";
	}
	
	@RequestMapping("/Admin/edit/{id}")
	public String edit(Model model, @PathVariable("id") Integer id) {		
		Product item = dao.findById(id).get();
		model.addAttribute("item", item);
		List<Product> items = dao.findAll();
		model.addAttribute("items", items);
		return "admin/index";
	}
	
	@RequestMapping("/product/create")
	public String create(Product item) {		
		dao.save(item);
		return "redirect:/Admin/index/product";
	}
	
	@RequestMapping("/product/update")
	public String update(Product item) {
		dao.save(item);
		return "redirect:/Admin/edit/" + item.getId();
	}
	
	@RequestMapping("/product/delete/{id}")
	public String delete(@PathVariable("id") Integer id) {
		dao.deleteById(id);
		return "redirect:/Admin/index/product";
	}	
	
}
