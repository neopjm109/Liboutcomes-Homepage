<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String loginId = (String) session.getAttribute("liboutcomes_login");

	pageContext.setAttribute("loginId", loginId);
%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Basic Page Needs
    ================================================== -->
    <meta charset="utf-8">
    <!--[if IE]><meta http-equiv="x-ua-compatible" content="IE=9" /><![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>LIBOUTCOMES</title>
    <meta name="description" content="Spirit8 is a Digital agency one page template built based on bootstrap framework. This template is design by Robert Berki and coded by Jenn Pereira. It is simple, mobile responsive, perfect for portfolio and agency websites. Get this for free exclusively at ThemeForces.com">
    <meta name="keywords" content="bootstrap theme, portfolio template, digital agency, onepage, mobile responsive, spirit8, free website, free theme, themeforces themes, themeforces wordpress themes, themeforces bootstrap theme">
    <meta name="author" content="ThemeForces.com">
    
    <!-- Favicons
    ================================================== -->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="img/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">

    <!-- Bootstrap -->
    <link rel="stylesheet" type="text/css"  href="${pageContext.request.contextPath}/assets/css/bootstrap/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/fonts/bootstrap/font-awesome/css/font-awesome.css">

    <!-- Slider
    ================================================== -->
    <link href="${pageContext.request.contextPath}/assets/css/bootstrap/owl.carousel.css" rel="stylesheet" media="screen">
    <link href="${pageContext.request.contextPath}/assets/css/bootstrap/owl.theme.css" rel="stylesheet" media="screen">

    <!-- Stylesheet
    ================================================== -->
    <link rel="stylesheet" type="text/css"  href="${pageContext.request.contextPath}/assets/css/bootstrap/style.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/bootstrap/responsive.css">

    <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,700,300,600,800,400' rel='stylesheet' type='text/css'>

    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/bootstrap/modernizr.custom.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <!-- previous -->
    <!-- 
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/public/public.css">
    -->
    <!-- 
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/public/footer.css">
	-->
	
  </head>
  <body>
    <!-- Navigation
    ==========================================-->
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
          <a class="navbar-brand" href="index.html">Liboutcomes</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#tf-home" class="page-scroll">Home</a></li>
            <li><a href="#tf-about" class="page-scroll">About</a></li>
            <li><a href="Library" class="page-scroll">도서관 DB</a></li>
            
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">데이터 사이언스</a>
            <ul class="dropdown-menu" role="menu">
                <li>
                    <a href="DataScienceManual">메뉴얼</a>
                </li>
                <li>
                    <a href="DataScienceReference">적용사례</a>
                </li>
            </ul>
            
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
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container-fluid -->
    </nav>