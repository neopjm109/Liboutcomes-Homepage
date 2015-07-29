<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	String loginId = (String) session.getAttribute("liboutcomes_login");

	pageContext.setAttribute("loginId", loginId);
%>

<!DOCTYPE html>
<html lang="ko">

<head>

    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="IE=9"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!-- 웹 페이지 제목 -->
    <title>LIBOUTCOMES</title>

    <!-- 부트스트랩 -->
    <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/assets/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- 슬라이더 -->
    <link href="${pageContext.request.contextPath}/assets/css/owl.carousel.css" rel="stylesheet" media="screen">
    <link href="${pageContext.request.contextPath}/assets/css/owl.theme.css" rel="stylesheet" media="screen">

    <!-- 스타일 -->
    <link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/assets/css/responsive.css" rel="stylesheet" type="text/css">
    
    <!-- Summernote -->
    <link href="${pageContext.request.contextPath}/assets/css/summernote.css" rel="stylesheet">
 
</head>
	
<body>

    <!-- Navigation -->
	<nav id="tf-menu" class="navbar navbar-default navbar-fixed-top">
		<div class="container">
		
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
		            <span class="sr-only">Toggle navigation</span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/LibOutcomesWeb">LibOutcomes</a>
			</div>

	        <!-- Collect the nav links, forms, and other content for toggling -->
	        <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li>
						<a href="Project">프로젝트 소개</a>
                    </li>
                    <li>
                        <a href="Library">도서관 DB</a>
                    </li>
					<li class="dropdown">
                        <a href="#" class="page-scroll" data-toggle="dropdown">데이터 사이언스 <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="DataScienceManual">메뉴얼</a>
                            </li>
                            <li>
                                <a href="DataScienceReference">적용사례</a>
                            </li>
                        </ul>
					</li>
                    <li>
                        <a href="Board">게시판</a>
                    </li>
				</ul>

				<div class="nav navbar-right" style="padding-right:15px;">
					<!-- 세션 체크로 변경 -->
                    <c:if test = "${loginId eq null || loginId == ''}">
                        <a href="Login" class="btn navbar-btn btn-primary">로그인</a>
                    </c:if>
                    <c:if test = "${loginId ne null}">
                        <a href="Logout" class="btn navbar-btn btn-danger">로그아웃</a>
                    </c:if>
				</div>
			</div>
			<!-- /.navbar-collapse -->
			
		</div>
		<!-- /.container-fluid -->
	</nav>
	