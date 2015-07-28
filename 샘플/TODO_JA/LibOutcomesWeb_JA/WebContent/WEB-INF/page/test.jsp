<%@page import="com.hansung.liboutcomes.model.TestModel"%>
<%@page import="com.hansung.liboutcomes.model.TestModelService"%>
<%@ page import="com.hansung.liboutcomes.utils.PdfExportByPhantom"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/bootstrap/bootstrap.min.css">
<link
	href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/bootstrap/summernote/summernote.css">
<title>Insert title here</title>
</head>
<body>

	<%
		PdfExportByPhantom.Convert();
		TestModel model = (TestModel) request.getAttribute("model");
	%>
	<div style="width:1350px; margin:0 auto;">
		<div id="summernote"></div>
	</div>
	<button id="confirm">확인</button>
	Return
	<br>
	<br>

	<a href="/LibOutcomesWeb/pdfDownload">PDF변환 결과 다운로드</a>

	<script
		src="${pageContext.request.contextPath}/assets/js/jquery-1.11.2.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/summernote.js"></script>
	<script>
		$(document).ready(function() {
			$('#summernote').summernote({
				height: 500
			});
			$("#summernote").code('<%=model.getHtml()%>');
			$("#confirm").on('click', function() {
				
				$.post("updateTestModel", {
					"id": "1",
					"html" : $("#summernote").code()
				}, function(success) {
					alert(success);
				});
			});
		});
	</script>
</body>
</html>