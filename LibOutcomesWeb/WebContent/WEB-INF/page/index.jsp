<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>

<%@ include file="header.jsp"%>

<!-- 메인 화면
==========================================-->
<header id="lib-home">
    <div class="overlay">
        <div class="sub-home text-center">
            <h1>Welcome on <strong><span class="color">LIBOUTCOMES</span></strong></h1>
            <p class="lead"><strong>공공도서관 서비스 가치평가 모델 개발</strong> 및 <strong>시스템 구축</strong></p>
            <a href="#lib-content" class="fa fa-angle-down page-scroll"></a>
        </div>
    </div>
</header>


<!-- about LibOutcomes
==========================================-->
<section id="lib-content">
    <article class="container">
        <div class="row">
        
            <!-- 이미지 -->
            <div class="col-md-6">
                <img src="${pageContext.request.contextPath}/assets/img/project1.jpg" class="img-responsive">
            </div>
            
            <!-- 설명 -->
            <div class="col-md-6">
                <div class="section-title">
                    <h4>Introduce project</h4>
                    <h2>about <strong>LibOutcomes</strong></h2>
                    <hr>
                    <div class="clearfix"></div>
                </div>
                <p class="sub">본 연구는 공공도서관의 가치를 계량적으로 제시할 수 있는 성과 평가(Outcome evaluation) 모델을 개발하기 위해 도서관에서 
                	기존에 축적한 데이터를 활용하여 도서관의 가치 평가 지표를 설계하고 지표를 측정하는 것을 목적으로 합니다. 본 목적을 달성하기 위해서 구체적으로는 
               		공공도서관의 다양한 서비스를 다차원으로 분석하고, 공공도서관의 데이터를 활용한 지표를 개발한 후 로직모델(Logic model)을 바탕으로 평가 프레임워크를 개발합니다. 
               		이를 바탕으로 ‘LibOutcomes software’를 개발하여 도서관의 성과와 가치를 보여줄 수 있는 평가도구로 활용하고자 합니다.</p>
             </div>
            
        </div>
    </article>
    
    <!-- 기대효과 -->
    <article class="container text-center">
        <div class="space"><br><br><br></div>
	    <div class="row">
	    
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
            
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="fa fa-home fa-plane"></i>
                    </div>
                    <div class="panel-body">
                        <h4>문헌정보학계의 발전</h4>
                    </div>
                </div>
            </div>
            
	    </div>
    </article>
</section>

<%@ include file="footer.jsp"%>