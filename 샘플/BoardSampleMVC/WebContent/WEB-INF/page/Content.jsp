<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="Header.jsp" %>

<div class="container">
	<div class="starter-template">
	
		<h1> Content </h1>
		
		<table class="table table-bordered">
			<tr>
				<th>제 목</th>
				<td>${board.title}</td>
			</tr>
			<tr>
				<th>이 름</th>
				<td>${board.writer}</td>
			</tr>
			<tr>
				<th>첨부 파일</th>
				<td><a href="<c:url value="Download?id=${board.id}"/>" class="navbar-link">${board.filename}</a></td>
			</tr>
			<tr>
				<th>날 짜</th>
				<td>${board.date}</td>
			</tr>
			<tr>
				<td colspan="2">${board.content}</td>
			</tr>
		</table>
		<p>
			<button type="button" class="btn btn-primary" onclick="goUrl('<c:url value="Talk"/>');">목록으로</button>
			<button type="button" class="btn btn-success" onclick="goUrl('<c:url value="Modify?id=${board.id}"/>');">글 수정</button>
		 	<button class="btn btn-large btn-danger" data-toggle="confirmation" data-btn-ok-label="Continue" 
		 		data-btn-ok-icon="glyphicon glyphicon-share-alt" data-btn-ok-class="btn-success" data-btn-cancel-label="Stoooop!" 
		 		data-btn-cancel-icon="glyphicon glyphicon-ban-circle" data-btn-cancel-class="btn-danger">글 삭제</button>	
		</p>
		
	</div>
</div><!-- /.container -->

<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/bootstrap-confirmation.js"></script>

<script>
	function goUrl(url) {
		location.href = url;
	}

	// 글 삭제 버튼 클릭 시 뜨는 창
	$('[data-toggle=confirmation]').confirmation({
		onConfirm: function() {
			location.href = "Delete?id=${board.id}";
		}
	});
</script>

<%@ include file="Footer.jsp" %>