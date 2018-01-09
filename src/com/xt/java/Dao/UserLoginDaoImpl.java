package com.xt.java.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.xt.java.Model.User;
import com.xt.java.Tools.DBUtil;

public class UserLoginDaoImpl implements IUserLoginDao{
	
	public boolean doRegister(User user){
		Connection conn = DBUtil.getDBConn();
		PreparedStatement  ps = null;
		ResultSet rs = null;
		
		try {
			ps = conn.prepareStatement("insert into user (username,pwd) values (?,password(?))");
			ps.setString(1, user.getUserName());
			ps.setString(2, user.getPwd());
			
			if(ps.executeUpdate() > 0){
				return true;
			}
		} catch (SQLException e) {
			System.out.println("用户注册异常" + e);
		}finally{
			DBUtil.close(conn);
			DBUtil.close(ps);
			DBUtil.close(rs);
		}
		return false;
	};

	public boolean doLogin(User user){
		Connection conn = DBUtil.getDBConn();
		PreparedStatement  ps = null;
		ResultSet rs = null;
		
		try {
			ps = conn.prepareStatement("select * from user where username = ? and pwd = password(?)");
			ps.setString(1, user.getUserName());
			ps.setString(2, user.getPwd());
			rs = ps.executeQuery();
			
			if(rs.next()){
				return true;
			}
		} catch (SQLException e) {
			System.out.println("用户登录异常" + e);
		}finally{
			DBUtil.close(conn);
			DBUtil.close(ps);
			DBUtil.close(rs);
		}
		return false;
	}
	
	public User getUserInfor(User user){
		User u = new User();
		Connection conn = DBUtil.getDBConn();
		PreparedStatement  ps = null;
		ResultSet rs = null;
		
		String userName = user.getUserName();
		
		try {
			ps = conn.prepareStatement("select * from user where username = ?");
			ps.setString(1, userName);
			rs = ps.executeQuery();
			
			if(rs.next()){
				u = new User();
				u.setUserName(userName);
				u.setNickName(rs.getString("nickname"));
				u.setTrueName(rs.getString("name"));
				u.setQuestion(rs.getString("question"));
				u.setTel(rs.getString("tel"));
			}
		} catch (SQLException e) {
			System.out.println("用户信息查询异常" + e);
		}finally{
			DBUtil.close(conn);
			DBUtil.close(ps);
			DBUtil.close(rs);
		}
		return u;
	}
}
