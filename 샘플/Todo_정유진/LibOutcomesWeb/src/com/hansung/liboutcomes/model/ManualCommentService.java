package com.hansung.liboutcomes.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.hansung.liboutcomes.utils.LibDBConnector;
import com.mysql.jdbc.Connection;

public class ManualCommentService {
	
	Connection conn;
	
	public ManualCommentService() {
		LibDBConnector libConnector = new LibDBConnector();
		conn = libConnector.getConnection();
	}
	
	public ManualCommentService(Connection conn) {
		this.conn = conn;
	}
	
	/**
	 * @brief 게시글의 댓글 가져오기
	 * @param id: 게시글 번호
	 * @return
	 */
	public ArrayList<ManualComment> getCommentList(int id) {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<ManualComment> commentList = new ArrayList<>();
		
		try {
			pstmt = conn.prepareStatement("select * from manual_comment where board_id=? order by id desc");
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				
				ManualComment manualComment= new ManualComment();
				manualComment.setId(rs.getInt("id"));
				manualComment.setBoardId(rs.getInt("board_id"));
				manualComment.setWriterName(rs.getString("writerName"));
				manualComment.setDate(rs.getDate("date"));
				manualComment.setComment(rs.getString("comment"));
				
				commentList.add(manualComment);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return commentList;
		
	}
	
	/**
	 * @brief 게시글에 댓글 등록
	 * @param manualComment: 입력받은 댓글 정보
	 */
	public void createManualComment(ManualComment manualComment) {
		
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement("insert into manual_comment"
					+ "(board_id, writerName, date, comment)"
					+ "values(?, ?, now(), ?)");
			pstmt.setInt(1, manualComment.getBoardId());
			pstmt.setString(2, manualComment.getWriterName());
			pstmt.setString(3, manualComment.getComment());
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public void deleteManualComment(int id) {
		
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement("delete from manual_comment where board_id=?");
			pstmt.setInt(1, id);
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
}
