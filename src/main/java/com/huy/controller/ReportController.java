package com.huy.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.huy.dao.ProductDAO;
import com.huy.entity.Product;
import com.huy.entity.Report;

@Controller
public class ReportController {

	@Autowired
	ProductDAO dao;
	
	@RequestMapping("/Admin/reportProduct")
	public String report(Model model) {
		List<Report> list = dao.getInventoryByCategory();
		model.addAttribute("items", list);
		return "admin/report";
	}
}
