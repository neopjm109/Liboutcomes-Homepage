package com.hansung.liboutcomes.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.hansung.liboutcomes.DBconn;
import com.hansung.liboutcomes.RowMapper;
import com.hansung.liboutcomes.vo.SampleVO;

/*
 * DAO 사용 방법을 위한 Sample 파일
 * 
 * DAO(Data Access Object)란 데이터 접근을 목적으로하는 객체
 */
public class SampleDAO {
	
	/*
	 * Select One
	 * 
	 * sampleTable에서 num에 해당하는 레코드 가져오기
	 */
	public SampleVO selectSampleOne(int num) { // 리턴 타입 SampleVO
		// RowMapper 인스턴스 생성
		// RowMapper<T>의 리턴타입 T에는 리턴할 VO 클래스명을 작성
		RowMapper<SampleVO> rm = new RowMapper<SampleVO>() {
			@Override
			public SampleVO mapRow(ResultSet rs) throws SQLException {
				// mapRow() 함수에서는 DB 쿼리를 통해 가져온 값을 이용해 VO 인스턴스 생성
				return new SampleVO(
						rs.getInt("sampleNum")
						, rs.getInt("sampleInt")
						, rs.getString("sampleString"));
			}
		};
		// 필요한 SQL문 작성
		String sql = "SELECT * FROM sampleTable WHERE sampleNum=?";
		// DBconn 클래스에서 해당 쿼리에 알맞는 함수 호출 (Select One은 executeQuery() 함수)
		// 인자 값으로 sql문, RowMapper 인스턴스, 쿼리에 필요한 파라미터 순으로 추가
		return new DBconn().executeQuery(sql, rm, num);
	}
	
//	/* Select One 일반적인 코드 */
//	public SampleVO selectSampleOne(int num) {
//		Connection conn = LibDBConnector.getConnection();
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//		SampleVO sampleVO = new SampleVO();
//		try {
//			pstmt = conn.prepareStatement("SELECT * FROM sampleTable WHERE sampleNum=?");
//			pstmt.setInt(1, num);
//			rs = pstmt.executeQuery();
//			while (rs.next()) {
//				sampleVO.setSampleNum(rs.getInt("sampleNum"));
//				sampleVO.setSampleInt(rs.getInt("sampleInt"));
//				sampleVO.setSampleString(rs.getInt("sampleString"));
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		return sampleVO;
//	}
	
	
	/*
	 * Select List
	 * 
	 * sampleTable의 모든 레코드 가져오기
	 */
	public List<SampleVO> selectSampleList() { // 리턴 타입 List
		// RowMapper 인스턴스 생성
		// RowMapper<T>의 리턴타입 T에는 리턴할 VO 클래스명을 작성
		RowMapper<SampleVO> rm = new RowMapper<SampleVO>() {
			@Override
			public SampleVO mapRow(ResultSet rs) throws SQLException {
				// mapRow() 함수에서는 DB 쿼리를 통해 가져온 값을 이용해 VO 인스턴스 생성
				return new SampleVO(
						rs.getInt("sampleNum")
						, rs.getInt("sampleInt")
						, rs.getString("sampleString"));
			}
		};
		// 필요한 SQL문 작성
		String sql = "SELECT * FROM sampleTable";
		// DBconn 클래스에서 해당 쿼리에 알맞는 함수 호출 (Select List는 executeList() 함수)
		// 인자 값으로 sql문, RowMapper 인스턴스, 쿼리에 필요한 파라미터 순으로 추가
		// 파라미터가 필요없는 경우 작성하지 않으면 됨
		return new DBconn().executeList(sql, rm);
	}
	
//  /* Select List 일반적인 코드 */
//	public List<SampleVO> selectSampleList() {
//		Connection conn = LibDBConnector.getConnection();
//		Statement stmt = null;
//		ResultSet rs = null;
//		List<SampleVO> list = new List<SampleVO>();
//		try {
//			stmt = conn.createStatement();
//			rs = stmt.executeQuery("SELECT * FROM sampleTable");
//			while (rs.next()) {
//				SampleVO sampleVO = new SampleVO();
//				sampleVO.setSampleNum(rs.getInt("sampleNum"));
//				sampleVO.setSampleInt(rs.getInt("sampleInt"));
//				sampleVO.setSampleString(rs.getString("sampleString"));
//				list.add(sampleVO);
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		return list;
//	}
	
	
	/*
	 * Insert
	 * 
	 * sampleTable에 레코드 추가하기
	 */
	public boolean insertSample(SampleVO sampleVO) { // 리턴 타입 boolean (성공/실패)
		// 필요한 SQL문 작성
		String sql = "INSERT INTO sampleTable"
				+ "(sampleNum, sampleInt, sampleString)"
				+ "VALUES(?, ?, ?)";
		// DBconn 클래스에서 해당 쿼리에 알맞는 함수 호출 (Insert는 executeUpdate() 함수)
		// 인자 값으로 sql문, 쿼리에 필요한 파라미터 순으로 추가
		// 파라미터가 필요없는 경우 작성하지 않으면 됨
		return new DBconn().executeUpdate(sql 
				, sampleVO.getSampleNum()
				, sampleVO.getSampleInt()
				, sampleVO.getSampleString());
	}
	
//  /* Insert 일반적인 코드 */
//	public boolean insertSample(SampleVO sampleVO) {
//		boolean isSuccess = false;
//		Connection conn = LibDBConnector.getConnection();
//		PreparedStatement pstmt = null;
//		try {
//			pstmt = conn.prepareStatement("INSERT INTO sampleTable"
//					+ "(sampleNum, sampleInt, sampleString)"
//					+ "VALUES(?, ?, ?)");
//			pstmt.setInt(1, sampleVO.getSampleNum());
//			pstmt.setInt(2, sampleVO.getSampleInt());
//			pstmt.setString(3, sampleVO.getSampleString());
//			if(pstmt.executeUpdate() > 0) isSuccess = true;
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		return isSuccess;
//	}
	
	
	/*
	 * Update
	 * 
	 * sampleTable에서 num에 해당하는 레코드 수정하기
	 */
	public boolean updateSample(SampleVO sampleVO) { // 리턴 타입 boolean (성공/실패)
		// 필요한 SQL문 작성
		String sql = "UPDATE sampleTable SET sampleInt=?, sampleString=? WHERE sampleNum=?";
		// DBconn 클래스에서 해당 쿼리에 알맞는 함수 호출 (Update는 executeUpdate() 함수)
		// 인자 값으로 sql문, 쿼리에 필요한 파라미터 순으로 추가
		// 파라미터가 필요없는 경우 작성하지 않으면 됨
		return new DBconn().executeUpdate(sql
				, sampleVO.getSampleInt()
				, sampleVO.getSampleString()
				, sampleVO.getSampleNum());
	}
	
//	/* Update 일반적인 코드 */
//	public boolean updateSample(SampleVO sampleVO) {
//		boolean isSuccess = false;
//		Connection conn = LibDBConnector.getConnection();
//		PreparedStatement pstmt = null;
//		try {
//			pstmt = conn.prepareStatement(UPDATE sampleTable SET sampleInt=?, sampleString=? WHERE sampleNum=?");
//			pstmt.setInt(1, sampleVO.getSampleInt());
//			pstmt.setString(2, sampleVO.getSampleString());
//			pstmt.setInt(3, sampleVO.getSampleNum());
//			if(pstmt.executeUpdate() > 0) isSuccess = true;
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		return isSuccess;
//	}
	
	
	/*
	 * Delete
	 * 
	 * sampleTable에서 num에 해당하는 레코드 삭제하기
	 */
	public boolean deleteSample(int num) { // 리턴 타입 boolean (성공/실패)
		// 필요한 SQL문 작성
		String sql = "DELETE FROM sampleTable WHERE sampleNum=?";
		// DBconn 클래스에서 해당 쿼리에 알맞는 함수 호출 (Delete는 executeUpdate() 함수)
		// 인자 값으로 sql문, 쿼리에 필요한 파라미터 순으로 추가
		// 파라미터가 필요없는 경우 작성하지 않으면 됨
		return new DBconn().executeUpdate(sql, num);
	}

//	/* Delete 일반적인 코드 */
//	public boolean deleteSample(int num) {
//		boolean isSuccess = false;
//		Connection conn = LibDBConnector.getConnection();
//		PreparedStatement pstmt = null;
//		try {
//			pstmt = conn.prepareStatement("DELETE FROM sampleTable WHERE sampleNum=?");
//			pstmt.setInt(1, num);
//			if(pstmt.executeUpdate() > 0) isSuccess = true;
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		return isSuccess
//	}
	
}
