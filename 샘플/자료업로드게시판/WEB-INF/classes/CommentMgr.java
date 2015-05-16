package SoundComment;

import java.sql.*;
import java.text.*;
import java.util.*;

public class CommentMgr {

	private DBConnectionMgr pool = null;
	public CommentMgr() {
		try{
			pool = DBConnectionMgr.getInstance();
		}catch(Exception e){
			System.out.println("Error : Connection Fail");
		}
	}

	public Vector getCommentList(int num) {
		Connection con = null;
		  PreparedStatement pstmt = null;
		  ResultSet rs = null;
		  String strQuery = null;
		  Vector boardList = new Vector();
   		  
		  try {	 
            con = pool.getConnection();
			strQuery = "select * from sound_comment where boardNum = ?";
			pstmt = con.prepareStatement(strQuery);
			pstmt.setInt(1,num);
			rs = pstmt.executeQuery();
              
			while (rs.next()) {
			CommentBean tempBean = new CommentBean();
                
                tempBean.setCommentNum(rs.getInt("commentNum"));
                tempBean.setBoardNum(rs.getInt("boardNum"));
                tempBean.setName(rs.getString("name"));
                tempBean.setContent(rs.getString("content"));
                tempBean.setRegdate(rs.getString("regdate"));
                
			boardList.addElement(tempBean);
			
			}
		  }catch(Exception ex){
			 System.out.println("Exception" + ex);
		  }finally{
	        pool.freeConnection(con,pstmt);	  
		  }
		return boardList;
	}
    
    public CommentBean getComment(int num) { 
		  Connection con = null;
		  PreparedStatement pstmt = null;
		  ResultSet rs = null;
		  CommentBean tempBean = new CommentBean();
		
		  try {
			con = pool.getConnection();
			String strQuery = "select * from sound_comment where commentNum = ?";
			pstmt = con.prepareStatement(strQuery);
			pstmt.setInt(1,num);
			rs = pstmt.executeQuery();
		    while (rs.next()) {
			
                tempBean.setCommentNum(rs.getInt("commentNum"));
                tempBean.setBoardNum(rs.getInt("boardNum"));
                tempBean.setName(rs.getString("name"));
                tempBean.setContent(rs.getString("content"));
                tempBean.setRegdate(rs.getString("regdate"));

			}
		  }catch(Exception ex) {
			  System.out.println("Exception" + ex);
		  }finally{
	         pool.freeConnection(con,pstmt,rs);	  
		  }
		return tempBean;
	}

	public boolean insertComment(CommentBean commentBean){
        Connection con = null;
        PreparedStatement pstmt = null;
        boolean check=false;
        int rs=0;
		  
		  try {
			con = pool.getConnection();
			String strQuery = "insert into sound_comment" 
					+ "(boardNum,name,content,regdate)" 
					+ " values(?,?,?,NOW())"; 
																			 
					pstmt = con.prepareStatement(strQuery);
					pstmt.setInt(1,commentBean.getBoardNum());
					pstmt.setString(2,commentBean.getName());
					pstmt.setString(3,commentBean.getContent());

					rs = pstmt.executeUpdate();
              
              if(rs > 0) check=true;
              

		  }catch(Exception ex) {
				System.out.println("Exception" + ex);
		  }finally{
	         pool.freeConnection(con,pstmt);		  
		  }
        return check;
	}

    

	public boolean deleteComment(int num) {  
		  Connection con = null;
		  PreparedStatement pstmt = null;
        boolean check = false;
        int rs=0;
		
		  try{
			con = pool.getConnection();
			String strQuery = "delete from sound_comment where commentNum = ?";
			pstmt = con.prepareStatement(strQuery);
			pstmt.setInt(1,num);
			rs = pstmt.executeUpdate();
              
              if(rs >0) check = true;
		  }catch(Exception ex) {
		      System.out.println("Exception" + ex);
		  }finally{
	        pool.freeConnection(con,pstmt);		  
		  }
        return check;
	}

}
