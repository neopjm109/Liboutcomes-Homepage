<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="Header.jsp" %>

<div class="container">
	<div class="starter-template">
	
		<h1> Talk </h1>
		
		<table class="table table-condensed table table-hover">
			<tr>
				<td>번 호</td>
				<td>제 목</td>
				<td>이 름</td>
				<td>날 짜</td>
			</tr>
			
			<!-- 
			게시글 for문 돌리기 
			따로 request.getAttribute("boardList")를 하지 않아도 jstl이 알아서 처리해줌
			-->
			<c:forEach items="${boardList}" var="board">
				<tr>
					<td>${board.id}</td>
					<td><a href="<c:url value="Content?id=${board.id}"/>" class="navbar-link">${board.title}</a></td>
					<td>${board.writer}</td>
					<td>${board.date}</td>
				</tr>
			</c:forEach>
		</table>
		
		<button type="button" class="btn btn-info" onclick="goUrl('<c:url value="Write"/>');">글 작성</button>
		
	</div>
</div><!-- /.container -->

<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>

<script>
	function goUrl(url) {
		location.href = url;
	}
</script>

<%@ include file="Footer.jsp" %>