package com.xt.java.Dao;

import com.xt.java.Model.Admin;

public interface IAdminLoginDao{

	/*
	 * 用户登录
	 * 通过数据库验证管理员登录信息
	 * 返回boolean
	 * */
	public boolean doLogin(Admin admin);
	
	/*
	 * 获取管理员信息
	 * 通过数据库获取管理员信息
	 * 返回管理员信息Admin
	 */
	public Admin getAdminInfor(Admin admin);
}
