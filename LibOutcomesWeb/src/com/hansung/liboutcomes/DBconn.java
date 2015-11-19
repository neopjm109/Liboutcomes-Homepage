package com.hansung.liboutcomes;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.hansung.liboutcomes.utils.LibDBConnector;

/*
 * DB 쿼리에 필요한 공통적인 부분을 따로 분리
 */
public class DBconn {
	
	/*
	 * Insert, Update, Delete 수행 메소드
	 * 
	 * parameter: 가변인자로 쿼리문에 필요한 값을 받음
	 */
	public boolean executeUpdate(String sql, Object... parameters) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = LibDBConnector.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			for (int i = 0; i < parameters.length; i++) {
				pstmt.setObject(i+1, parameters[i]);
			}
			
			if (pstmt.executeUpdate() > 0) return true;
			
			return false;
			
		} catch (SQLException e) {
			throw new DataAccessException(e);
		} finally {
			try {
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (SQLException e) {
				throw new DataAccessException(e);
			}
		}
	}
	
	/*
	 * Select 하나의 값 조회 메소드 
	 * 
	 * parameter: 가변인자로 쿼리문에 필요한 값을 받음
	 * RowMapper: 리턴값을 생성하는 인터페이스
	 */
	public <T> T executeQuery(String sql, RowMapper<T> rm, Object... parameters) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = LibDBConnector.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			for (int i = 0; i < parameters.length; i++) {
				pstmt.setObject(i+1, parameters[i]);
			}
			rs = pstmt.executeQuery();

			if (!rs.next()) return null;
			
			return rm.mapRow(rs);
			
		} catch (SQLException e) {
			throw new DataAccessException(e);
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (SQLException e) {
				throw new DataAccessException(e);
			}
		}
	}
	
	/*
	 * Select 여러개의 값 조회 메소드
	 * 	 
	 * parameter: 가변인자로 쿼리문에 필요한 값을 받음
	 * RowMapper: 리턴값을 생성하는 인터페이스
	 */
	public <T> List<T> executeList(String sql, RowMapper<T> rm, Object... parameters) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = LibDBConnector.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			for (int i = 0; i < parameters.length; i++) {
				pstmt.setObject(i+1, parameters[i]);
			}
			rs = pstmt.executeQuery();
			
			List<T> list = new ArrayList<T>();

			while(rs.next()) {
				list.add(rm.mapRow(rs));
			}

			return list;
			
		} catch (SQLException e) {
			throw new DataAccessException(e);
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (SQLException e) {
				throw new DataAccessException(e);
			}
		}
	}
	
}
