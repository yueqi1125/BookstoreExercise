package com.xt.java.Service;

import com.xt.java.Model.User;

public interface IUserLoginService {
	
	/*
	 * 用户注册
	 * 将用户注册信息传入Dao层
	 * 返回Boolean值
	 * */
	public boolean doRegister(User user);
	
	/*
	 * 用户登录
	 * 通过Dao层验证用户登录信息
	 * 返回Boolean值
	 */
	public boolean doLogin(User user);
	
	/*
	 * 获取用户信息
	 * 通过Dao层获取用户信息
	 * 返回用户信息user
	 */
	public User getUserInfor(User user);
}
