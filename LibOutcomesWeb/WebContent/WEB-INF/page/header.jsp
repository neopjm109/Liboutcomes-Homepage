<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<title>LIBOUTCOMES</title>
	<meta charset="utf-8"/>
	<meta name="viewport" content=width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap-theme.min.css">
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/public.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header.css">
	
	<!--
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/index.css">
	-->
</head>

<body>

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
				<a class="navbar-brand white" href="#">LibOutcomes</a>
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
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" rolw="button" aria-expanded="false">데이터 사이언스</a>
						
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
					<button class="btn btn-default navbar-btn">로그인</button>
				</div>
			</div>
		</div>
	</nav>
</div>

	<div class="col-md-8">
		<div>
			<div>
				<span>
					<a href="/LibOutcomesWeb">LIBOUTCOMES</a>
				</span>
			</div>
			<div>
				<div>
					<ul>
						<li>
							<span>
								<a href="Project">프로젝트 소개</a>
							</span>
						</li><li>
							<span>
								<a href="Library">도서관 DB</a>
							</span>
						</li><li class="popup_menu_parent">
							<span>
								<a href="DataScience">데이터 사이언스</a>
							</span>

							<div class="popup_menu">
								<ul>
									<li>
										<a href="DataScienceManual">메뉴얼</a>
									</li><li>
										<a href="DataScienceReference">적용사례</a>
									</li>
								</ul>
							</div>
						</li><li style="position:relative;">
						<%
							if (null == (String) session.getAttribute("liboutcomes_login")) {
						%>
							<button id="menu_login" class="btn btn-blue">로그인</button>
						<%
							} else {
						%>
							<button id="menu_logout" class="btn btn-red">로그아웃</button>
						<%
							}
						%>
							<div id="login_dialog">
								<div class="form-container">
									<input class="form-default" type="text" id="login_email" placeholder="E-MAIL"/>
									<input class="form-default" type="password" id="login_password" placeholder="비밀번호"/>
									<button id="login_button" class="btn btn-blue" style="width:100%;">로그인</button>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
