package com.huy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.huy.dao.AccountDAO;
import com.huy.entity.Account;

@Controller
public class RegisterController {

	@Autowired
	AccountDAO dao;
	
	@RequestMapping("/account/register")
	public String index(Model model) {
		Account item = new Account();
		model.addAttribute("item", item);
		return "account/register";
	}
	@RequestMapping("/account/save")
		public String save(Account item) {
		dao.save(item);
		return "redirect:/layout/Home";
	}
		
	
}
