<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- css -->
<link rel="stylesheet" type="text/css" href="assets/font-awesome/css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="assets/css/summernote.css" />
<link rel="stylesheet" type="text/css" href="assets/css/common.css" />
<!-- js -->
<script type="text/javascript" src="assets/js/plugins/jquery.min.js"></script>
<script type="text/javascript" src="assets/js/plugins/bootstrap.min.js"></script>
<script type="text/javascript" src="assets/js/plugins/summernote.min.js"></script>
<script type="text/javascript" src="assets/js/plugins/summernote-ko-KR.js"></script>
<script type="text/javascript" src="assets/js/common.js"></script>
<script type="text/javascript" src="assets/js/board/boardNormalWM.js"></script>

<title>LIBOUTCOMES</title>
</head>
<body>
	<!-- hedaer -->
	<%@ include file="../Header.jsp"%>
	<!-- /.header -->

	<!-- contents -->
	<section class="container mt80 mb80">

		<!-- 제목 --> 
		<article class="row">
			<div class="col-lg-12 col-center">
				<h1 class="page-header">
					글 작성 <small>게시판</small>
				</h1>
			</div>
		</article>
		<!-- /.제목 --> 
		
		<!-- 내용 -->
		<article class="row">
			<div class="col-lg-12 col-center">
		
				<form action="<c:url value="BoardNormalWrite"/>" method="post">
		
					<div class="form-group">
						<label>카테고리:</label> <select class="form-control" name="category">
							<option value="mining">데이터 마이닝</option>
							<option value="library">도서관 DB</option>
							<option value="report">논문 · 보고서</option>
							<option value="menual">메뉴얼</option>
							<option value="etc">기타 문의</option>
						</select>
					</div>
					<div class="form-group">
						<label>글 제목:</label> <input type="text" class="form-control" name="title">
						<p class="help-block"></p>
					</div>
					<div class="form-group">
						<label>작성자 이름:</label> <input type="text" class="form-control" name="writerName">
						<p class="help-block"></p>
					</div>
					<div class="form-group">
						<textarea class="summernote" name="contents"></textarea>
					</div>
		
					<a id='cancleBtn' class="btn btn-primary">취소</a>
					<button type="submit" class="btn btn-primary">글 등록</button>
		
				</form>
		
			</div>
		</article>
		<!-- /.내용 -->

	</section>
	<!-- /.contents -->

	<!-- footer -->
	<%@ include file="../Footer.jsp"%>
	<!-- /.footer -->
</body>
</html>