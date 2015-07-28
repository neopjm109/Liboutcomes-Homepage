package com.hansung.liboutcomes.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.hansung.liboutcomes.utils.LibDBConnector;
import com.mysql.jdbc.Connection;

public class BoardService {

	Connection conn;
	
	public BoardService() {
		LibDBConnector libConnector = new LibDBConnector();
		conn = libConnector.getConnection();
	}
	
	public BoardService(Connection conn) {
		this.conn = conn;
	}
	
	/**
	 * @brief 클릭한 글 내용 가져오기
	 * @param id: 클릭한 글의 고유 번호
	 * @return
	 */
	public Board getOneBoard(int id) {

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Board board = new Board();
		
		try {
			//pstmt = conn.prepareStatement("select manual.*, member.name from manual, member where manual.writer_id = member.id and manual.id = ?");
			pstmt = conn.prepareStatement("select * from board where num=?");
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				
				board.setNum(rs.getInt("num"));
				board.setTitle(rs.getString("title"));
				board.setWriterId(rs.getInt("writerId"));
				board.setWriterName(rs.getString("writerName"));
				board.setDate(rs.getDate("date"));
				board.setContents(rs.getString("contents"));
			
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return board;
	}
	
	/**
	 * @brief 게시판 글 리스트 가져오기
	 * @return
	 */
	public ArrayList<Board> getBoardList() {

		Statement stmt = null;
		ResultSet rs = null;
		ArrayList<Board> list = new ArrayList<Board>();
		
		try {
			stmt = conn.createStatement();
			//rs = stmt.executeQuery("select manual.*, member.name from manual, member where manual.writer_id = member.id");
			rs = stmt.executeQuery("select * from board order by num desc");
			
			while (rs.next()) {
				
				Board board = new Board();
				board.setNum(rs.getInt("num"));
				board.setCategory(rs.getString("category"));
				board.setTitle(rs.getString("title"));
				board.setWriterId(rs.getInt("writerId"));
				board.setWriterName(rs.getString("writerName"));
				board.setDate(rs.getDate("date"));
				board.setContents(rs.getString("contents"));
				
				list.add(board);
			
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
	public boolean createBoard(Board board) {
		
		boolean newBoard = false;
		
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement("insert into board"
					+ "(category, title, writerId, writerName, date, contents)"
					+ "values(?, ?, 1111, ?, now(), ?)");
			pstmt.setString(1, board.getCategory());
			pstmt.setString(2, board.getTitle());
			pstmt.setString(3, board.getWriterName());
			pstmt.setString(4, board.getContents());
			
			if(pstmt.executeUpdate() > 0) newBoard = true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return newBoard;
		
	}
	
	public void updateBoard(Board board) {
		
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement("update board set "
					+ "title=?, contents=? where num=?");
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getContents());
			pstmt.setInt(3, board.getNum());
			
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
	public void deleteBoard(int num) {
		
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement("delete from board where num=?");
			pstmt.setInt(1, num);
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
