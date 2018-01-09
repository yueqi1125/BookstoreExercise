package com.xt.java.Service;

import java.util.ArrayList;

import com.xt.java.Model.User;
import com.xt.java.Model.UserAddress;

public interface IUserAddressService {

	/*
	 * 查询用户地址信息
	 * 将用户信息传递至Dao层
	 * 返回存储地址的ArrayList
	 */
	public ArrayList<UserAddress> getAddress(User user);
}
