package com.xt.java.Service;

import com.xt.java.Dao.IUserLoginDao;
import com.xt.java.Dao.UserLoginDaoImpl;
import com.xt.java.Model.User;

public class UserLoginServiceImpl implements IUserLoginService{
	
	IUserLoginDao ud = new UserLoginDaoImpl();
	
	public boolean doRegister(User user){
		return ud.doRegister(user);	
	};
	
	public boolean doLogin(User user){
		return ud.doLogin(user);
	}
	
	public User getUserInfor(User user){
		User u = new User();
		u = ud.getUserInfor(user);
		return u;
	}
	
}
