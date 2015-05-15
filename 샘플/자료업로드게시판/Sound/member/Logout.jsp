<%@ page contentType="text/html;charset=UTF-8"%>
<%
	//session.removeAttribute("idKey");
	session.invalidate();
%>

<script>
	alert('로그아웃 되었습니다.');
	location="Login.jsp"; 
</script>
   
