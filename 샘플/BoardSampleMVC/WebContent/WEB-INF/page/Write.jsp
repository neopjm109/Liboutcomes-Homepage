<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="Header.jsp" %>

<div class="container">
	<div class="starter-template">
		<h1> Write </h1>
	</div>
	
	<form action="<c:url value="Write"/>" method="post" enctype="multipart/form-data">
		<div class="form-group">
			<label for="title">제 목</label>
			<input type="text" class="form-control" name="title" placeholder="글 제목을 입력하세요.">
		</div>
		<div class="form-group">
			<label for="writer">이 름</label>
			<input type="text" class="form-control" name="writer" placeholder="이름을 입력하세요.">
		</div>
		<div class="form-group">
			<label for="filename">파일 업로드</label>
			<input type="file" name="filename">
			<p class="help-block">글에 첨부하고 싶은 파일을 업로드하세요.</p>
		</div>
		<div class="form-group">
			<label for="content">내 용</label>
			<textarea class="form-control" name="content" rows="5" placeholder="글 내용을 입력하세요."></textarea>
		</div>
		<div class="starter-template">
			<button type="button" class="btn btn-primary" onclick="goUrl('<c:url value="Talk"/>');">취소</button>
			<button type="submit" class="btn btn-success">글 등록</button>		
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