<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="Header.jsp" %>

<div class="container">
	<div class="starter-template">
		<h1> Modify </h1>
	</div>
	
	<form action="<c:url value="Modify?id=${board.id}"/>" method="post">
		<div class="form-group">
			<label for="title">제 목</label>
			<input type="text" class="form-control" name="title" value="${board.title}">
		</div>
		<div class="form-group">
			<label for="writer">이 름</label>
			<input type="text" class="form-control" name="writer" value="${board.writer}">
		</div>
		<div class="form-group">
			<label for="filename">파일 업로드</label>
			<input type="file" name="filename" disabled="disabled">
			<p class="help-block">첨부 파일은 수정할 수 없습니다.</p>
		</div>
		<div class="form-group">
			<label for="content">내 용</label>
			<textarea class="form-control" name="content" rows="5">${board.content}</textarea>
		</div>
		<div class="starter-template">
			<button type="button" class="btn btn-primary" onclick="goUrl('<c:url value="Talk"/>');">취소</button>
			<button type="submit" class="btn btn-success">수정하기</button>		
		</div>
	</form>
		
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