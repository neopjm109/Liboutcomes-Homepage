package sample.board.model;

import java.sql.*;
import java.util.*;

import sample.board.utils.DBConnector;

public class MemberInfo {

	Connection conn;

	public MemberInfo() {
		DBConnector dbConnector = new DBConnector();
		conn = dbConnector.getConnection();
	}
	
	public MemberInfo(Connection conn) {
		this.conn = conn;
	}

	////////////////////////////////////////////////////////////////
	public String getPasswd(String id) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String val = "";

		try {
			String strQuery = "select * from member where id = ?";
			pstmt = conn.prepareStatement(strQuery);
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				val = rs.getString("passwd");
			}

		}catch(Exception ex) {
			System.out.println("Exception" + ex);
		}
		return val;
	}

	public String getName(String id) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String val = "";

		try {
			String strQuery = "select * from member where id = ?";
			pstmt = conn.prepareStatement(strQuery);
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				val = rs.getString("name");
			}

		}catch(Exception ex) {
			System.out.println("Exception" + ex);
		}
		return val;
	}

	public String getBirth(String id) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String val = "";

		try {
			String strQuery = "select * from member where id = ?";
			pstmt = conn.prepareStatement(strQuery);
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				val = rs.getString("birth");
			}

		}catch(Exception ex) {
			System.out.println("Exception" + ex);
		}
		return val;
	}

	public String getEmail(String id) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String val = "";

		try {
			String strQuery = "select * from member where id = ?";
			pstmt = conn.prepareStatement(strQuery);
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				val = rs.getString("e_mail");
			}

		}catch(Exception ex) {
			System.out.println("Exception" + ex);
		}
		return val;
	}

	public String getPhone(String id) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String val = "";

		try {
			String strQuery = "select * from member where id = ?";
			pstmt = conn.prepareStatement(strQuery);
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				val = rs.getString("phone");
			}

		}catch(Exception ex) {
			System.out.println("Exception" + ex);
		}
		return val;
	}

	public String getZipcode(String id) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String val = "";

		try {
			String strQuery = "select * from member where id = ?";
			pstmt = conn.prepareStatement(strQuery);
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				val = rs.getString("zipcode");
			}

		}catch(Exception ex) {
			System.out.println("Exception" + ex);
		}
		return val;
	}

	public String getAddress(String id) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String val = "";

		try {
			String strQuery = "select * from member where id = ?";
			pstmt = conn.prepareStatement(strQuery);
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				val = rs.getString("address");
			}

		}catch(Exception ex) {
			System.out.println("Exception" + ex);
		}
		return val;
	}

	public String getPower(String id) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String val = "";

		try {
			String strQuery = "select * from member where id = ?";
			pstmt = conn.prepareStatement(strQuery);
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				val = rs.getString("power");
			}

		}catch(Exception ex) {
			System.out.println("Exception" + ex);
		}
		return val;
	}

}
