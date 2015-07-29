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
	
	/**
	 * @brief 클릭한 글 내용 가져오기
	 * @param id: 클릭한 글의 고유 번호
	 * @return
	 */
	public Manual getOneManual(int id) {

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Manual manual = new Manual();
		
		try {
			//pstmt = conn.prepareStatement("select manual.*, member.name from manual, member where manual.writer_id = member.id and manual.id = ?");
			pstmt = conn.prepareStatement("select * from manual where id=?");
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				
				manual.setId(rs.getInt("id"));
				manual.setTitle(rs.getString("title"));
				manual.setWriterId(rs.getInt("writer_id"));
				manual.setWriterName(rs.getString("writerName"));
				manual.setDate(rs.getDate("date"));
				manual.setContents(rs.getString("contents"));
			
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return manual;
	}
	
	/**
	 * @brief 게시판 글 리스트 가져오기
	 * @return
	 */
	public ArrayList<Manual> getManualList() {

		Statement stmt = null;
		ResultSet rs = null;
		ArrayList<Manual> list = new ArrayList<Manual>();
		
		try {
			stmt = conn.createStatement();
			//rs = stmt.executeQuery("select manual.*, member.name from manual, member where manual.writer_id = member.id");
			rs = stmt.executeQuery("select * from manual order by id desc");
			
			while (rs.next()) {
				
				Manual manual = new Manual();
				manual.setId(rs.getInt("id"));
				manual.setTitle(rs.getString("title"));
				manual.setWriterId(rs.getInt("writer_id"));
				manual.setWriterName(rs.getString("writerName"));
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
	
	/**
	 * @brief 글 등록하기
	 * @param manual: 입력한 글 정보
	 */
	public void createManual(Manual manual) {
		
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement("insert into manual"
					+ "(title, writer_id, writerName, date, contents)"
					+ "values(?, 11, ?, now(), ?)");
			pstmt.setString(1, manual.getTitle());
			pstmt.setString(2, manual.getWriterName());
			pstmt.setString(3, manual.getContents());
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public void updateManual(Manual manual) {
		
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement("update manual set "
					+ "title=?, contents=? where id=?");
			pstmt.setString(1, manual.getTitle());
			pstmt.setString(2, manual.getContents());
			pstmt.setInt(3, manual.getId());
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	/**
	 * @brief 글 삭제하기
	 * @param id
	 */
	public void deleteManual(int id) {
		
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement("delete from manual where id=?");
			pstmt.setInt(1, id);
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
