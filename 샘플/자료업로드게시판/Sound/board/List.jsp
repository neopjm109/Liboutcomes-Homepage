<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="SoundBoard.*, java.util.*"%>
<jsp:useBean id="sb" class="SoundBoard.BoardMgr" />

<%
	String mem_id = (String)session.getAttribute("idKey");
   String mem_name = (String)session.getAttribute("name");
	request.setCharacterEncoding("UTF-8");
%>

<%
   int nowPage = 0; 
   int nowBlock = 0; //한 블럭 안에 페이지 10개 //페이지 안에 글 10개 
   int totalRecord = 0; 
   int numPerPage = 10;      
   int totalPage = 0;       
   int totalBlock = 0;      
   int pagePerBlock =0; //블러에서 시작되는 페이지 번호    
   int beginPerPage =0; //페이지에서 시작되는 글 번호....

   String keyField ="" ;
   String keyWord ="" ; 

   Vector boardList;
%>

<% 
	if(request.getParameter("keyWord") !=null){
			keyWord =request.getParameter("keyWord");
			keyField =request.getParameter("keyField");
		}
		
	if(request.getParameter("reload") !=null){ //새로고침
		if(request.getParameter("reload").equals("true")){
			keyWord ="";
			keyField ="";
		}
	}

	boardList= sb.getBoardList(keyField,keyWord); 
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
<head><title>Share your SOUND</title>
<link href="style.css" rel="stylesheet" type="text/css">

<script>
function check() {
	if (document.search.keyWord.value == "") {
		 alert("검색어를 입력하세요.");
		 document.search.keyWord.focus();
		 return;
	}
	document.search.submit();
 }

function list(){
	document.list.action="List.jsp";
 	document.list.submit();
 }

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
<h2><font color="#000000">Share you favorite SOUND!</font></h2><br>
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
등록된 글이 없습니다.
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
	for (int i = beginPerPage;i < (beginPerPage+numPerPage); i++) { 
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
      <a href="Post.jsp" >[Upload you SOUND]</a>
      <a href="/Sound/member/Logout.jsp">[LOGOUT]</a>
      <a href="/Sound/board/MyList.jsp">[My PlayList]</a>
  </td>
 </tr>
</table><br>
<form action="List.jsp" name="search" method="post">
<table border=0 width=527 align=center cellpadding=4 cellspacing=0 >
 <tr>
  <td align=center valign=bottom>
   <select name="keyField" size=1 >
    <option value="name"> 작성자
    <option value="subject"> 제목
    <option value="content"> 내용
   </select>
   <input type="text" size=16 name="keyWord"  value="">
   <input type="button"  value="찾기" onClick="check()" class="btn">
   <input type="hidden" name="page" value="0">
  </td>
 </tr>
</table>
</form>
    
    
<form name="read" method="post">
    <input type="hidden" name="num" value="">
    <input type="hidden" name="page" value="<%=nowPage%>">
    <input type="hidden" name="keyField" value="<%=keyField%>">
    <input type="hidden" name="keyWord" value="<%=keyWord%>">
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
