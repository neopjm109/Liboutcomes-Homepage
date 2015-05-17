package sample.board.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

import sample.board.utils.DBConnector;

public class CommentService {
	
	Connection conn;
	
	public CommentService() {
		DBConnector dbConnector = new DBConnector();
		conn = dbConnector.getConnection();
	}
	
	public CommentService(Connection conn) {
		this.conn = conn;
	}

	
	public Vector getCommentList(int id) {
		  PreparedStatement pstmt = null;
		  ResultSet rs = null;
		  String strQuery = null;
		  Vector boardList = new Vector();
   		  
		  try {	 
			strQuery = "select * from comment where board_id = ?";
			pstmt = (PreparedStatement) conn.prepareStatement(strQuery);
			pstmt.setInt(1,id);
			rs = pstmt.executeQuery();
              
			while (rs.next()) {
			Comment comment = new Comment();
                
			comment.setId(rs.getInt("id"));
			comment.setBoardId(rs.getInt("board_id"));
			comment.setName(rs.getString("name"));
			comment.setContent(rs.getString("content"));
			comment.setDate(rs.getString("date"));
                
			boardList.addElement(comment);
			
			}
		  }catch(Exception ex){
			 System.out.println("Exception" + ex);
		  }
		return boardList;
	}
    
    public Comment getComment(int id) { 
		  PreparedStatement pstmt = null;
		  ResultSet rs = null;
		  Comment comment = new Comment();
		
		  try {
			String strQuery = "select * from comment where id = ?";
			pstmt = conn.prepareStatement(strQuery);
			pstmt.setInt(1,id);
			rs = pstmt.executeQuery();
		    while (rs.next()) {
			
		    	comment.setId(rs.getInt("id"));
		    	comment.setBoardId(rs.getInt("board_id"));
                comment.setName(rs.getString("name"));
                comment.setContent(rs.getString("content"));
                comment.setDate(rs.getString("date"));

			}
		  }catch(Exception ex) {
			  System.out.println("Exception" + ex);
		  }
		return comment;
	}

	public boolean insertComment(Comment comment){
        PreparedStatement pstmt = null;
        boolean check=false;
        int rs=0;
		  
		  try {
			String strQuery = "insert into comment" 
					+ "(board_id,name,content,date)" 
					+ " values(?,?,?,NOW())"; 
																			 
					pstmt = conn.prepareStatement(strQuery);
					pstmt.setInt(1,comment.getBoardId());
					pstmt.setString(2,comment.getName());
					pstmt.setString(3,comment.getContent());

					rs = pstmt.executeUpdate();
              
              if(rs > 0) check=true;
              

		  }catch(Exception ex) {
				System.out.println("Exception" + ex);
		  }
        return check;
	}

    

	public boolean deleteComment(int id) {  
		  PreparedStatement pstmt = null;
        boolean check = false;
        int rs=0;
		
		  try{
			String strQuery = "delete from comment where id = ?";
			pstmt = conn.prepareStatement(strQuery);
			pstmt.setInt(1,id);
			rs = pstmt.executeUpdate();
              
              if(rs >0) check = true;
		  }catch(Exception ex) {
		      System.out.println("Exception" + ex);
		  }
        return check;
	}

}

