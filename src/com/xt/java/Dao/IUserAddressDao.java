package com.xt.java.Dao;

import java.util.ArrayList;

import com.xt.java.Model.User;
import com.xt.java.Model.UserAddress;

public interface IUserAddressDao {

	/*
	 * 查询用户地址信息
	 * 通过传入用户信息查询已存储的地址信息
	 * 将信息存入ArrayList数组
	 * 返回ArrayList
	 */
	public ArrayList<UserAddress> getAddress(User user);
}
