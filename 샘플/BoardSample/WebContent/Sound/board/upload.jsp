<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest, 
                 com.oreilly.servlet.multipart.DefaultFileRenamePolicy, 
                 java.util.*, java.io.*, sample.board.model.*" %>
    
<jsp:useBean id="myBoard" class="sample.board.model.Board" />
<jsp:useBean id="sound" class="sample.board.model.BoardService" />

<%
    String mem_id = (String)session.getAttribute("idKey");
   String mem_name = (String)session.getAttribute("name");
%>
    
<html>
<head>
<title>파일 업로드</title>
<link href="style.css" rel="stylesheet" type="text/css">

</head>
    
<%
   int size = 15 * 1024 * 1024;
   String saveFolder = "/Sound/board/file";
   String savePath = "";
   ServletContext context = getServletConfig().getServletContext();
   savePath = context.getRealPath(saveFolder);
   
   MultipartRequest up = null;
   String filename = null;

   try {
        up = new MultipartRequest(request, savePath, size, "UTF-8", new DefaultFileRenamePolicy());
        filename = up.getFilesystemName("fileName"); //실제 파일을 다운 받을 수 있는 주소..
   
        if(filename == null) {
                response.sendRedirect("List.jsp");

        } else {
                File file1 = up.getFile("fileName");
                String title = up.getParameter("subject");
                String content = up.getParameter("content");
   
           myBoard.setTitle(title);
           myBoard.setContent(content);
           myBoard.setName(mem_name);
           myBoard.setFileName(filename);
   
                boolean chch = true;
                chch = sound.insertBoard(myBoard);////////////////
                if(chch) {
%>    

    <script>
        alert("성공적으로 등록되었습니다.")
        location="List.jsp"
    </script>
    
    <h2>파일 업로드가 정상적으로 완료되었습니다!!</h2>
    저장된 파일 이름 : <%=filename%><br>
    제목 : <%=content%><br>
    사이즈 : <%=file1.length()%>Byte<br>
    ContentType : <%=up.getContentType("fileName")%><br>
    <a href="List.jsp">게시판 보기</a>
    
<%
   }else {
%>
    
    <%=myBoard.getName()%>
    <%=myBoard.getTitle()%>
    <%=myBoard.getFileName()%>
    <h2>디비 실패!</h2>
<%
   }
        }
    }catch(IOException e){
        out.print("<h2>IOException이 발생했습니다 </h2> <br> <pre>" + e.getMessage() + "</pre>");
    }
   
%>

</body>
</html>