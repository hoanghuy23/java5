package com.huy.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huy.dao.OrderDAO;
import com.huy.dao.OrderDetailDAO;
import com.huy.entity.Account;
import com.huy.entity.Item;
import com.huy.entity.Order;
import com.huy.entity.OrderDetail;
import com.huy.entity.Product;

@Service
public class orderService {
	@Autowired
	ShoppingCartService cart;
	@Autowired
	OrderDAO dao;
	@Autowired
	OrderDetailDAO detailDao;
	
	public Order order(Account user, String address) {
		Order order = new Order();
		order.setAccount(user);
		order.setAddress(address);
		dao.save(order);
		for(Item item:cart.getItems()) {
			OrderDetail orderDetail = new OrderDetail();
			orderDetail.setOrder(order);
			orderDetail.setPrice(item.getPrice());
			orderDetail.setQuantity(item.getQty());
			Product product = new Product();
			product.setId(item.getId());
			product.setName(item.getName());
			orderDetail.setProduct(product);
			
			detailDao.save(orderDetail);
		}
		cart.clear();
		return order;
	}
}
