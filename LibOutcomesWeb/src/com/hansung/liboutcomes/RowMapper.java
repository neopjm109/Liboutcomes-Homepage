package com.hansung.liboutcomes;

import java.sql.ResultSet;
import java.sql.SQLException;

/*
 * 어떠한 자료형이 올지 모르므로 Generic Type으로 설정
 */
public interface RowMapper <T> {
	
	T mapRow(ResultSet rs) throws SQLException;
	
}
