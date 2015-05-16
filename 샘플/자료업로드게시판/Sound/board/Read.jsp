<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="SoundBoard.*, SoundComment.*, java.util.*"%>

<jsp:useBean id="sb" class="SoundBoard.BoardMgr"/>   
<jsp:useBean id="utilMgr" class="SoundBoard.UtilMgr"/>
<jsp:useBean id="sc" class="SoundComment.CommentMgr"/>
    
<%
   int num = Integer.parseInt(request.getParameter("num")); //게시판 번호
   int nowPage = Integer.parseInt(request.getParameter("page"));
   String keyField = request.getParameter("keyField"); 
   String keyWord = request.getParameter("keyWord");

   BoardBean tempBoard = sb.getBoard(num);
   String name = tempBoard.getName();
   String subject = tempBoard.getSubject();
   String regdate = tempBoard.getRegdate();
   String content = tempBoard.getContent();
   int count= tempBoard.getCount();
   String filename = tempBoard.getFileName();
   int mylike = tempBoard.getMyLike();
   
   Vector commentList;
   commentList = sc.getCommentList(num);
   int total = commentList.size();
%>

<html>
<head><title>Share your SOUND</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script>
    
function list1(){
	document.list.action="List.jsp";
 	document.list.submit();
 } 
    
function deleteCheck(v1, v2){
    if(confirm("정말 삭제하시겠습니까?")) {
        document.list.action="Delete.jsp";
        document.list.num.value = v1;
        document.list.page.value = v2;
        document.list.submit();
    } else {
        
    }
 }
    
function plusLike() {
	document.list.action="Like.jsp";
 	document.list.submit();
}
    
</script>
</head>

<body>
<br><br>
    
    <form name="list" method="post">
<table align=center width=60% border=0 cellspacing=3 cellpadding=0>

 <tr>
  <td colspan=2>
   <table border=1 BORDERCOLOR=#dddddd cellpadding=3 cellspacing=0 width=100%> 
    <tr> 
	 <td align=center bgcolor=#dddddd width=10%> 이 름 </td>
	 <td width=40%><%=name%></td>
	 <td align=center bgcolor=#dddddd width=10%> 등록날짜 </td>
	 <td colspan=3 width=40%><%=regdate%></td>
	</tr>

    <tr> 
     <td align=center bgcolor=#dddddd width=10%> 제 목</td>
    <td width=40%><%=subject%></td>
    <td align=center bgcolor=#dddddd width=10%> 좋아요</td>
        <td width=20%>
            <%=mylike%> &nbsp;   
            <input type="button" name="likeBtn" value="좋아요" onclick="plusLike()" class="btn">
        </td>
        <td align=center bgcolor=#dddddd width=10%> 조회수</td>
        <td><%=count%></td>
   </tr>
   <tr> 
    <td colspan=6><br><br> <center>
        <audio controls autoplay>
           <source src="file/<%=filename%>"
                   type="audio/mpeg">
       </audio><br></center>
        <br><font size="2"><%=utilMgr.getContent(content)%></font><br><br><br>
        
    </td>
   </tr>

   </table>
      
  </td>
 </tr>
    
    <td><td>
 <tr>
  <td align=right colspan=2> 
      <input type="button" value="목록" onclick="list1()" class="btn">
      <input type="button" value="삭제" onclick="deleteCheck('<%=num%>','<%=nowPage%>')" class="btn">
      <input type="hidden" name="num" value="<%=num%>">
      <input type="hidden" name="page" value="<%=nowPage%>">
      <hr size=1>
  </td>
 </tr>
    </td></td>
</table>
        </form>

    
    <form name=comment action="Comment.jsp" method="post">        
    <table align=center width=60% border=0 cellpadding=3 cellspacing=0> 
        <tr><td>
            <textarea name="comment" style="resize:none;" cols=100%></textarea> 
            </td>
            <td>
            <input type="hidden" name="num" value="<%=num%>">
            <input type="hidden" name="page" value="<%=nowPage%>">
            <input type="submit" name="comSub" value="댓글 등록" class="btn">
            </td>
        </tr>    
    </table>
    </form>
    
    
    <%
        for(int i=0; i<total; i++) {
            CommentBean temp = (CommentBean)commentList.elementAt(i);
            String cname = temp.getName();
            String ccon = temp.getContent();
            String cdate = temp.getRegdate();
            int cnum = temp.getCommentNum();
    %>
    
    <form name=commentDel action="CommentDelete.jsp" method="post">
    <table align=center width=60%>    
        
    <tr> 
        <td width=15%><%=cname%></td>
        <td width=60%><%=ccon%></td>
        <td width=15%><%=cdate%></td>
        <td width=10%>
            <input type="hidden" name="cnum" value="<%=cnum%>">
            <input type="hidden" name="num" value="<%=num%>">
            <input type="hidden" name="page" value="<%=nowPage%>">
            <input type="submit" name="cnumbtn" value="삭제" class="btn">

        </td>
	</tr>
    
    </table>
    </form>
    <%}%>


</body>
</html>