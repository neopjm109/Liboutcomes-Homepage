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
<script type="text/javascript" src="assets/js/plugins/jquery.isotope.js"></script>
<script type="text/javascript" src="assets/js/plugins/bootstrap.min.js"></script>
<script type="text/javascript" src="assets/js/common.js"></script>
<script type="text/javascript" src="assets/js/board/boardNormal.js"></script>

<title>LIBOUTCOMES</title>
</head>
<body>
	<!-- hedaer -->
	<%@ include file="../Header.jsp" %>
	<!-- /.header -->
	
	<!-- contents -->
	<section id="lib-board">
	    <div class="container text-center">
	        
	        <!-- 제목 -->
	        <article class="article-title center mb40">
	            <h2><strong>일반</strong> 게시판</h2>
	            <div class="line">
	                <hr>
	            </div>
	        </article>
	        <!-- /.제목 -->
	        
	        <!-- 카테고리 -->
	        <article class="categories">
	            <hr>
	            <ul class="cat">
	                <li class="pull-left"><h4>카테고리:</h4></li>
	                <li class="pull-right">
	                    <ol class="type">
	                        <li><a href="#" data-filter="*" class="active">All</a></li>
	                        <li><a href="#" data-filter=".mining">데이터 마이닝</a></li>
	                        <li><a href="#" data-filter=".library">도서관 DB</a></li>
	                        <li><a href="#" data-filter=".report">논문 · 보고서</a></li>
	                        <li><a href="#" data-filter=".manual">메뉴얼</a></li>
	                        <li><a href="#" data-filter=".etc">기타 문의</a></li>
	                    </ol>
	                </li>
	            </ul>
	            <div class="clearfix"></div>
	            <hr>
	        </article>
	        <!-- /.카테고리 -->
	        
	        <!-- 게시글 -->
	        <article id="lightbox" class="row">
	            <c:forEach items="${boardList}" var="row" >
	        
	                <div class="col-md-4 col-sm-6 ${row.category}">     
	                    <div class="panel panel-default lightbox-div">
	                        <div class="panel-heading">
	                            <a href="#" class="pull-right">${row.date}
	                                <br>by ${row.writerName}</a>
	                            <h4><a href="javascript:goUrl('BoardNormalView?num=${row.num}')" style="color:#000;">${row.title}</a></h4>
	                        </div>
	                        <div class="panel-body" style="height: 200px; overflow: hidden;">
	                            <div class="clearfix"></div>
	                            <hr>
	                            <div class="clearfix"></div>
	                            <p>${row.contents}</p>
	                        </div>
	                        <div class="panel-body">
	                            <a href="javascript:goUrl('BoardNormalView?num=${row.num}')">더 보기...</a>
	                        </div>
	                    </div>              
	                </div>
	                
	            </c:forEach>    
	        </article>
	        <!-- /.게시글 -->
	        
	        <a id='writeBtn' class="btn btn-primary">글 쓰기</a>
	        
	    </div>
	</section>
	<!-- /.contents -->

	<!-- footer -->
	<%@ include file="../Footer.jsp" %>
	<!-- /.footer -->
</body>
</html>