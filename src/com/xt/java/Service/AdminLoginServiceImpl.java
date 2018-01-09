package com.xt.java.Service;

import com.xt.java.Dao.AdminLoginDaoImpl;
import com.xt.java.Dao.IAdminLoginDao;
import com.xt.java.Model.Admin;

public class AdminLoginServiceImpl implements IAdminLoginService{

	IAdminLoginDao ad = new AdminLoginDaoImpl();
	
	public boolean doLogin(Admin admin){
		return ad.doLogin(admin);
	}
	
	public Admin getAdminInfor(Admin admin){
		Admin a = new Admin();
		a = ad.getAdminInfor(admin);
		return a;
	}
}
