<%@ page contentType="text/html;charset=UTF-8"%>
<% 
    request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="regBean" class="Sound.RegisterBean"/>
<jsp:setProperty name="regBean" property="*" />

<html>
<head>
<title>회원 가입 확인</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js"></script>
</head>
    
<body>
    <center><h3>회원 가입 확인</h3></center>
	<table border="1" BORDERCOLOR=#dddddd cellspacing="0" cellpadding="2" align="center">
	<form name="regForm" method="post" action="MemberInsert.jsp">

        <tr align="center"> 
            <td colspan="3"><b> 
              <jsp:getProperty name="regBean" property="mem_name" />
              회원님이 작성하신 내용입니다. 확인해 주세요</b>
            </td>
        </tr>
        
          <tr> 
            <td>아이디</td>
            <td><input type="text" name="mem_id" 
			           value="<jsp:getProperty name="regBean" property="mem_id" />"></td>
          </tr>
        
          <tr> 
            <td>패스워드</td>
            <td><input type="text" name="mem_passwd" 
			           value="<jsp:getProperty name="regBean" property="mem_passwd" />"></td>
          </tr>
        
          <tr> 
            <td>이름</td>
            <td><input type="text" name="mem_name" 
			           value="<jsp:getProperty name="regBean" property="mem_name" />"></td>
          </tr>
		  <tr> 
            <td>생일</td>
            <td><input type="text" name="mem_num1" 
                       value="<jsp:getProperty name="regBean" property="mem_birth" />"></td>
          </tr>
          <tr> 
            <td>이메일</td>
           <td><input type="text" name="mem_email"  size="30" 
		              value="<jsp:getProperty name="regBean" property="mem_email" />"></td>
          </tr>
        
          <tr> 
            <td>전화번호</td>
            <td><input type="text" name="mem_phone" 
			           value="<jsp:getProperty name="regBean" property="mem_phone" />"></td>
          </tr>
		  <tr> 
            <td>우편번호</td>
            <td><input type="text" name="mem_zipcode" 
			           value="<jsp:getProperty name="regBean" property="mem_zipcode" />"></td>
          </tr>
        
		  <tr> 
            <td>주소</td>
           <td><input type="text" name="mem_address" size="50" 
		              value="<jsp:getProperty name="regBean" property="mem_address" />"></td>
          </tr>

          <tr> 
            <td colspan="2" align="center"><input type="submit" value="확인완료"> 
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
            <input type="button" value="다시쓰기" onClick="history.back()"> 
            </td>
          </tr>
        
        </form>
      </table>

</body>
</html>
