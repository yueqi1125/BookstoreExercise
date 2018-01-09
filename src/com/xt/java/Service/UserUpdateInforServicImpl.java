package com.xt.java.Service;

import java.util.ArrayList;

import com.xt.java.Dao.IUserLoginDao;
import com.xt.java.Dao.IUserUpdateInforDao;
import com.xt.java.Dao.UserLoginDaoImpl;
import com.xt.java.Dao.UserUpdateInforDaoImpl;
import com.xt.java.Model.User;

public class UserUpdateInforServicImpl implements IUserUpdateInforServic{

	IUserLoginDao ul = new UserLoginDaoImpl();
	IUserUpdateInforDao u = new UserUpdateInforDaoImpl();
	
	public boolean UpdateInfor(User user){
		return u.UpdateInfor(user);
	}
	
	public String ResetPwd(ArrayList<String> arr){
		String msg = "";
		User user = new User();
		
		String userName = arr.get(0);
		String password = arr.get(1);
		String newPassword = arr.get(2);
		String newPasswordRepeat = arr.get(3);
		
		if(newPassword.equals(newPasswordRepeat)){
			
			user.setUserName(userName);
			user.setPwd(password);
			
			if(ul.doLogin(user)){
				
				user.setPwd(newPassword);
				
				if(u.ResetPwd(user)){
					
					msg = "密码修改成功！";
					
				} else {
					msg = "密码修改失败！";
				}
			} else {
				msg = "原密码输入错误！";
			}
		} else {
			msg = "两次输入的密码不相同！";
		}
		return msg;
	}
	
	public String SetQA(User user){
		String msg = "";
		
		if(u.SetQA(user)){
			msg = "安全问题修改成功！";
		} else {
			msg = "安全问题修改失败！";
		}
		return msg;
	}
}
