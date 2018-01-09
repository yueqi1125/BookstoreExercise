package com.xt.java.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.xt.java.Model.Admin;
import com.xt.java.Service.AdminLoginServiceImpl;
import com.xt.java.Service.IAdminLoginService;

/**
 * 通过接收用户输入的账号密码，验证登录信息
 * 并将信息存入session
 * 成功跳转管理员主页
 * 失败返回登录页面
 */
@WebServlet("/admin_doLogin")
public class admin_doLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public admin_doLogin() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		String admin_name = request.getParameter("admin_name");
		String admin_pwd = request.getParameter("admin_pwd");
		
		Admin admin = new Admin();
		admin.setAdminName(admin_name);
		admin.setPwd(admin_pwd);
		
		IAdminLoginService as = new AdminLoginServiceImpl();
		
		if(as.doLogin(admin)){
			session.setAttribute("Admin", as.getAdminInfor(admin));
			request.getRequestDispatcher("/views/admin_main.jsp").forward(request, response);
		} else {
			request.setAttribute("msg", "用户名或密码错误！");
			request.getRequestDispatcher("/views/admin_login.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
