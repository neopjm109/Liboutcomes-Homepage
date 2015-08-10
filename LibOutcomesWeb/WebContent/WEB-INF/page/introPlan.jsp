<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>

<%@ include file="header.jsp"%>

<!-- 연구진행 소개
==========================================-->
<section id="lib-content">
    <div class="container text-center">
        
        <!-- 제목 -->
        <article class="section-title center">
            <h2><strong>연구계획</strong> 소개</h2>
            <div class="line">
                <hr>
            </div>
	        <div class="clearfix"></div>
            <small><em>Plan for the Project</em></small>
        </article>
        <div class="space"></div>
        <!-- /.제목 -->
        
        <!-- 내용 -->
        <article class="row">
            <div class="col-lg-12">
                <ul class="timeline">
                
                    <li>
                        <div class="timeline-image">
                            <img class="img-circle img-responsive" src="${pageContext.request.contextPath}/assets/img/project2.jpg">
                        </div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4>2015-2016</h4>
                                <h4 class="subheading">1년차 활동내용</h4>
                            </div>
                            <div class="timeline-body">
                                <p class="text-muted">① 도서관 서비스 성과평가 모형개발 (성북정보도서관 서비스 분석 / 성과평가 워크숍 / 성과지표 개발 / 성과평가 모델 프레임워크 개발)</p> 
                                <p class="text-muted">② LibOutcomes 개발 (평가업무 프로세스분석 / KOLAS 시스템 저장 데이터 DB 구조 분석 / 유사 DB 설계 및 기획 / LibOutcomes Prototype 설계 및 구현 / 간단한 UI를 이용한 구현 및 테스트)</p>
                                <p class="text-muted">③ 성과확산을 위한 웹사이트 구축 (콘텐츠 구축 / 웹사이트 구축 / 웹사이트 시범운영 / 웹사이트 공개)</p>
                            </div>
                        </div>
                    </li>
                    
                    <li class="timeline-inverted">
                        <div class="timeline-image">
                            <img class="img-circle img-responsive" src="${pageContext.request.contextPath}/assets/img/project3.jpg">
                        </div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4>2016-2017</h4>
                                <h4 class="subheading">2년차 활동내용</h4>
                            </div>
                            <div class="timeline-body">
                                <p class="text-muted">① 도서관 시스템 환경분석 (KOLAS 시스템 저장 데이터 분석 / KOLAS 시스템 DB 구조 분석 / 기존 DB외 추가 입력될 데이터 분석)</p>
                                <p class="text-muted">② LibOutcomes 개발 (LibOutcomes DB 설계 / LibOutcomes DB 구현 / 웹사이트와 LibOutcomes 연동 / 시범 운영, 테스트 및 시스템 공개)</p>
                                <p class="text-muted">③ LibOutcomes 확산을 위한 전략 (시스템 활용 매뉴얼 개발 / LibOutcomes 워크숍)</p>
                            </div>
                        </div>
                    </li>
                    
                    <li class="timeline-inverted">
                        <div class="timeline-image">
                            <h4>It Will
                                <br>Be Added
                                <br>Soon!</h4>
                        </div>
                    </li>
                    
                </ul>
            </div>
        </article>
        <!-- /.내용 -->

    </div>
</section>

<%@ include file="footer.jsp"%>