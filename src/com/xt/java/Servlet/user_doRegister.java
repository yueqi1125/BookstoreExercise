package com.xt.java.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xt.java.Model.User;
import com.xt.java.Service.IUserLoginService;
import com.xt.java.Service.UserLoginServiceImpl;

/**
 * 通过接收用户输入的账号密码，进行创建用户账号
 * 成功则跳转登录页面
 * 失败则跳转注册页面
 */
@WebServlet("/user_doRegister")
public class user_doRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public user_doRegister() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String user_name = request.getParameter("user_name");
		String password = request.getParameter("password");
		
		User user = new User();
		user.setUserName(user_name);
		user.setPwd(password);
		
		IUserLoginService us = new UserLoginServiceImpl();
		
		if(us.doRegister(user)){
			request.setAttribute("msg", "用户注册成功！");
			request.getRequestDispatcher(request.getContextPath() + "/views/user_login.jsp").forward(request, response);
		} else {
			request.setAttribute("msg", "用户名已存在，或其他异常，注册失败！");
			request.getRequestDispatcher(request.getContextPath() + "/views/user_login.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
