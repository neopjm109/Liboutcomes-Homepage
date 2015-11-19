package com.hansung.liboutcomes.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.hansung.liboutcomes.DBconn;
import com.hansung.liboutcomes.RowMapper;
import com.hansung.liboutcomes.vo.BoardNormalVO;

public class BoardNormalDAO {

	/*
	 * 선택한 게시글 조회
	 */
	public BoardNormalVO getOneBoard(int id) {
		RowMapper<BoardNormalVO> rm = new RowMapper<BoardNormalVO>() {
			@Override
			public BoardNormalVO mapRow(ResultSet rs) throws SQLException {
				return new BoardNormalVO(
						rs.getInt("num")
						, rs.getString("category")
						, rs.getString("title")
						, rs.getInt("writerId")
						, rs.getString("writerName")
						, rs.getDate("date")
						, rs.getString("contents"));
			}
		};
		String sql = "SELECT * FROM board WHERE num=?";
		return new DBconn().executeQuery(sql, rm, id);
	}
	
	/*
	 * 게시글 목록 조회
	 */
	public List<BoardNormalVO> getBoardList() {
		RowMapper<BoardNormalVO> rm = new RowMapper<BoardNormalVO>() {
			@Override
			public BoardNormalVO mapRow(ResultSet rs) throws SQLException {
				return new BoardNormalVO(
						rs.getInt("num")
						, rs.getString("category")
						, rs.getString("title")
						, rs.getInt("writerId")
						, rs.getString("writerName")
						, rs.getDate("date")
						, rs.getString("contents"));
			}
		};
		String sql = "SELECT * FROM board ORDER BY num DESC";
		return new DBconn().executeList(sql, rm);
	}
	
	/*
	 * 게시글 작성
	 */
	public boolean createBoard(BoardNormalVO boardNormalVO) {
		String sql = "INSERT INTO board"
				+ "(category, title, writerId, writerName, date, contents)"
				+ "VALUES(?, ?, 1111, ?, NOW(), ?)";
		return new DBconn().executeUpdate(sql
				, boardNormalVO.getCategory() 
				, boardNormalVO.getTitle()
				, boardNormalVO.getWriterName() 
				, boardNormalVO.getContents());
	}
	
	/*
	 * 게시글 수정
	 */
	public boolean updateBoard(BoardNormalVO boardNormalVO) {
		String sql = "UPDATE board SET title=?, contents=? WHERE num=?";
		return new DBconn().executeUpdate(sql 
				, boardNormalVO.getTitle()
				, boardNormalVO.getContents()
				, boardNormalVO.getNum());
	}
	
	/*
	 * 게시글 삭제
	 */
	public boolean deleteBoard(int num) {
		String sql = "DELETE FROM board WHERE num=?";
		return new DBconn().executeUpdate(sql, num);
	}

}
