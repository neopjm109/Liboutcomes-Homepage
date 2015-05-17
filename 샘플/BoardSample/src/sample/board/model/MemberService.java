package sample.board.model;

import java.sql.*;
import java.util.*;

import sample.board.utils.DBConnector;

public class MemberService {

	Connection conn;

	public MemberService() {
		DBConnector dbConnector = new DBConnector();
		conn = dbConnector.getConnection();
	}
	
	public MemberService(Connection conn) {
		this.conn = conn;
	}

    public boolean checkId(String id) {
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean checkCon = false;
        try {
            String strQuery = "select id from member where id = ?";
            pstmt = conn.prepareStatement(strQuery);
            pstmt.setString(1,id);
            rs = pstmt.executeQuery();
            checkCon = rs.next();

        }catch(Exception ex) {
            System.out.println("Exception" + ex);
        }
        return checkCon;
    }

    public boolean memberInsert(Register regBean) {
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean flag = false;
        try {
            String strQuery = "insert into member values(?,?,?,?,?,?,?,?,1)";
            pstmt = conn.prepareStatement(strQuery);
            pstmt.setString(1,regBean.getMem_id());
            pstmt.setString(2,regBean.getMem_passwd());
            pstmt.setString(3,regBean.getMem_name());
            pstmt.setString(4,regBean.getMem_birth());
            pstmt.setString(5,regBean.getMem_email());
            pstmt.setString(6,regBean.getMem_phone());
            pstmt.setString(7,regBean.getMem_zipcode());
            pstmt.setString(8,regBean.getMem_address());

            int count = pstmt.executeUpdate();

            if(count>0){
                flag = true;
            }
        }catch(Exception ex) {
            System.out.println("Exception" + ex);
        }
        return flag;
    }


    public boolean memberDelete(String id) {
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean flag = false;
        try {
            String strQuery = "delete from member where id = ?";
            pstmt = conn.prepareStatement(strQuery);
            pstmt.setString(1,id);
 
            int count = pstmt.executeUpdate();

            if(count>0){
                flag = true;
            }
        }catch(Exception ex) {
            System.out.println("Exception" + ex);
        }
        return flag;
    }


    public boolean memberChange(Register regBean) {
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean flag = false;
        try {
            String strQuery = "UPDATE member SET passwd=?, name=?, mem_birth=?, e_mail=?, phone=?, zipcode=?, address=?, WHERE id=?";
            pstmt = conn.prepareStatement(strQuery);

            pstmt.setString(1,regBean.getMem_passwd());
            pstmt.setString(2,regBean.getMem_name());
            pstmt.setString(3,regBean.getMem_birth());
            pstmt.setString(7,regBean.getMem_email());
            pstmt.setString(5,regBean.getMem_phone());
            pstmt.setString(6,regBean.getMem_zipcode());
            pstmt.setString(7,regBean.getMem_address());
            pstmt.setString(8,regBean.getMem_id());

            int count = pstmt.executeUpdate();

            if(count>0){
                flag = true;
            }
        }catch(Exception ex) {
            System.out.println("Exception" + ex);
        }
        return flag;
    }

    public boolean loginCheck(String id, String passwd)  {
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean loginCon = false;
        try {
            String strQuery = "select id, passwd from member where id = ? and passwd = ?";
            pstmt = conn.prepareStatement(strQuery);
            pstmt.setString(1,id);
            pstmt.setString(2,passwd);
            rs = pstmt.executeQuery();
            loginCon = rs.next();
        }catch(Exception ex) {
            System.out.println("Exception" + ex);
        }
        return loginCon;
    }

}
