<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head><title>Share your SOUND</title>
    
<jsp:useBean id="myBoard" class="sample.board.model.Board" />

<%
	String mem_id = (String)session.getAttribute("idKey");
   String mem_name = (String)session.getAttribute("name");
	request.setCharacterEncoding("UTF-8");
%>

<link href="style.css" rel="stylesheet" type="text/css">
<script>
function inputCheck(){
	if(document.post.subject.value==""){
		alert("제목을 입력해 주세요.");
		document.post.subject.focus();
		return;
	}

	if(document.post.content.value==""){
		alert("내용을 입력해 주세요.");
		document.post.content.focus();
		return;
	}
	document.post.submit();
}  
</script>
</head>

<body>
<center><br>
    
<h2><font color="#000000">Share you favorite SOUND!</font></h2>
<table align=center border=0 width=80%>
 <tr>
 </tr>
</table>   
<br><br>

<%
	if(!mem_id.equals("null")) {
%>
<form name="post" action="upload.jsp" enctype="multipart/form-data" method="post">

    <table border=1 BORDERCOLOR=#dddddd width=80% cellpadding=2 cellspacing=0>
        <tr><td><center>
   <div style="width:100%"> 
       <div style="height:30px; width:100%; background-color:#D0D0D0;"></div>
       <div style="height:30px; width:100%;"></div>
       <input type="file" name="fileName"><br><br>
       
       Title<br><input type="text" name="subject" style="width:50%;"><br><br>
       Desription<br>
        <textarea name="content" style="resize:none;" cols=100% rows=10%></textarea><br><br>
       <input type="submit" value="등록" class="btn">
       
       <div style="height:30px; width:100%;"></div>
       
    </div>
            </center>
            </td>
            </tr>
    </table>

</center>
    
</form>

<%   
   } else {%>

<script>
	alert("로그인 하세요");
	location="../member/Login.jsp";
</script>
<%}%>


</body>
</html>
