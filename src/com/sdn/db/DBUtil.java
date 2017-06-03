package com.sdn.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	// �������ݿ⣬���ػ�����ݿ������
	private static final String URL = "jdbc:mysql://127.0.0.1:3306/test?useUnicode=true&amp;characterEncoding=utf-8";
	private static final String USER = "root";
	private static final String PASSWORD = "111111";
	private static Connection conn;
	static {
		try {
			// 1��������������
			Class.forName("com.mysql.jdbc.Driver");
			// 2��������ݿ�����
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public static Connection getConnection() {
		return conn;

	}
}
