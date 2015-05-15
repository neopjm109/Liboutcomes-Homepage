<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="SoundComment.*"%>
    
<jsp:useBean id="myBoard" class="SoundBoard.BoardBean" />
<jsp:useBean id="sb" class="SoundBoard.BoardMgr"/>
    
<%
   request.setCharacterEncoding("UTF-8");
   String mem_id = (String)session.getAttribute("idKey");
   String mem_name = (String)session.getAttribute("name");
   
   int bn = Integer.parseInt(request.getParameter("num"));
   boolean checkLike = false;

   checkLike = sb.checkLike(mem_id, bn); //좋아요 테이블 확인
   
   if(!checkLike) {
        sb.plusLike(bn); //좋아요 +1
        sb.insertLike(mem_id, bn);
   
        request.setAttribute("num", bn);  
        RequestDispatcher dispatcher = request.getRequestDispatcher("Read.jsp");  
        dispatcher.include( request, response );
   
   } else {
        out.println("<script>alert('이미 플레이리스트에 추가되었습니다.');</script>");
   
        request.setAttribute("num", bn);  
        RequestDispatcher dispatcher = request.getRequestDispatcher("Read.jsp");  
        dispatcher.include( request, response );
   }
%> 