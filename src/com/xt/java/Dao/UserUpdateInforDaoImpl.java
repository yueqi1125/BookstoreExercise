package com.xt.java.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.xt.java.Model.User;
import com.xt.java.Tools.DBUtil;

public class UserUpdateInforDaoImpl implements IUserUpdateInforDao{

	public boolean UpdateInfor(User user){
		Connection conn = DBUtil.getDBConn();
		PreparedStatement  ps = null;
		ResultSet rs = null;
		
		try {
			ps = conn.prepareStatement("update user set nickname = ?, name = ?, tel = ? where userName = ?");
			ps.setString(1, user.getNickName());
			ps.setString(2, user.getTrueName());
			ps.setString(3, user.getTel());
			ps.setString(4, user.getUserName());
			
			if(ps.executeUpdate() > 0){
				return true;
			}
		} catch (SQLException e) {
			System.out.println("用户信息更新异常" + e);
		}finally{
			DBUtil.close(conn);
			DBUtil.close(ps);
			DBUtil.close(rs);
		}
		return false;
	}
	
	public boolean ResetPwd(User user){
		Connection conn = DBUtil.getDBConn();
		PreparedStatement  ps = null;
		ResultSet rs = null;
		
		try {
			ps = conn.prepareStatement("update user set pwd = password(?) where userName = ?");
			ps.setString(1, user.getPwd());
			ps.setString(2, user.getUserName());
			
			if(ps.executeUpdate() > 0){
				return true;
			}
		} catch (SQLException e) {
			System.out.println("用户密码修改异常" + e);
		}finally{
			DBUtil.close(conn);
			DBUtil.close(ps);
			DBUtil.close(rs);
		}
		return false;
	}
	
	public boolean SetQA(User user){
		Connection conn = DBUtil.getDBConn();
		PreparedStatement  ps = null;
		ResultSet rs = null;
		
		try {
			ps = conn.prepareStatement("update user set question = ?, answer = password(?) where userName = ?");
			ps.setString(1, user.getQuestion());
			ps.setString(2, user.getAnswer());
			ps.setString(3, user.getUserName());
			
			if(ps.executeUpdate() > 0){
				return true;
			}
		} catch (SQLException e) {
			System.out.println("用户安全问题设置异常" + e);
		}finally{
			DBUtil.close(conn);
			DBUtil.close(ps);
			DBUtil.close(rs);
		}
		return false;
	}
}
