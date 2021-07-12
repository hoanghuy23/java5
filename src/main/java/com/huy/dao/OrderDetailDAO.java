package com.huy.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.huy.entity.*;

public interface OrderDetailDAO extends JpaRepository<OrderDetail, String>{
	@Query("SELECT o FROM OrderDetail o WHERE o.order.id = ?1")
	List<OrderDetail> findByOrderid(String orderid);
}