package com.huy.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.huy.entity.Account;

public interface AccountDAO extends JpaRepository<Account, String>{
}
