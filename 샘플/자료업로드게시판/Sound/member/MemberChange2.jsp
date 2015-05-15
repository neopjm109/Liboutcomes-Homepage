<%@ page contentType="text/html;charset=UTF-8"%>
<%
   request.setCharacterEncoding("UTF-8");
%>
    
<jsp:useBean id="memMgr" class="homework2.MemberMgr"/>
<jsp:useBean id="regBean" class="homework2.RegisterBean" />
<jsp:setProperty name="regBean" property="*" />

<% 
   String mem_id = (String)session.getAttribute("idKey");
   regBean.setMem_id(mem_id);
   boolean flag = memMgr.memberChange(regBean);
%>       
        
    
<html>
<head>
<title>정보 수정</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>

<%
	if(flag){ 
%>
    <script>
        alert('회원 정보가 수정되었습니다.');
        location="Login.jsp"
    </script>
<%
	}else{
%>
    <script>
        alert('회원 정보를 수정하지 못했습니다.');
        location="MemberChange.jsp";
    </script>
    
<%
	}
%>

</body>
</html>