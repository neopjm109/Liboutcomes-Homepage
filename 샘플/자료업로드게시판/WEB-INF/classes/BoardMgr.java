package SoundBoard;

import java.sql.*;
import java.text.*;
import java.util.*;

public class BoardMgr {

	private DBConnectionMgr pool = null;
	public BoardMgr() {
		try{
			pool = DBConnectionMgr.getInstance();
		}catch(Exception e){
			System.out.println("Error : Connection Fail");
		}
	}

	public Vector getBoardList(String keyField, String keyWord) {
		Connection con = null;
		  Statement stmt = null;
		  ResultSet rs = null;
		  String strQuery = null;
		  Vector boardList = new Vector();
   		  
		  try {	 
			 con = pool.getConnection();
			 stmt = con.createStatement();
              
			 if(keyWord.equals("null") || keyWord.equals("")){
			   strQuery = "select * from board";
			 }else{
			   strQuery = "select * from board where " +keyField+" like '%" + keyWord +"%'";
			 }
              
			rs = stmt.executeQuery(strQuery);
              
			while (rs.next()) {
                BoardBean tempBean = new BoardBean();

                tempBean.setBoardNum(rs.getInt("boardNum"));
                tempBean.setName(rs.getString("name"));
                tempBean.setSubject(rs.getString("subject")); 
                tempBean.setContent(rs.getString("content"));
                tempBean.setFileName(rs.getString("fileName"));
                tempBean.setRegdate(rs.getString("regdate"));
                tempBean.setCount(rs.getInt("count"));
                tempBean.setIp(rs.getString("ip"));
                tempBean.setMyLike(rs.getInt("mylike"));

                boardList.addElement(tempBean);
			
			}
		  }catch(Exception ex){
			 System.out.println("Exception" + ex);
		  }finally{
	        pool.freeConnection(con,stmt,rs);	  
		  }
		return boardList;
	}

	public boolean insertBoard(BoardBean boardBean){
		  Connection con = null;
		  PreparedStatement pstmt = null;
        boolean check=false;
        int rs=0;
		  
		  try {
			con = pool.getConnection();
			String strQuery = "insert into board" 
					+ "(name,subject,content,fileName,regdate,count,ip,mylike)" 
					+ " values(?,?,?,?,NOW(),0,?,0)"; 
																			 
					pstmt = con.prepareStatement(strQuery);
					pstmt.setString(1,boardBean.getName());
					pstmt.setString(2,boardBean.getSubject());
					pstmt.setString(3,boardBean.getContent());
					pstmt.setString(4,boardBean.getFileName());
					pstmt.setString(5,boardBean.getIp());

					rs = pstmt.executeUpdate();
              
              if(rs > 0) check=true;
              
		  }catch(Exception ex) {
				System.out.println("Exception" + ex);
		  }finally{
	         pool.freeConnection(con,pstmt);		  
		  }
        return check;
	}
    
	public BoardBean getBoard(int num) { 
		  Connection con = null;
		  PreparedStatement pstmt = null;
		  ResultSet rs = null;
		  upCount(num);
		  BoardBean tempBean = new BoardBean();
		
		  try {
			con = pool.getConnection();
			String strQuery = "select * from board where boardNum = ?";
			pstmt = con.prepareStatement(strQuery);
			pstmt.setInt(1,num);
			rs = pstmt.executeQuery();
		    while (rs.next()) {
			
                tempBean.setBoardNum(rs.getInt("boardNum"));
                tempBean.setName(rs.getString("name"));
                tempBean.setSubject(rs.getString("subject")); 
                tempBean.setContent(rs.getString("content"));
                tempBean.setFileName(rs.getString("fileName"));
                tempBean.setRegdate(rs.getString("regdate"));
                tempBean.setCount(rs.getInt("count"));
                tempBean.setIp(rs.getString("ip"));
                tempBean.setMyLike(rs.getInt("mylike"));

			}
		  }catch(Exception ex) {
			  System.out.println("Exception" + ex);
		  }finally{
	         pool.freeConnection(con,pstmt,rs);	  
		  }
		return tempBean;
	}

