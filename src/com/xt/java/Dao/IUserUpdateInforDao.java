package com.xt.java.Dao;

import com.xt.java.Model.User;

public interface IUserUpdateInforDao {
	
	/*
	 * 向数据库传入user信息，修改数据库中用户信息
	 * 返回boolean值
	 * */
	public boolean UpdateInfor(User user);
	
	/*
	 * 向数据库传入user信息，修改数据库中用户密码
	 * 返回boolean值
	 * */
	public boolean ResetPwd(User user);
	
	/*
	 * 向数据库传入user信息，修改数据库中用户安全问题
	 * 返回boolean值
	 */
	public boolean SetQA(User user);
}
