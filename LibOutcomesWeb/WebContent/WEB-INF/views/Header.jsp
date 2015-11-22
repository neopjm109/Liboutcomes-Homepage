<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 구글 웹로그 분석 추적 코드 -->
<script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
ga('create', 'UA-66024597-1', 'auto');
ga('send', 'pageview');
</script>

<%
	String userName = (String) session.getAttribute("userName");
	pageContext.setAttribute("userName", userName);
%>
    
<!-- 네비게이션 바 -->
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">

        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="javascript:goUrl('/LibOutcomesWeb/')" class="navbar-brand">LibOutcomes</a>
        </div>
        
        <!-- navbar-collapse -->
        <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">소개 <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="javascript:goUrl('IntroProject')">프로젝트 소개</a>
                        </li>
                        <li>
                            <a href="javascript:goUrl('IntroPlan')">연구계획 소개</a>
                        </li>
                        <li>
                            <a href="javascript:goUrl('IntroMember')">연구팀 소개</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:goUrl('DataMining')">데이터 마이닝</a>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">참고자료 <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="javascript:goUrl('ReferenceLibrary')">도서관 DB</a>
                        </li>
                        <li>
                            <a href="javascript:goUrl('ReferenceReport')">논문 · 보고서</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:goUrl('Manual')">메뉴얼</a>
                </li>
				<li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">게시판 <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="javascript:goUrl('BoardNotice')">공지 게시판</a>
                        </li>
                        <li>
                            <a href="javascript:goUrl('BoardNormal')">일반 게시판</a>
                        </li>
                        <li>
                            <a href="javascript:goUrl('BoardFAQ')">FAQ</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:goUrl('Sitemap')">사이트맵</a>
                </li>
            </ul>
            <%-- 로그인 버튼
            <div class="nav navbar-right" style="padding-right:15px;">
                <c:if test = "${userName eq null || userName == ''}">
                    <a href="javascript:goUrl('Login')" class="btn navbar-btn btn-primary">로그인</a>
                </c:if>
                <c:if test = "${userName ne null}">
                    <a href="javascript:logoutProcess()" class="btn navbar-btn btn-danger">로그아웃</a>
                </c:if>
            </div> --%>
        </div>
        <!-- /.navbar-collapse -->
        
    </div>
</nav>
<!-- /.네비게이션 바 -->