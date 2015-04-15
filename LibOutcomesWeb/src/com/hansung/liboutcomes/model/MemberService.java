package com.hansung.liboutcomes.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.hansung.liboutcomes.utils.LibDBConnector;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

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

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		System.out.println(email + " " + password);
		
		int size = 0;
		
		try {
			pstmt = (PreparedStatement) conn.prepareStatement("select * from member where email = ? and password = ?");
			pstmt.setString(1, email);
			pstmt.setString(2, password);
			rs = pstmt.executeQuery();
			
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
