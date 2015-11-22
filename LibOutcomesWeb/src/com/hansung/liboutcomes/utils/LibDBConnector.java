package com.hansung.liboutcomes.utils;

import java.sql.Connection;
import java.sql.DriverManager;

/*
 * DB 관련 정보 설정 및 연결
 */
public class LibDBConnector {
	
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	static final String DB_URL = "jdbc:mysql://localhost/liboutcomes";

	static final String DB_USER = "root";
	static final String DB_PASSWORD = "1234";
	
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		
	}
	
}
