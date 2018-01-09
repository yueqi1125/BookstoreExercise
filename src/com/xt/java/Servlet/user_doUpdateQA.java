package com.xt.java.Servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.xt.java.Model.User;
import com.xt.java.Service.IUserUpdateInforServic;
import com.xt.java.Service.UserUpdateInforServicImpl;

/**
 * 更新用户安全问题
 * 成功失败均返回原页面
 * 并提示更新信息
 */
@WebServlet("/user_doUpdateQA")
public class user_doUpdateQA extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    public user_doUpdateQA() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		IUserUpdateInforServic us = new UserUpdateInforServicImpl();
		Gson gson = new Gson();
		
		User u = (User)session.getAttribute("User");
		String userName = u.getUserName();
		String question = request.getParameter("question");
		String answer = request.getParameter("answer");
		
		User user = new User();
		user.setUserName(userName);
		user.setQuestion(question);
		user.setAnswer(answer);
		
		Map<String,String> map = new HashMap<String,String>();
		map.put("msg", us.SetQA(user));
		String msg = gson.toJson(map);
		
		response.getWriter().print(msg);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
