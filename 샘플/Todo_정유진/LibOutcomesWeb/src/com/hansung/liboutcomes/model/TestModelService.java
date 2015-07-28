package com.hansung.liboutcomes.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.hansung.liboutcomes.utils.LibDBConnector;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class TestModelService {

	Connection conn;
		
	public TestModelService() {
		LibDBConnector libConnector = new LibDBConnector();
		conn = libConnector.getConnection();
	}
	
	public TestModelService(Connection conn) {
		this.conn = conn;
	}
	
	public int updateTestModel(int id, String html) {

		PreparedStatement pstmt = null;
				
		try {
			pstmt = (PreparedStatement) conn.prepareStatement("update test set html = ? where id = ?");
			pstmt.setString(1, html);
			pstmt.setInt(2, 1);
			
			return pstmt.executeUpdate();
						
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
		return 0;
	}
	
	public TestModel getTestModel() {
		
		TestModel model = new TestModel();

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = (PreparedStatement) conn.prepareStatement("select * from test");
			rs = pstmt.executeQuery();

			rs.next();
			model.setId(rs.getInt("id"));
			model.setHtml(rs.getString("html"));
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return model;
		
	}
}
