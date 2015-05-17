package com.hansung.liboutcomes.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.hansung.liboutcomes.utils.LibDBConnector;
import com.mysql.jdbc.Connection;

public class ManualService {

	Connection conn;
	
	public ManualService() {
		LibDBConnector libConnector = new LibDBConnector();
		conn = libConnector.getConnection();
	}
	
	public ManualService(Connection conn) {
		this.conn = conn;
	}
	
	public Manual getOneManual(int id) {
		Manual manual = new Manual();

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Manual> list = new ArrayList<Manual>();
		
		try {
			pstmt = conn.prepareStatement("select manual.*, member.name from manual, member where manual.writer_id = member.id and manual.id = ?");
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				
				manual.setId(rs.getInt("id"));
				manual.setTitle(rs.getString("title"));
				manual.setWriterId(rs.getInt("writer_id"));
				manual.setWriterName(rs.getString("name"));
				manual.setDate(rs.getDate("date"));
				manual.setContents(rs.getString("contents"));
				
				list.add(manual);
			
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return manual;
	}
	
	public ArrayList<Manual> getManualList() {

		Statement stmt = null;
		ResultSet rs = null;
		ArrayList<Manual> list = new ArrayList<Manual>();
		
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select manual.*, member.name from manual, member where manual.writer_id = member.id");
			
			while (rs.next()) {
				
				Manual manual = new Manual();
				manual.setId(rs.getInt("id"));
				manual.setTitle(rs.getString("title"));
				manual.setWriterId(rs.getInt("writer_id"));
				manual.setWriterName(rs.getString("name"));
				manual.setDate(rs.getDate("date"));
				manual.setContents(rs.getString("contents"));
				
				list.add(manual);
			
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
}
