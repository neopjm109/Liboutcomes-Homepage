<%@page import="com.hansung.liboutcomes.model.TestModel"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);

html, body {
	height:100%;
	margin:0px;
	font-size:20px;
	font-family: 'Nanum Gothic', sans-serif;
}

.pdf-page {
	border:1px solid black;
	height:1350px;
	overflow-y:hidden;
	
	padding:0px;
	margin:50px;
}

.pdf-page-end {
	height:10px;
}
</style>
</head>
<body>

<%
	TestModel model = (TestModel) request.getAttribute("model");
%>

<div style="margin:0 auto;">

<%=model.getHtml()%>

</div>

<!-- 
<div class="pdf-page">
	<p style="font-size:1.9em;">&nbsp;</p>
	<p style="font-size:1.9em;">&nbsp;</p>
	<p align='center' style="font-size:2.2em;">공공도서관을 위한 지역사회분석 매뉴얼</p>
	<p align='center' style="font-size:1.9em;">도서관 내부데이터를 이용하여</p>
	<p style="font-size:1.8em;">&nbsp;</p>
	<p style="font-size:1.8em;">&nbsp;</p>
	<p style="font-size:1.8em;">&nbsp;</p>
	<p style="font-size:1.8em;">&nbsp;</p>
	<p align='center' style="font-size:1.4em;">박   성   재</p>
	<p align='center' style="font-size:1.4em;">한성대학교 지식정보학부</p>
	<p style="font-size:1.8em;">&nbsp;</p>
	<p style="font-size:1.8em;">&nbsp;</p>
	<p style="font-size:1.8em;">&nbsp;</p>
	<p style="font-size:1.8em;">&nbsp;</p>
	<p align='center' style="font-size:1.8em;">인천광역시도서관협회</p>
	<p style="font-size:1.8em;">&nbsp;</p>
</div>
<div class="pdf-page-end"></div>

<div class="pdf-page">
	<p align='center' style="font-size:2.4em;">제 출 문
	<p style="font-size:1.4em;">&nbsp;</p>
	<p style="font-size:1.4em;">&nbsp;</p>
	<p style="font-size:1.4em;">&nbsp;</p>
	<p style="font-size:1.6em;">인천광역시도서관협회장 귀하</p>
	<p style="font-size:1.2em;">&nbsp;</p>
	<p style="font-size:1.5em;">&nbsp;이 매뉴얼을 “공공도서관을 위한 지역사회분석 매뉴얼” 과제의 보고서로 제출합니다.</p>
	<p style="font-size:1.4em;">&nbsp;</p>
	<p style="font-size:1.4em;">&nbsp;</p>
	<p align="right" style="font-size:1.5em;">2013. 12. 31</p>
	<p style="font-size:1.4em;">&nbsp;</p>
	<p style="font-size:1.4em;">&nbsp;</p>
	<p style="font-size:1.4em;">&nbsp;</p>
	<p style="font-size:1.4em;">&nbsp;</p>
	<p style="font-size:1.4em;">&nbsp;</p>
	<p style="font-size:1.4em;">&nbsp;</p>
    <p align="right" style="font-size:1.5em;">
    연구책임자 :&nbsp;&nbsp;&nbsp;박성재 (한성대학교)<br>
	연&nbsp;&nbsp;&nbsp;구&nbsp;&nbsp;&nbsp;원 :&nbsp;&nbsp;&nbsp;이용구 (계명대학교)
    </p>
					
</div>
 -->
</body>
</html>