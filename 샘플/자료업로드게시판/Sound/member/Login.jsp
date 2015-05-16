<%@ page contentType="text/html;charset=UTF-8"%>
<%
    String mem_id = (String)session.getAttribute("idKey");
%>

<html>
<head>
<title>로그인</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js">
</script>
</head>

<center>
<br>
    
<%
	if(mem_id != null){

%>
    <script>
        location="/Sound/board/List.jsp"
    </script>
    
<b><%=mem_id%></b>님 환영 합니다.<p>
제한된 기능을 사용 할 수가 있습니다.<p>
<input type="button" value="게시판 보기" onclick="Board()"><br>
<a href="Logout.jsp">로그아웃</a><br><br>
    
<input type="button" value="정보 수정" onclick="memberChange()"><br><br>
<input type="button" value="회원 탈퇴" onclick="memberDelete()"><br><br>

    
<%}else{%>
    <h2><font color="#000000">Share you favorite SOUND!</font></h2>
    <table align=center border=0 width=80%>
        <tr></tr>
    </table>
    <br><br>
    
    
    <form name="login" method="post" action="LoginProc.jsp">
    <table align=center border=0 width=30%>
        <tr><td colspan="2">
            <div style="height:25px; width:100%; background-color:#D0D0D0;">
                <center><h3><font color="#000000">Login</font></h3></center>
            </div><br>
        </td></tr>
    <tr> 
        <td>ID</td>
        <td><input type="text" name="mem_id"></td>
    </tr>
    <tr> 
        <td>Password</td>
        <td><input type="password" name="mem_passwd"> </td>
    </tr>
    <tr> 
        <td colspan="2"> 
            <div align="right"> 
                <input type="button" value="로그인" onclick="loginCheck()" class="btn"> &nbsp;
                <input type="button" value="회원가입" onclick="memberReg()" class="btn">
            </div>
        </td>
    </tr>
        
    </table>
    </form>
<%}%>
    
</center>
</body>
</html>