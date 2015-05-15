<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="SoundBoard.*, java.util.*"%>
<jsp:useBean id="sb" class="SoundBoard.BoardMgr" />

<%
   String mem_id = (String)session.getAttribute("idKey");
   String mem_name = (String)session.getAttribute("name");
   request.setCharacterEncoding("UTF-8");
   
   int nowPage = 0; 
   int nowBlock = 0; //한 블럭 안에 페이지 10개 //페이지 안에 글 10개 
   int totalRecord = 0; 
   int numPerPage = 10;      
   int totalPage = 0;       
   int totalBlock = 0;      
   int pagePerBlock =0; //블러에서 시작되는 페이지 번호    
   int beginPerPage =0; //페이지에서 시작되는 글 번호....

   Vector boardList;

	boardList= sb.getMyList(mem_id); 
	totalRecord = boardList.size(); 
	numPerPage = 5; 
   
	if (request.getParameter("page") != null) { 
		nowPage= Integer.parseInt(request.getParameter("page"));
	} 
	beginPerPage = nowPage * numPerPage;
	totalPage =(int)Math.ceil((double)totalRecord / numPerPage);
	pagePerBlock = 10; 
	if (request.getParameter("nowBlock") != null) {
		nowBlock = Integer.parseInt(request.getParameter("nowBlock"));
	}
	totalBlock =(int)Math.ceil((double)totalPage / pagePerBlock);
%>


<html>
<head><title>My PlayList</title>
<link href="style.css" rel="stylesheet" type="text/css">

<script>
function read(value1){
	document.read.action="Read.jsp";
	document.read.num.value=value1;
	document.read.submit();   
}
</script>
</head>


<body>

<%
	if(mem_id != null) {
%>


<center><br>
<h2>My PlayList</h2><br>
<table align=center border=0 width=80%>
 <tr>
  <td align=left >Total : <%=totalRecord%> (<%=nowPage+1%>/<%=totalPage%>Pages</font>)</td>
 </tr>
</table>


<table align=center width="80%" border=0 cellspacing=0 cellpadding=3>
 <tr>
  <td align=center colspan=2 >

<% 
if (boardList.isEmpty()) { 
%> 
아직 '좋아요'로 추가한 글이 없습니다.
<%  }
else {
%>

   <table border=0 width=100% cellpadding=2 cellspacing=0>
    <tr align=center bgcolor=#D0D0D0>
	 <td width="20%">제 목</td>
        <td width="30%">SOUND</td>
        <td width="20%"></td>
	 <td width="10%">작성자</td>
	 <td width="20%">날 짜</td>
    </tr>
<% 
	for (int i = beginPerPage; i < (beginPerPage+numPerPage); i++) { 
		if (i==totalRecord) break;

		BoardBean tempBoard = (BoardBean)boardList.elementAt(i);
		String name =tempBoard.getName();
		String subject = tempBoard.getSubject();
		String regdate = tempBoard.getRegdate();
		int count =tempBoard.getCount();
       int boardNum = tempBoard.getBoardNum();
       String filename = tempBoard.getFileName();
%>
    <tr> 

     <td align=center>
         <a href="javascript:read('<%= boardNum %>')"><%= subject %></a>
     </td>
         
    <td align=center>
        <audio controls>
            <source src="file/<%=filename%>" type="audio/mpeg">
        </audio><br>
       </td>
    <td align=center>
        <a href="javascript:read('<%= boardNum %>')"><%= filename %></a>
    </td>
    <td align=center><%=name%></td>
     <td align=center><%=regdate%></td>
    </tr>
<% 
   } 
%>
   </table>
<% 
} 
%> 

  </td>
 </tr>
 <tr>
  <td><br><br></td>
 </tr>
 <tr>
  <td align="left" >
<% if(totalRecord !=0){ %> 
<% if (nowBlock > 0) {%> 
<a href="List.jsp?nowBlock=<%=nowBlock - 1 %>&page=<%=((nowBlock - 1) * pagePerBlock) %>">
이전 <%=pagePerBlock %> 개</a>
<%}%> 

<%
for (int i = 0; i < pagePerBlock; i++) { %>
<a href="List.jsp?nowBlock=<%=nowBlock %>&page=<%=(nowBlock*pagePerBlock) + i %>">
[<%=(nowBlock * pagePerBlock) + i + 1 %></a>]

<% if ((nowBlock * pagePerBlock) + i + 1 == totalPage)  break; %>
<%} %>


<% if (totalBlock > nowBlock + 1) {%> 
<a href="List.jsp?nowBlock=<%=nowBlock + 1 %>&page=<%=((nowBlock + 1) * pagePerBlock) %>"> 
다음 <%=pagePerBlock %>개</a>
<%}%>

<%} %>
  </td> 
  <td align=right> 
      [<b><%=mem_name%></b>님]
      <a href="/Sound/member/Logout.jsp">[LOGOUT]</a>
      <a href="/Sound/board/List.jsp">[LIST]</a>
  </td>
 </tr>
</table><br>

    
    
<form name="read" method="post">
    <input type="hidden" name="num" value="">
    <input type="hidden" name="page" value="<%=nowPage%>">
 </form>
<form name="list" method="post">
 <input type="hidden" name="reload" value="true">
 <input type="hidden" name="page" value="0">
 <input type="hidden" name="nowBlock" value="0"> 
</form>
</center>

<%} else {%>

<script>
	alert("로그인이 필요합니다.");
	location="/Sound/member/Login.jsp";
</script>
<%}%>


</body>
</html>
