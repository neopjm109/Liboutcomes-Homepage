package com.hansung.liboutcomes.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.hansung.liboutcomes.utils.LibDBConnector;
import com.mysql.jdbc.Connection;

public class MemberService {

	Connection conn;
	
	public MemberService() {
		LibDBConnector libConnector = new LibDBConnector();
		conn = libConnector.getConnection();
	}
	
	public MemberService(Connection conn) {
		this.conn = conn;
	}
	
	public int loginCheck(String email, String password) {

		Statement stmt = null;
		ResultSet rs = null;
		
		int size = 0;
		
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("");
			rs.last();
			size = rs.getRow();
			rs.beforeFirst();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return size;
	}
}
