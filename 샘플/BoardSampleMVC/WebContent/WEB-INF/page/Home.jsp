<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="Header.jsp" %>

<div class="container">
	<div class="starter-template">
	
		<h1>Hansung Engineering Community</h1>
		<p class="lead">Use this document as a way to quickly start any new project.<br> All you get is this text and a mostly barebones HTML document.</p>
	
		<!-- 이미지 슬라이드 -->
		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
				<li data-target="#carousel-example-generic" data-slide-to="3"></li>
				<li data-target="#carousel-example-generic" data-slide-to="4"></li>
				<li data-target="#carousel-example-generic" data-slide-to="5"></li>
			</ol>
		
			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="assets/img/home1.png" alt="home1">
			    </div>
			    <div class="item">
					<img src="assets/img/home2.png" alt="home2">
			    </div>
			    <div class="item">
					<img src="assets/img/home3.png" alt="home3">
			    </div>
			    <div class="item">
					<img src="assets/img/home4.png" alt="home4">
			    </div>
			    <div class="item">
					<img src="assets/img/home5.png" alt="home5">
			    </div>
			    <div class="item">
					<img src="assets/img/home6.png" alt="home6">
			    </div>
			</div>
		
			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	
	</div>
</div><!-- /.container -->

<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>

<%@ include file="Footer.jsp" %>