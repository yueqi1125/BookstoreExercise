package com.xt.java.Service;

import java.util.ArrayList;

import com.xt.java.Dao.IUserAddressDao;
import com.xt.java.Dao.UserAddressDaoImpl;
import com.xt.java.Model.User;
import com.xt.java.Model.UserAddress;

public class UserAddressServiceImpl implements IUserAddressService{

	IUserAddressDao ua = new UserAddressDaoImpl();
	
	public ArrayList<UserAddress> getAddress(User user){
		return ua.getAddress(user);
	}
}
