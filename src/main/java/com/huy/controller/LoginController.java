package com.huy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.huy.dao.AccountDAO;
import com.huy.entity.Account;
import com.huy.service.SessionService;

@Controller
public class LoginController {

	@Autowired
	AccountDAO dao;
	
	@Autowired
	SessionService session;
	
	@GetMapping("/account/login")
	public String login() {		
		return "account/login";
	}
	
	@PostMapping("/account/login")
	public String login(Model model,
			@RequestParam("username") String username,
			@RequestParam("password") String password) {
		try {
			Account user = dao.findById(username).get();
			if(!user.getPassword().equals(password)) {
				model.addAttribute("message", "Mật khẩu không hợp lệ");
			} else {
				if(user.isAdmin()) {
					return "redirect:/Admin/index/product";
				} else {
					session.set("user", user);
					model.addAttribute("message", "Đăng nhập thành công");
					return "redirect:/layout/Home";
				}
			}
		} catch (Exception e) {
			model.addAttribute("message", "Tên sử dụng không hợp lệ");
		}
		return "account/login";
	}
	@RequestMapping("/account/logout")
		public String logout() {
		session.remove("user");
		return "account/login";
	}
	
}
