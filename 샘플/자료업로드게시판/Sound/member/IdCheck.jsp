<%@ page contentType="text/html;charset=UTF-8"%>
<jsp:useBean id="memMgr" class="Sound.MemberMgr" />

<%
   String mem_id = request.getParameter("mem_id");
   boolean check = memMgr.checkId(mem_id);
%>
<html>
<head>
<title>ID 중복체크</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js"></script>
</head>
<br>
<center>
<b><%=mem_id%></b>
<%
  if(check){
     out.println("는 이미 존재하는 ID입니다.<p>");
}else{    
     out.println("는 사용 가능 합니다.<p>");
}
%>
<a href="#" onClick="win_close()">닫기</a>
</center>
</body>
</html>