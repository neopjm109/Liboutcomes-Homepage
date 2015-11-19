package com.hansung.liboutcomes.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.hansung.liboutcomes.DBconn;
import com.hansung.liboutcomes.RowMapper;
import com.hansung.liboutcomes.vo.MemberVO;

public class MemberDAO {

	/*
	 * 로그인 시 아이디 비밀번호 확인
	 */
	public MemberVO loginCheck(String email, String password) {
		RowMapper<MemberVO> rm = new RowMapper<MemberVO>() {
			@Override
			public MemberVO mapRow(ResultSet rs) throws SQLException {
				MemberVO memberVO = new MemberVO();
				memberVO.setEmail(rs.getString("email"));
				memberVO.setName(rs.getString("name"));
				return memberVO;
			}
		};
		String sql = "SELECT email, name FROM member WHERE email=? AND password=?";
		return new DBconn().executeQuery(sql, rm, email, password);
	}
	
}
