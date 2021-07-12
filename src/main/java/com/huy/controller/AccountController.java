package com.huy.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.huy.dao.AccountDAO;
import com.huy.entity.Account;

@Controller
public class AccountController {
	
	@Autowired
	AccountDAO dao;
	
	@RequestMapping("/Admin/index/account")
	public String index(Model model) {
		Account item = new Account();
		model.addAttribute("item", item);
		List<Account> items = dao.findAll();
		model.addAttribute("items", items);
		return "admin/account";
	}
	
	@ModelAttribute("activates")
	public Map<Boolean, String> getActivate(){
		Map<Boolean, String> map = new HashMap<>();
		map.put(true, "Hoạt động");
		map.put(false, "Không hoạt động");
		return map;
	}
	
	@ModelAttribute("admins")
	public Map<Boolean, String> getAdmin(){
		Map<Boolean, String> map = new HashMap<>();
		map.put(true, "Admin");
		map.put(false, "Khách hàng");
		return map;
	}
	
	@RequestMapping("/account/edit/{username}")
	public String edit(Model model, @PathVariable("username") String username) {		
		Account item = dao.findById(username).get();
		model.addAttribute("item", item);
		List<Account> items = dao.findAll();
		model.addAttribute("items", items);
		return "admin/account";
	}
	
	@RequestMapping("/account/update")
	public String update(Account item) {
		dao.save(item);
		return "redirect:/account/edit/" + item.getUsername();
	}
	
	@RequestMapping("/account/delete/{username}")
	public String delete(@PathVariable("username") String username) {
		dao.deleteById(username);
		return "redirect:/Admin/index/account";
	}	
}
