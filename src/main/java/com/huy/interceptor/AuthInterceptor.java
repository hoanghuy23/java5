package com.huy.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.HandlerInterceptor;

import com.huy.entity.Account;
import com.huy.service.SessionService;

@Service
public class AuthInterceptor implements HandlerInterceptor{
	@Autowired
	SessionService session;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String uri = request.getRequestURI();
		Account user = session.get("user");
		
		String error = "";
		if(request.getSession().getAttribute("user") == null) {
			error = "Vui lòng đăng nhập!";
		} else if(!user.isAdmin() && uri.startsWith("/Admin/")) {
			error = "Truy cập bị từ chối!";
		}
		if(error.length() > 0) {
			session.set("security-uri", uri);
			response.sendRedirect("/account/login?error=" + error);
			return false;
		}
		return true;
	}
}