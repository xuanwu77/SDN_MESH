package com.sdn.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	//连接数据库，返回获得数据库的连接
	private static final String URL="jdbc:mysql://127.0.0.1:3306/test?useUnicode=true&amp;characterEncoding=utf-8";
	private static final String USER="root";
	private static final String PASSWORD="111111";
	private static Connection conn;
	static{	
		try {
			//1、加载驱动程序
			Class.forName("com.mysql.jdbc.Driver");
			//2、获得数据库连接
			conn=DriverManager.getConnection(URL, USER, PASSWORD);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	public static Connection getConnection(){
		return conn;
		
	}
}
