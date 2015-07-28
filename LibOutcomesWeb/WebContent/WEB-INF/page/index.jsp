<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="header.jsp"%>

<!-- 홈 이미지
==========================================-->

<div id="tf-home" class="text-center">
    <div class="overlay">
        <div class="content">
            <h1>Welcome on <strong><span class="color">LIBOUTCOMES</span></strong></h1>
            <p class="lead"><strong>공공도서관 서비스 가치평가 모델 개발</strong> 및 <strong>소프트웨어 구축</strong> 과제</p>
            <a href="#tf-about" class="fa fa-angle-down page-scroll"></a>
        </div>
    </div>
</div>


<!-- 간략한 프로젝트 소개
==========================================-->

<div id="tf-about">
    <div class="container">
        <div class="row">
        
        	<!-- 샘플 이미지 -->
            <div class="col-md-6">
                <img src="${pageContext.request.contextPath}/assets/img/project1.jpg" class="img-responsive">
            </div>
            
            <div class="col-md-6">
                <div class="about-text">
                
                    <div class="section-title">
                        <h4>Introduce project</h4>
                        <h2>about <strong>LibOutcomes</strong></h2>
                        <hr>
                        <div class="clearfix"></div>
                    </div>
                    
                    <p class="intro">본 연구는 공공도서관의 가치를 계량적으로 제시할 수 있는 성과 평가(Outcome evaluation) 모델을 개발하기 위해 도서관에서 
                    	기존에 축적한 데이터를 활용하여 도서관의 가치 평가 지표를 설계하고 지표를 측정하는 것을 목적으로 합니다.</p>
                    	
                    <ul class="about-list">
                        <li>
                            <span class="fa fa-dot-circle-o"></span>
                            <strong>First</strong> - <em>공공도서관 프로그램에 대한 올바른 평가와 가치 알리기 가능</em>
                        </li>
                        <li>
                            <span class="fa fa-dot-circle-o"></span>
                            <strong>Second</strong> - <em>공공도서관 업무 개선 및 사업의 확장이 가능</em>
                        </li>
                        <li>
                            <span class="fa fa-dot-circle-o"></span>
                            <strong>Third</strong> - <em>평가모델의 공유를 통한 문헌정보학계의 발전 도모</em>
                        </li>
                    </ul>
                    
                </div>
            </div>
            
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container -->
</div>


<!-- Contact Section
==========================================-->
<div id="tf-contact" class="text-center">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">

                <div class="section-title center">
                    <h2>Feel free to <strong>contact us</strong></h2>
                    <div class="line">
                        <hr>
                    </div>
                    <div class="clearfix"></div>
                    <small><em>아래의 기능을 통해 저희 프로젝트에 대한 의견을 보낼 수 있습니다. 항목을 작성한 후 보내기 버튼을 클릭하면 의견이 메일로 전달됩니다.
						이 방법 외에도 게시판에 글을 남기시면 저희가 확인할 수 있습니다. 본 웹사이트를 방문하신 모든 분들에게 열려있습니다.</em></small>            
                </div>

				<!-- 입력 칸 -->
                <form>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email address</label>
                                <input type="email" class="form-control" id="exampleInputEmail1" placeholder="이메일 주소를 입력해주세요.">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="exampleInputPassword1">Password</label>
                                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="글의 암호를 입력해주세요.">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Message</label>
                        <textarea class="form-control" rows="3"></textarea>
                    </div>
                    
                    <button type="submit" class="btn tf-btn btn-default">보내기</button>
                </form>

            </div>
        </div>
		<!-- /.row -->
    </div>
    <!-- /.container -->
</div>


<%@ include file="footer.jsp"%>
