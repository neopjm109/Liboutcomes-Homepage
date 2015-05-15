package Sound;

import java.sql.*;
import java.util.*;

public class MemberInfo {

	private DBConnectionMgr pool = null;

	public MemberInfo() {
		try{
			pool = DBConnectionMgr.getInstance();
		}catch(Exception e){
			System.out.println("Error : 커넥션 가져오기 실패!!");
		}
	}

	////////////////////////////////////////////////////////////////
	public String getPasswd(String id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String val = "";

		try {
			con = pool.getConnection();
			String strQuery = "select * from member where id = ?";
			pstmt = con.prepareStatement(strQuery);
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				val = rs.getString("passwd");
			}

		}catch(Exception ex) {
			System.out.println("Exception" + ex);
		}finally{
			pool.freeConnection(con,pstmt,rs);
		}
		return val;
	}

	public String getName(String id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String val = "";

		try {
			con = pool.getConnection();
			String strQuery = "select * from member where id = ?";
			pstmt = con.prepareStatement(strQuery);
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				val = rs.getString("name");
			}

		}catch(Exception ex) {
			System.out.println("Exception" + ex);
		}finally{
			pool.freeConnection(con,pstmt,rs);
		}
		return val;
	}

	public String getBirth(String id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String val = "";

		try {
			con = pool.getConnection();
			String strQuery = "select * from member where id = ?";
			pstmt = con.prepareStatement(strQuery);
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				val = rs.getString("birth");
			}

		}catch(Exception ex) {
			System.out.println("Exception" + ex);
		}finally{
			pool.freeConnection(con,pstmt,rs);
		}
		return val;
	}

	public String getEmail(String id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String val = "";

		try {
			con = pool.getConnection();
			String strQuery = "select * from member where id = ?";
			pstmt = con.prepareStatement(strQuery);
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				val = rs.getString("e_mail");
			}

		}catch(Exception ex) {
			System.out.println("Exception" + ex);
		}finally{
			pool.freeConnection(con,pstmt,rs);
		}
		return val;
	}

	public String getPhone(String id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String val = "";

		try {
			con = pool.getConnection();
			String strQuery = "select * from member where id = ?";
			pstmt = con.prepareStatement(strQuery);
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				val = rs.getString("phone");
			}

		}catch(Exception ex) {
			System.out.println("Exception" + ex);
		}finally{
			pool.freeConnection(con,pstmt,rs);
		}
		return val;
	}

	public String getZipcode(String id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String val = "";

		try {
			con = pool.getConnection();
			String strQuery = "select * from member where id = ?";
			pstmt = con.prepareStatement(strQuery);
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				val = rs.getString("zipcode");
			}

		}catch(Exception ex) {
			System.out.println("Exception" + ex);
		}finally{
			pool.freeConnection(con,pstmt,rs);
		}
		return val;
	}

	public String getAddress(String id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String val = "";

		try {
			con = pool.getConnection();
			String strQuery = "select * from member where id = ?";
			pstmt = con.prepareStatement(strQuery);
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				val = rs.getString("address");
			}

		}catch(Exception ex) {
			System.out.println("Exception" + ex);
		}finally{
			pool.freeConnection(con,pstmt,rs);
		}
		return val;
	}

	public String getPower(String id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String val = "";

		try {
			con = pool.getConnection();
			String strQuery = "select * from member where id = ?";
			pstmt = con.prepareStatement(strQuery);
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				val = rs.getString("power");
			}

		}catch(Exception ex) {
			System.out.println("Exception" + ex);
		}finally{
			pool.freeConnection(con,pstmt,rs);
		}
		return val;
	}

}
