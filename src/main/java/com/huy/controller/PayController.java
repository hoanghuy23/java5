package com.huy.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.huy.dao.OrderDetailDAO;
import com.huy.entity.Account;
import com.huy.entity.Order;
import com.huy.entity.OrderDetail;
import com.huy.service.ParamService;
import com.huy.service.SessionService;
import com.huy.service.ShoppingCartService;
import com.huy.service.orderService;

@Controller
public class PayController {
	@Autowired
	ShoppingCartService card;
	
	@Autowired
	SessionService session;
	
	@Autowired
	orderService orderService;
	
	@Autowired
	OrderDetailDAO dao;
	
	@Autowired
	ParamService paramService;
	
	@RequestMapping("/order/index")
	public String index(Model model) {		
		Account user = session.get("user");
		model.addAttribute("user", user);
		model.addAttribute("card", card);
		return "layout/payShopping";
	}
	
	@RequestMapping("order/pay/{id}")
	public String pay(Model model, @PathVariable("id") Integer id) {
		Account user = session.get("user");
		card.add(id);
		model.addAttribute("user", user);
		model.addAttribute("card", card);
		
		return "layout/payShopping";
		
	}
	
	@RequestMapping("/order/success")
	public String success(Model model) {
		String address = paramService.getString("address", "");
		if(!card.getItems().isEmpty()) {
			if(address.equals("")) {
				return "redirect:/order/pay";
			}
			Account user = session.get("user");
			Order order = orderService.order(user, address);
			List<OrderDetail> items = dao.findByOrderid(order.getId());
			model.addAttribute("order", order);
			model.addAttribute("items", items);
		return "/layout/Home";
	}
		return "redirect:/layout/Home";
	}
}