	public void upCount(int num) { 
		  Connection con = null;
		  PreparedStatement pstmt = null;
		
		  try{
			con = pool.getConnection();
			String strQuery="update board set count=count+1 where boardNum= ?";
			pstmt = con.prepareStatement(strQuery);
			pstmt.setInt(1,num);
			pstmt.executeUpdate();
		  }catch(Exception ex) {
			System.out.println("Exception" + ex);
	      }finally{
	        pool.freeConnection(con,pstmt);		  
		  }
	}
	public void deleteLike(int num) {  
		  Connection con = null;
		  PreparedStatement pstmt = null;
		
		  try{
			con = pool.getConnection();
			String strQuery = "delete from sound_like where boardNum = ?";
			pstmt = con.prepareStatement(strQuery);
			pstmt.setInt(1,num);
			pstmt.executeUpdate();
               
		  }catch(Exception ex) {
		      System.out.println("Exception" + ex);
		  }finally{
	        pool.freeConnection(con,pstmt);		  
		  }
	}
	public void deleteBoard(int num) {  
		  Connection con = null;
		  PreparedStatement pstmt = null;
		
		  try{
			con = pool.getConnection();
			String strQuery = "delete from board where boardNum = ?";
			pstmt = con.prepareStatement(strQuery);
			pstmt.setInt(1,num);
			pstmt.executeUpdate();
               
		  }catch(Exception ex) {
		      System.out.println("Exception" + ex);
		  }finally{
	        pool.freeConnection(con,pstmt);		  
		  }
	}
    
    ///////////////////////////////////////////////////////////////////////
    public void plusLike(int num){
        Connection con = null;
        PreparedStatement pstmt = null;
        boolean check=false;
        
		  try {
			con = pool.getConnection();
			String strQuery = "update board set mylike = mylike+1 where boardNum=?";
            pstmt = con.prepareStatement(strQuery);
			pstmt.setInt(1,num);  
            pstmt.executeUpdate();
              
		  }catch(Exception ex) {
				System.out.println("Exception" + ex);
		  }finally{
	         pool.freeConnection(con,pstmt);		  
		  }
	}
    
    public boolean insertLike(String id, int num){
		  Connection con = null;
		  PreparedStatement pstmt = null;
        boolean check=false;
        int rs=0;
		  
		  try {
			con = pool.getConnection();
			String strQuery = "insert into sound_like" 
					+ "(id,boardNum) values (?,?)"; 
																			 
					pstmt = con.prepareStatement(strQuery);
					pstmt.setString(1,id);
					pstmt.setInt(2,num);

              rs = pstmt.executeUpdate();
              
              if(rs>0) check=true;
              
		  }catch(Exception ex) {
				System.out.println("Exception" + ex);
		  }finally{
	         pool.freeConnection(con,pstmt);		  
		  }
        return check;
	}
    
    public boolean checkLike(String id, int num){
		  Connection con = null;
		  PreparedStatement pstmt = null;
        boolean check=false;
        int t=0;
        ResultSet rs=null;
		  
		  try {
			con = pool.getConnection();
			String strQuery = "select * from sound_like where id=? and boardNum=?";
																			 
					pstmt = con.prepareStatement(strQuery);
					pstmt.setString(1,id);
					pstmt.setInt(2,num);

              rs = pstmt.executeQuery();
              while(rs.next()) {
                  t++;
              }
              if(t>0) check = true;
              
		  }catch(Exception ex) {
				System.out.println("Exception" + ex);
		  }finally{
	         pool.freeConnection(con,pstmt);		  
		  }
        return check;
	}
    
    public Vector getMyList(String id) {
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        
        String strQuery = null;
        String strQuery2 = null;
        
        Vector boardList = new Vector();
        Vector temp = new Vector();
        
		  try {	 
              con = pool.getConnection();
              stmt=con.createStatement();
              strQuery = "select * from sound_like where id='" + id + "'";
              rs = stmt.executeQuery(strQuery);
    
              while(rs.next()) {
                  temp.addElement(rs.getInt("boardNum"));
              }
              int rowc = temp.size();
              
              ////////////////////////////////////////////////////////////////
              for(int i=0; i<rowc; i++) {
                  strQuery2 = "select * from board where boardNum=" + (int)temp.get(i);
                  rs = stmt.executeQuery(strQuery2);

                        while(rs.next()) {
                            BoardBean tempBean = new BoardBean();

                            tempBean.setBoardNum(rs.getInt("boardNum"));
                            tempBean.setName(rs.getString("name"));
                            tempBean.setSubject(rs.getString("subject"));
                            tempBean.setContent(rs.getString("content"));
                            tempBean.setFileName(rs.getString("fileName"));
                            tempBean.setRegdate(rs.getString("regdate"));
                            tempBean.setCount(rs.getInt("count"));
                            tempBean.setIp(rs.getString("ip"));
                            tempBean.setMyLike(rs.getInt("mylike"));

                            boardList.addElement(tempBean);
                        }
              }             
		  }catch(Exception ex){
			 System.out.println("Exception" + ex);
		  }finally{
	        pool.freeConnection(con,stmt,rs);	  
		  }
		return boardList;
	}
    
    
    

}
