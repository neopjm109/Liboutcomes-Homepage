<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<title>LIBOUTCOMES</title>
	<meta charset="utf-8"/>
	<meta name="viewport" content=width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap-theme.min.css">
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/public.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/footer.css">
	
	<!--
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/index.css">
	-->
</head>

<body>

<div id="wrapper">

<div class="header">
	<nav class="navbar navbar-default navbar-fixed-top navbar-inverse">
		<div class="container">
			<!-- 메뉴 로고 및 모바일 버전 메뉴 -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand white" href="/LibOutcomesWeb">LibOutcomes</a>
			</div>
			
			<!-- 메뉴 리스트 -->
			<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li>
						<a href="Project">프로젝트 소개</a>
					</li>
					<li>
						<a href="Library">도서관 DB</a>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">데이터 사이언스</a>
						
						<ul class="dropdown-menu" role="menu">
							<li>
								<a href="DataScienceManual">메뉴얼</a>
							</li>
							<li>
								<a href="DataScienceReference">적용사례</a>
							</li>
						</ul>
					</li>
				</ul>
				
				<div class="nav navbar-right">
					<a href="Login" class="btn navbar-btn btn-primary">로그인</a>
				</div>
				
			</div>
		</div>
	</nav>
</div>
