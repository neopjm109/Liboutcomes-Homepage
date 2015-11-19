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

<title>LIBOUTCOMES</title>
</head>
<body>
	<!-- hedaer -->
	<%@ include file="../Header.jsp" %>
	<!-- /.header -->
	
	<!-- contents -->
	<section id="lib-section">
	    <div class="container text-center">
	        
	        <!-- 제목 -->
	        <article class="article-title center mb80">
	            <h2><strong>사이트맵</strong></h2>
	            <div class="line">
	                <hr>
	            </div>
	        </article>
	        <!-- /.제목 -->
	        
	        <!-- 내용 -->
	        <article id="lib-sitemap">
	           <div class="row mb80 mlr5">
		           <div class="col-md-4">
	                    <h3>소개</h3><hr>
	                    <ul>
	                        <li>
	                           <a href="javascript:goUrl('IntroProject')">프로젝트 소개</a><hr>
	                        </li>
	                        <li>
	                           <a href="javascript:goUrl('IntroPlan')">연구계획 소개</a><hr>
	                        </li>
	                        <li>
	                           <a href="javascript:goUrl('IntroMember')">연구팀 소개</a><hr>
                            </li>
		                </ul>
	                </div>
	                <div class="col-md-4">
	                    <h3>데이터 마이닝</h3><hr>
	                    <ul>
	                       <li>
	                           <a href="javascript:goUrl('DataMining')">데이터 마이닝</a><hr>
	                       </li>
	                    </ul>
	                </div>
	                <div class="col-md-4">
	                    <h3>참고자료</h3><hr>
	                    <ul>
	                        <li>
							    <a href="javascript:goUrl('ReferenceLibrary')">도서관 DB</a><hr>
							</li>
	                        <li>
                                <a href="javascript:goUrl('ReferenceReport')">논문 · 보고서</a><hr>
                            </li>
	                    </ul>
	                </div>
                </div>
                <div class="row mlr10">
	                <div class="col-md-4">
	                    <h3>메뉴얼</h3><hr>
	                    <ul>
	                       <li>
	                           <a href="javascript:goUrl('Manual')">메뉴얼</a><hr>
	                       </li>
	                    </ul>
	                </div>
	                <div class="col-md-4">
	                    <h3>게시판</h3><hr>
	                    <ul>
	                        <li>
	                           <a href="javascript:goUrl('BoardNotice')">공지 게시판</a><hr>
	                        </li>
	                        <li>
	                           <a href="javascript:goUrl('BoardNormal')">일반 게시판</a><hr>
	                        </li>
	                        <li>
                               <a href="javascript:goUrl('BoardFAQ')">FAQ</a><hr>
                            </li>
	                    </ul>
	                </div>
	                <div class="col-md-4">
	                    <h3>사이트맵</h3><hr>
	                    <ul>
	                       <li>
	                           <a href="javascript:goUrl('Sitemap')">사이트맵</a><hr>
	                       </li>
	                    </ul>
	                </div>
                </div>
	        </article>
	        <!-- /.내용 -->
	
	    </div>
	</section>
	<!-- /.contents -->

	<!-- footer -->
	<%@ include file="../Footer.jsp" %>
	<!-- /.footer -->
</body>
</html>