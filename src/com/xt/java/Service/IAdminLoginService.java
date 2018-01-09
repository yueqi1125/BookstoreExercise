package com.xt.java.Service;

import com.xt.java.Model.Admin;

public interface IAdminLoginService {

	/*
	 * 用户登录
	 * 通过Dao层验证用户登录信息
	 * 返回Boolean值
	 */
	public boolean doLogin(Admin admin);
	
	/*
	 * 获取管理员信息
	 * 通过Dao层获取管理员信息
	 * 返回用户信息Admin
	 */
	public Admin getAdminInfor(Admin admin);
}
