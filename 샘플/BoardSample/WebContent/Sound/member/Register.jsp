<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<title>회원 가입</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js"></script>
</head>
    
<body onLoad="regForm.mem_id.focus()">
    <form name="regForm" method="post" action="RegisterProc.jsp"> 
    <div>
    </div>
    
    <center><h3>회원 가입</h3></center>
    
    <div>
        <table border="1" BORDERCOLOR=#dddddd cellspacing="0" cellpadding="2" align="center">
           
          <tr> 
            <td width="20%">아이디</td>
            <td width="57%">
                <input type="text" name="mem_id" size="15">
                <input type="button" value="ID중복확인" onClick="idCheck(this.form.mem_id.value)"></td>
          </tr>
          <tr> 
            <td>패스워드</td>
            <td> <input type="password" name="mem_passwd" size="15"> </td>
          </tr>
          <tr> 
            <td>패스워드 확인</td>
            <td> <input type="password" name="mem_repasswd" size="15"> </td>
          </tr>
          <tr> 
            <td>이름</td>
            <td> <input type="text" name="mem_name" size="15"> </td>
          </tr>
		  <tr> 
            <td>생년월일</td>
            <td> <input type="text" name="mem_birth" size="6" maxlength="6">
          </tr>
          <tr> 
            <td>이메일</td>
            <td> <input type="text" name="mem_email" size="27"> </td>
          </tr>
          <tr>  
            <td>전화번호</td>
            <td> <input type="text" name="mem_phone" size="20"> </td>
          </tr>
		  <tr>  
            <td>우편번호</td>
            <td> <input type="text" name="mem_zipcode" size="20"></td>
          </tr>
		  <tr>  
            <td>주소</td>
            <td><input type="text" name="mem_address" size="50"></td>
          </tr>

          <tr> 
            <td colspan="3" align="center"> 
             <input type="button" value="회원가입" onclick="inputCheck()"> 
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
             <input type="reset" value="다시쓰기"> 
            </td>
          </tr>
        </form>
      </table>
        
    </div>
</body>
</html>
