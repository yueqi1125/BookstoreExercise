package com.xt.java.Dao;

import com.xt.java.Model.User;

public interface IUserLoginDao {

	/*
	 * 用户注册
	 * 将用户注册信息存入数据库
	 * 返回boolean
	 * */
	public boolean doRegister(User user);
	
	/*
	 * 用户登录
	 * 通过数据库验证用户登录信息
	 * 返回boolean
	 * */
	public boolean doLogin(User user);
	
	/*
	 * 获取用户信息
	 * 通过数据库获取用户信息
	 * 返回User
	 * */
	public User getUserInfor(User user);
}
