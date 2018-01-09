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
import com.xt.java.Service.IUserUpdateInforServic;
import com.xt.java.Service.UserLoginServiceImpl;
import com.xt.java.Service.UserUpdateInforServicImpl;

/**
 * 更新用户信息
 * 成功失败均返回原页面
 * 并提示更新信息
 */
@WebServlet("/user_doUpdateInfor")
public class user_doUpdateInfor extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public user_doUpdateInfor() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		User user = new User();
		String msg = "";
		
		User u = (User)session.getAttribute("User");
		String userName = u.getUserName();
		String nickName = request.getParameter("nickName");
		String trueName = request.getParameter("trueName");
		String tel = request.getParameter("tel");
		
		user.setUserName(userName);
		user.setNickName(nickName);
		user.setTrueName(trueName);
		user.setTel(tel);
		
		IUserLoginService us = new UserLoginServiceImpl();
		IUserUpdateInforServic ui = new UserUpdateInforServicImpl();
		
		if(ui.UpdateInfor(user)){
			
			session.setAttribute("User", us.getUserInfor(user));
			msg = "个人信息修改成功！";
		} else {
			
			msg = "个人信息修改失败！";
		}
		
		response.getWriter().print(msg);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
