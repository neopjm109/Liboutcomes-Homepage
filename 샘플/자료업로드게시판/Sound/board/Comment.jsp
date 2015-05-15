<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="SoundComment.*"%>
    
<jsp:useBean id="myComment" class="SoundComment.CommentBean" />
<jsp:useBean id="sc" class="SoundComment.CommentMgr" />'
    
<%
   request.setCharacterEncoding("UTF-8");
   String mem_id = (String)session.getAttribute("idKey");
   String mem_name = (String)session.getAttribute("name");

   int bn = Integer.parseInt(request.getParameter("num"));
   String content = request.getParameter("comment");
   int nowPage = Integer.parseInt(request.getParameter("page"));
   
   myComment.setContent(content);
   myComment.setName(mem_name);
   myComment.setBoardNum(bn);   
   
	boolean ch = sc.insertComment(myComment);
   if(ch) {
        request.setAttribute("num", bn);  
        RequestDispatcher dispatcher = request.getRequestDispatcher("Read.jsp");  
        dispatcher.forward( request, response );
   }else {
%>
    <%=myComment.getName()%>
    <%=myComment.getContent()%>
    <%=myComment.getBoardNum()%>
<%
   }
%> 