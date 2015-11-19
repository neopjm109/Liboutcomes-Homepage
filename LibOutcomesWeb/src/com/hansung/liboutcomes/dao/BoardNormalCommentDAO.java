package com.hansung.liboutcomes.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.hansung.liboutcomes.DBconn;
import com.hansung.liboutcomes.RowMapper;
import com.hansung.liboutcomes.vo.BoardNormalCommentVO;

public class BoardNormalCommentDAO {

	/*
	 * 댓글 목록 조회
	 */
	public List<BoardNormalCommentVO> getCommentList(int num) {
		RowMapper<BoardNormalCommentVO> rm = new RowMapper<BoardNormalCommentVO>() {
			@Override
			public BoardNormalCommentVO mapRow(ResultSet rs) throws SQLException {
				return new BoardNormalCommentVO(
						rs.getInt("num")
						, rs.getInt("boardNum")
						, rs.getInt("writerId")
						, rs.getString("writerName")
						, rs.getDate("date")
						, rs.getString("comment"));
			}
		};
		String sql = "SELECT * FROM board_comment WHERE boardNum=? ORDER BY num DESC";
		return new DBconn().executeList(sql, rm, num);
	}
	
	/*
	 * 댓글 작성
	 */
	public void createBoardComment(BoardNormalCommentVO boardNormalCommentVO) {
		String sql = "INSERT INTO board_comment"
				+ "(boardNum, writerId, writerName, date, comment)"
				+ "VALUES(?, ?, ?, NOW(), ?)";
		new DBconn().executeUpdate(sql
				, boardNormalCommentVO.getBoardNum()
				, boardNormalCommentVO.getWriterId()
				, boardNormalCommentVO.getWriterName()
				, boardNormalCommentVO.getComment());
	}
	
	/*
	 * 댓글 삭제
	 */
	public void deleteBoardComment(int num) {
		String sql = "DELETE FROM board_comment WHERE boardNum=?";
		new DBconn().executeUpdate(sql, num);
	}

}
