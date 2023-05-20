package com.poly.controller;



import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.model.User;
import com.poly.utils.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;



@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	HttpServletResponse response;
	
	@GetMapping("create")
	public String createGet() {
		return "user_create";
		
	}
	
	
	@PostMapping("create")
	public String createPost() {
		String remember = request.getParameter("remember");
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		User user = new User(username, password);
		request.getSession().setAttribute("user", user);
		int hours = (remember == null) ? 0 : 30 * 24; // 0 = xóa
		CookieUtils.add("username", username, hours, response);
		
		
//		User user = new User();
//		try {
//			BeanUtils.populate(user, request.getParameterMap()); 
//		} catch (Exception e) {
//			// TODO: handle exception
//			e.printStackTrace();
//		}
		request.setAttribute("user", user );
		
		return "detail";
		
	}
	
}
