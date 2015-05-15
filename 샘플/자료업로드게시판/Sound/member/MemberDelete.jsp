<%@ page contentType="text/html;charset=UTF-8"%>
<jsp:useBean id="memMgr" class="homework2.MemberMgr"/>
<%
    request.setCharacterEncoding("UTF-8");
    String mem_id = (String)session.getAttribute("idKey"); 
	boolean flag = memMgr.memberDelete(mem_id);	
%>
<html>
<head>
<title>회원 탈퇴</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>

<%
	if(flag){
%>
    <script>
        alert("탈퇴 되었습니다.");
        location="Login.jsp"
    </script>
<%
		session.invalidate();	
	}else{
%>
    <script>
        alert("탈퇴 실패!!!!");
    </script>
    
<%	
	}
%>

</body>
</html>