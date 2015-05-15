<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="SoundBoard.*"%>

<jsp:useBean id="sb" class="SoundBoard.BoardMgr" />

<html>
<body>
<%
   request.setCharacterEncoding("UTF-8");
   String mem_id = (String)session.getAttribute("idKey");
   String mem_name = (String)session.getAttribute("name");
   int num;
   int nowPage;
   String inPass=""; 
   String DBPass="";
   
   nowPage = Integer.parseInt(request.getParameter("page"));
   num = Integer.parseInt(request.getParameter("num"));
   BoardBean tempBoard = sb.getBoard(num);
   String writer = tempBoard.getName();

   if(mem_name.equals(writer) || mem_name.equals("Admin")) {
        sb.deleteLike(num);
        sb.deleteBoard(num);
        response.sendRedirect("List.jsp?page=" + nowPage);

   } else {
%>
    <script>
        alert("권한이 없습니다.");
        location.href="List.jsp";
    </script>
    <%=writer%>
    <%=mem_name%>  
    <%=num%>  
<%
   }
%>
    
</body>
</html>