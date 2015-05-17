package sample.board.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

import sample.board.utils.DBConnector;

public class BoardService {

	Connection conn;
	
	public BoardService() {
		DBConnector dbConnector = new DBConnector();
		conn = dbConnector.getConnection();
	}
	
	public BoardService(Connection conn) {
		this.conn = conn;
	}

	public Vector getBoardList(String keyField, String keyWord) {
		
		Statement stmt = null;
		ResultSet rs = null;
		String strQuery = null;
		Vector boardList = new Vector();
   		  
		try {	 
			stmt = conn.createStatement();
			  
			if(keyWord.equals("null") || keyWord.equals("")){
				strQuery = "select * from data_science";
			}else{
				strQuery = "select * from data_science where " +keyField+" like '%" + keyWord +"%'";
			}
              
			rs = stmt.executeQuery(strQuery);
              
			while (rs.next()) {
                Board board = new Board();

                board.setId(rs.getInt("id"));
                board.setTitle(rs.getString("title")); 
                board.setContent(rs.getString("content"));
                board.setFileName(rs.getString("fileName"));
                board.setName(rs.getString("name"));
                board.setDate(rs.getString("date"));
                
                boardList.addElement(board);
			}
		}catch(Exception ex){
			System.out.println("Exception" + ex);
		}
		return boardList;
	}

	public boolean insertBoard(Board board){
		PreparedStatement pstmt = null;
        boolean check = false;
        int rs=0;
		  
		  try {
			String strQuery = "insert into data_science" 
					+ "(title,content,fileName,name,date)" 
					+ " values(?,?,?,?,NOW())"; 
																			 
					pstmt = conn.prepareStatement(strQuery);
					pstmt.setString(1,board.getTitle());
					pstmt.setString(2,board.getContent());
					pstmt.setString(3,board.getFileName());
					pstmt.setString(4,board.getName());

					rs = pstmt.executeUpdate();
              
              if(rs > 0) check=true;
              
		  }catch(Exception ex) {
				System.out.println("Exception" + ex);
		  }
        return check;
	}
    
	public Board getBoard(int id) { 
		  PreparedStatement pstmt = null;
		  ResultSet rs = null;
		  Board board = new Board();
		
		  try {
			String strQuery = "select * from data_science where id = ?";
			pstmt = conn.prepareStatement(strQuery);
			pstmt.setInt(1,id);
			rs = pstmt.executeQuery();
			
		    while (rs.next()) {
                board.setId(rs.getInt("id"));
                board.setTitle(rs.getString("title")); 
                board.setContent(rs.getString("content"));
                board.setFileName(rs.getString("fileName"));
                board.setName(rs.getString("name"));
                board.setDate(rs.getString("date"));
			}
		  }catch(Exception ex) {
			  System.out.println("Exception" + ex);
		  }
		return board;
	}
	
	public void deleteBoard(int id) {  
		  PreparedStatement pstmt = null;
		
		  try{
			String strQuery = "delete from data_science where id = ?";
			pstmt = conn.prepareStatement(strQuery);
			pstmt.setInt(1,id);
			pstmt.executeUpdate();
             
		  }catch(Exception ex) {
		      System.out.println("Exception" + ex);
		  }
	}
 
}
