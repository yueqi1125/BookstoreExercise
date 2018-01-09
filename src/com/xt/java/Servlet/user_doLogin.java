package com.xt.java.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.xt.java.Model.User;
import com.xt.java.Service.IUserLoginService;
import com.xt.java.Service.UserLoginServiceImpl;

/**
 * 通过接收用户输入的账号密码，验证登录信息
 * 并将信息存入session
 * 成功跳转商城主页
 * 失败返回登录页面
 */
@WebServlet("/user_doLogin")
public class user_doLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
    public user_doLogin() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		String user_name = request.getParameter("user_name");
		String password = request.getParameter("pwd");
		
		User user = new User();
		user.setUserName(user_name);
		user.setPwd(password);
		
		IUserLoginService us = new UserLoginServiceImpl();
		
		if(us.doLogin(user)){
			session.setAttribute("User", us.getUserInfor(user));
			request.getRequestDispatcher("/views/user_main.jsp").forward(request, response);
		} else {
			request.setAttribute("msg", "用户名或密码错误！");
			request.getRequestDispatcher("/views/user_login.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
