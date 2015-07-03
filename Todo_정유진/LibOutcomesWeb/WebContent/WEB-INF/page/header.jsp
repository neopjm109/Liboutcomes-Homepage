<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>LIBOUTCOMES</title>

    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/assets/css/liboutcomes.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath}/assets/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
        
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/LibOutcomesWeb">LibOutcomes</a>
            </div>
            
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav ">
                    <li>
                        <a href="Project">프로젝트 소개</a>
                    </li>
                    <li>
                        <a href="Library">도서관 DB</a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">데이터 사이언스 <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="DataScienceManual">메뉴얼</a>
                            </li>
                            <li>
                                <a href="DataScienceReference">적용사례</a>
                            </li>
                        </ul>
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
        <!-- /.container -->
        
    </nav>
    <!-- /.navigation -->
    