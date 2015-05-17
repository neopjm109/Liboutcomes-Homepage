<%@ page contentType="text/html;charset=UTF-8"%>
<jsp:useBean id="memMgr" class="sample.board.model.MemberService" />
<jsp:useBean id="memInfo" class="sample.board.model.MemberInfo"/>
    
<%
   request.setCharacterEncoding("UTF-8");

	String mem_id = request.getParameter("mem_id");
	String mem_passwd = request.getParameter("mem_passwd");
   String mem_name = memInfo.getName(mem_id);
	boolean loginCheck = memMgr.loginCheck(mem_id,mem_passwd); 
%>
<%
   if(loginCheck){
        session.setAttribute("idKey",mem_id);
        session.setAttribute("name", mem_name);
        response.sendRedirect("Login.jsp");
   }else{
      response.sendRedirect("LogError.jsp");
   }
%>
