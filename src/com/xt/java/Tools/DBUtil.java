package com.xt.java.Tools;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBUtil {

	private static DBUtil dbu = null;;
	
	private static String url = "jdbc:mysql://localhost:3306/bookstore";
	private static String dbDriver = "com.mysql.jdbc.Driver";
	private static String userName = "root";
	private static String password = "root";
	
	private DBUtil(){
		
	}
	
	public static DBUtil getDBUInstance(){
		if(dbu == null){
			dbu = new DBUtil();
		}
		return dbu;
	}
	
	public static Connection getDBConn(){
		try {
			Class.forName(dbDriver);
			return DriverManager.getConnection(url, userName, password);
		} catch (ClassNotFoundException e) {
			System.out.println("数据库驱动不存在！！");
		} catch (SQLException e) {
			System.out.println("数据库连接异常！");
		} catch (Exception e){
			System.out.println("产生其他异常");
		}
		return null;
	}
	
	public static void close(Connection conn){
		try{
			if(conn != null){
				conn.close();
			}
		}catch(SQLException e){
			System.out.println("数据库链接关闭异常！！");
		}
	}
	
	public static void close(Statement stat){
		try{
			if(stat != null){
				stat.close();
			}
		}catch(SQLException e){
			System.out.println("Statement关闭异常！！");
		}
	}
	
	public static void close(ResultSet rs){
		try{
			if(rs != null){
				rs.close();
			}
		}catch(SQLException e){
			System.out.println("结果集关闭异常！！");
		}
	}
}
