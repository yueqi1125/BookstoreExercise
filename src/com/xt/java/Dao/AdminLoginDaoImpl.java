package com.xt.java.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.xt.java.Model.Admin;
import com.xt.java.Tools.DBUtil;

public class AdminLoginDaoImpl implements IAdminLoginDao{

	public boolean doLogin(Admin admin){
		Connection conn = DBUtil.getDBConn();
		PreparedStatement  ps = null;
		ResultSet rs = null;
		
		try {
			ps = conn.prepareStatement("select * from admin where adminname = ? and pwd = password(?)");
			ps.setString(1, admin.getAdminName());
			ps.setString(2, admin.getPwd());
			rs = ps.executeQuery();
			
			if(rs.next()){
				return true;
			}
		} catch (SQLException e) {
			System.out.println("管理员登录信息查询异常" + e);
		}finally{
			DBUtil.close(conn);
			DBUtil.close(ps);
			DBUtil.close(rs);
		}
		return false;
	}
	
	public Admin getAdminInfor(Admin admin){
		Admin a = new Admin();
		Connection conn = DBUtil.getDBConn();
		PreparedStatement  ps = null;
		ResultSet rs = null;
		
		String adminName = admin.getAdminName();
		
		try {
			ps = conn.prepareStatement("select * from admin where adminname = ?");
			ps.setString(1, adminName);
			rs = ps.executeQuery();
			
			if(rs.next()){
				a = new Admin();
				a.setAdminName(adminName);
				a.setTrueName(rs.getString("truename"));
				a.setSign(rs.getInt("sign"));
			}
		} catch (SQLException e) {
			System.out.println("管理员信息查询异常" + e);
		}finally{
			DBUtil.close(conn);
			DBUtil.close(ps);
			DBUtil.close(rs);
		}
		return a;
	}
}
