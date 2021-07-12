package com.huy.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.huy.dao.OrderDAO;
import com.huy.dao.OrderDetailDAO;
import com.huy.entity.Order;
import com.huy.entity.OrderDetail;

@Controller
public class OrderController {

	@Autowired
	OrderDAO dao;
	
	@Autowired
	OrderDetailDAO dtdao;
	
	@RequestMapping("/Admin/index/order")
	public String index(Model model) {
		List<Order> items = dao.findAll();
		model.addAttribute("items", items);
		return "admin/order";
	}
	
	@RequestMapping("/Admin/index/orderdetail")
	public String indexdetail(Model model, @RequestParam("field") Optional<String> field) {
		Sort sort = Sort.by(Direction.DESC, field.orElse("price"));
		model.addAttribute("field", field.orElse("price").toUpperCase());
		List<OrderDetail> items = dtdao.findAll(sort);
		model.addAttribute("items", items);
		return "admin/orderdetail";
	}
	
	@RequestMapping("/order/delete/{id}")
	public String delete(@PathVariable("id") String id) {
		dao.deleteById(id);
		return "redirect:/Admin/index/order";
	}
	@RequestMapping("/orderdetail/delete/{id}")
	public String deletedt(@PathVariable("id") String id) {
		dtdao.deleteById(id);
		return "redirect:/Admin/index/orderdetail";
	}
}
