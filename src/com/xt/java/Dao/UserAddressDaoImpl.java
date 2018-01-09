package com.xt.java.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.xt.java.Model.User;
import com.xt.java.Model.UserAddress;
import com.xt.java.Tools.DBUtil;

public class UserAddressDaoImpl implements IUserAddressDao{

	public ArrayList<UserAddress> getAddress(User user){
		ArrayList<UserAddress> arr = new ArrayList<UserAddress>();
		String userName = user.getUserName();
		
		Connection conn = DBUtil.getDBConn();
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			ps = conn.prepareStatement("select * from addresses where name = ?");
			ps.setString(1, userName);
			rs = ps.executeQuery();
			
			while(rs.next()){
				UserAddress ads = new UserAddress();
				
				ads.setAdsId(rs.getString("id"));
				ads.setUserName(userName);
				ads.setTel(rs.getString("tel"));
				ads.setPro(rs.getString("pro"));
				ads.setCity(rs.getString("city"));
				ads.setDis(rs.getString("dis"));
				ads.setAddress(rs.getString("address"));
				ads.setSign(rs.getInt("sign"));
				
				arr.add(ads);
			}
		} catch (SQLException e) {
			System.out.println("地址信息查询异常" + e);
		}
		return arr;	
	}
}
