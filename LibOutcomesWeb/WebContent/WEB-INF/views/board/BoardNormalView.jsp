<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- css -->
<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="assets/css/common.css" />
<!-- js -->
<script type="text/javascript" src="assets/js/plugins/jquery.min.js"></script>
<script type="text/javascript" src="assets/js/plugins/bootstrap.min.js"></script>
<script type="text/javascript" src="assets/js/common.js"></script>
<script type="text/javascript" src="assets/js/board/boardNormalView.js"></script>

<title>LIBOUTCOMES</title>
</head>
<body>
	<!-- hedaer -->
	<%@ include file="../Header.jsp" %>
	<!-- /.header -->
	
	<!-- contents -->
	<section class="container mt80 mb80">
		
	    <!-- 제목  -->
	    <article class="row">
	        <div class="col-lg-12 col-center">
	            <h1 class="page-header">${board.title}
	                <small>by ${board.writerName}</small>
	            </h1>
	        </div>
	    </article>
	    <!-- /.제목 -->
	    
	    <!-- 내용 -->
	    <article class="row">
	        <div class="col-lg-12 col-center">
				
				<!-- 글 정보 -->
	            <p><i class="fa fa-clock-o"></i> Posted on ${board.date}</p>
	            <hr>
	            <p class="lead">${board.contents}</p>
	            <hr>
	            <div>
	            	<a id="modifyBtn" class="btn btn-primary" name="${board.num}">글 수정</a>
	            	<a id="deleteBtn" class="btn btn-primary" name="${board.num}">글 삭제</a>
	            </div>
	            <!-- /.글 정보 --> 
	
	            <!-- 댓글 작성 -->
	            <hr>
	            <div class="well">
	                <h4>댓글 남기기:</h4>
	                <form action="<c:url value="BoardNormalComment?num=${board.num}"/>" method="post">
	                    <div class="form-group">
	                        <textarea class="form-control" name="comment" rows="3"></textarea>
	                    </div>
	                    <button type="submit" class="btn btn-primary">등록</button>
	                </form>
	            </div>
	            <!-- /.댓글 작성 -->
	
				<!-- 댓글 -->
	            <hr>
	            <c:forEach items="${commentList}" var="row">	
		            <div class="media">
		                <div class="media-body">
		                    <h4 class="media-heading">${row.writerName}
		                        <small>${row.date}</small>
		                    </h4>
		                    ${row.comment}
		                </div>
		            </div>
	            </c:forEach>
	            <!-- /.댓글 -->
	            
	        </div>
	    </article>
	    <!-- /.내용 -->
	    
	</section>
	<!-- /.contents -->

	<!-- footer -->
	<%@ include file="../Footer.jsp" %>
	<!-- /.footer -->
</body>
</html>