package com.xt.java.Service;

import java.util.ArrayList;

import com.xt.java.Model.User;

public interface IUserUpdateInforServic {
	
	/*
	 * 接收从servlet层的用户信息，转发给Dao层
	 * 返回boolean值
	 * */
	public boolean UpdateInfor(User user);
	
	/*
	 * 判断新密码和确认密码是否一致
	 * 链接Dao层判断原密码是否正确
	 * 链接Dao层修改用户密码
	 * 返回验证信息String
	 * */
	public String ResetPwd(ArrayList<String> arr);
	
	/*
	 * 链接Dao层设置用户安全问题
	 * 返回验证信息String
	 * */
	public String SetQA(User user);
}
