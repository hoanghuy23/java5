package com.huy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.huy.service.ShoppingCartService;
import com.huy.service.ShoppingCartServiceImpl;

@Controller
public class CartController {

	@Autowired
	ShoppingCartService cart;
	
	@RequestMapping("/layout/cartProduct")
	public String cartProduct(Model model) {
		model.addAttribute("cart", cart);
		return "layout/cartShopping";
	}
	
	@RequestMapping("/layout/add/{id}")
	public String add(@PathVariable("id") Integer id) {
		cart.add(id);
		return "redirect:/layout/cartProduct"; // hiển thị giỏ hàng
	}
	
	@RequestMapping("/layout/update/{id}")
	public String update(@PathVariable("id") Integer id, 
	@RequestParam("qty") Integer qty) {
		cart.update(id, qty);
		return "redirect:/layout/cartProduct";
	}
	
	@RequestMapping("/layout/remove/{id}")
	public String remove(@PathVariable("id") Integer id) {
		cart.remove(id);
		return "redirect:/layout/cartProduct";
	}
}
