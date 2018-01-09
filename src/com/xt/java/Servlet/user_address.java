package com.xt.java.Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.xt.java.Model.User;
import com.xt.java.Model.UserAddress;
import com.xt.java.Service.IUserAddressService;
import com.xt.java.Service.UserAddressServiceImpl;

/**
 *查询用户地址信息
 *将信息传递至原页面 
 */
@WebServlet("/user_address")
public class user_address extends HttpServlet{
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		
		HttpSession session = req.getSession();
		User user = (User)session.getAttribute("User");
		IUserAddressService us = new UserAddressServiceImpl();
		Gson gson = new Gson();
		
		ArrayList<UserAddress> arr = us.getAddress(user);
		String msg = gson.toJson(arr);
		
		resp.getWriter().print(msg);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doPost(req, resp);
	}
	
	
}
