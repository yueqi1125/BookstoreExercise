package com.xt.java.Servlet;

import java.io.IOException;
import java.util.ArrayList;
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
 * 将前端页面的新旧密码信息转发至后端
 * 返回修改/判定结果信息
 */
@WebServlet("/user_doResetPWD")
public class user_doResetPWD extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public user_doResetPWD() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		User u = (User)session.getAttribute("User");
		ArrayList<String> arr = new ArrayList<String>();
		Gson gson = new Gson();	
		IUserUpdateInforServic us = new UserUpdateInforServicImpl();
		
		String userName = u.getUserName();
		String password = request.getParameter("password");
		String newPassword = request.getParameter("newPassword");
		String newPasswordRepeat = request.getParameter("newPasswordRepeat");
		
		arr.add(userName);
		arr.add(password); 
		arr.add(newPassword);
		arr.add(newPasswordRepeat);
		
		Map<String,String> map = new HashMap<String,String>();
		map.put("msg", us.ResetPwd(arr));
		String msg = gson.toJson(map);
		
		response.getWriter().print(msg);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
