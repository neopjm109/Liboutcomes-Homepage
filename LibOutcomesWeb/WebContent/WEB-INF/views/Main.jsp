<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- css -->
<link rel="stylesheet" type="text/css" href="assets/font-awesome/css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="assets/css/common.css" />
<!-- js -->
<script type="text/javascript" src="assets/js/plugins/jquery.min.js"></script>
<script type="text/javascript" src="assets/js/plugins/bootstrap.min.js"></script>
<script type="text/javascript" src="assets/js/common.js"></script>
<script type="text/javascript" src="assets/js/main.js"></script>

<title>LIBOUTCOMES</title>
</head>
<body>
	<!-- header -->
	<%@ include file="Header.jsp" %>
	<!-- /.header -->

	<header id="lib-main">
	    <div class="overlay">
	        <div class="sub-home text-center">
	            <h1>Welcome on <strong><span class="color">LIBOUTCOMES</span></strong></h1>
	            <p class="lead mlr5"><strong>공공도서관 서비스 가치평가 모델 개발</strong> 및 <strong>시스템 구축</strong></p>
	            <a href="#lib-section" class="fa fa-angle-down page-scroll"></a>
	        </div>
	    </div>
	</header>

	<section id="lib-section">
	    <article class="container">
	        <div class="row">
	            <div class="col-md-6">
	                <img src="assets/img/bg/bg_about.jpg" class="img-responsive">
	            </div>
	            <div class="col-md-6">
	                <div class="article-title">
	                    <h4>What is this project?</h4>
	                    <h2>about <strong>LibOutcomes</strong></h2>
	                    <hr>
	                    <div class="clearfix"></div>
	                </div>
	                <p class="sub">본 연구는 공공도서관의 가치를 계량적으로 제시할 수 있는 성과 평가(Outcome evaluation) 모델을 개발하기 위해 도서관에서 
	                	기존에 축적한 데이터를 활용하여 도서관의 가치 평가 지표를 설계하고 지표를 측정하는 것을 목적으로 합니다. 본 목적을 달성하기 위해서 
	                	구체적으로는 공공도서관의 다양한 서비스를 다차원으로 분석하고, 공공도서관의 데이터를 활용한 지표를 개발한 후 
	                	로직모델(Logic model)을 바탕으로 평가 프레임워크를 개발합니다.<br>
	               		이를 바탕으로 ‘LibOutcomes software’를 개발하여 도서관의 성과와 가치를 보여줄 수 있는 평가도구로 활용하고자 합니다.</p>
	             </div>
	        </div>
	    </article>
	    
	    <!-- 기대효과 -->
	    <article class="container text-center mt120">
		    <div class="row">
		    	<!-- panel1 -->
		    	<div class="col-md-4">
	                <div class="panel panel-default">
	                    <div class="panel-heading">
	                        <i class="fa fa-home fa-bar-chart"></i>
	                    </div>
	                    <div class="panel-body">
	                        <h4>올바른 평가 및 가치 알리기</h4>
	                    </div>
	                </div>
	            </div>
				<!-- /.panel1 -->
				<!-- panel2 -->
	            <div class="col-md-4">
	                <div class="panel panel-default">
	                    <div class="panel-heading">
	                        <i class="fa fa-home fa-book"></i>
	                    </div>
	                    <div class="panel-body">
	                         <h4>업무 개선 및 사업 확장</h4>
	                    </div>
	                </div>
	            </div>
				<!-- /.panel2 -->
				<!-- panel3 -->
	            <div class="col-md-4">
	                <div class="panel panel-default">
	                    <div class="panel-heading">
	                        <i class="fa fa-home fa-paper-plane"></i>
	                    </div>
	                    <div class="panel-body">
	                        <h4>문헌정보학계의 발전</h4>
	                    </div>
	                </div>
	            </div>
				<!-- /.panel3 -->
		    </div>
	    </article>
	    <!-- /.기대효과 -->
	</section>

	<!-- footer -->
	<%@ include file="Footer.jsp" %>
	<!-- /.footer -->
</body>
</html>