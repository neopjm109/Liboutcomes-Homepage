package com.hansung.liboutcomes.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

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
	
	public ResultSet getManualList() {

		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select manual.*, member.name from manual, member where manual.writer_id = member.id");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
	}
}
