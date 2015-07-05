<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="header.jsp"%>

<!-- Page Content -->
<div class="container">

	<!-- Page Heading -->
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">프로젝트 소개
                <small>About the Project</small>
            </h1>
        </div>
    </div>
    <!-- /.row -->
    
    
    <!-- 프로젝트 소개 -->
	<div class="row">
		<div class="col-lg-12 text-center">
            <h3>공공도서관 서비스 가치평가 모델 개발 및 소프트웨어 구축 과제</h3>
            <h3 class="section-subheading text-muted">Modeling the Values of Public Library Services and Software Development</h3>
        </div>
		<div class="col-md-6">
            <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/project1.jpg" alt="">
        </div>
        <div class="col-md-6">
			<p>2012년 ACRL(미국 대학 및 연구도서관 협회)은 도서관의 10대 핵심 이슈 중 하나로 ‘도서관 가치 알리기(Communicating value)’를 선정한 바 있다. 이는 도서관의 가치를 알리고 이를 통해 지역사회에서 변화와 소통에 주도적인 역할을 주문하는 것이다. 도서관이 지역사회와 소통하기 위해서는 무엇보다 올바른 평가를 통한 가치의 발견이 선행되어야 함은 물론이다.</p>
        	<p>그간 도서관에서 수행한 평가는 이용자의 만족도 조사 혹은 서비스 산출 평가(Output evaulation) 위주로 되어 있어 지역사회 내에서 도서관이 만들어내는 변화와 성과를 충분히 보여주지 못하여 도서관이 가진 가치에 비해 상대적으로 낮은 인식을 받아왔다. 또한 내부적으로도 도서관에 축적된 데이터를 평가에 다양하게 활용할 수 있음에도 불구하고 단순 기술통계로 사용하고 있어 도서관 데이터 활용의 효율성을 제고할 필요가 있는 상황이다.</p>
        	<p>따라서 본 연구는 공공도서관의 가치를 계량적으로 제시할 수 있는 성과 평가(Outcome evaluation) 모델을 개발하기 위해 도서관에서 기존에 축적한 데이터를 활용하여 도서관의 가치 평가 지표를 설계하고 지표를 측정하는 것을 목적으로 한다. 본 목적을 달성하기 위해서 구체적으로는 공공도서관의 다양한 서비스를 다차원으로 분석하고, 공공도서관의 데이터를 활용한 지표를 개발한 후 로직모델(Logic model)을 바탕으로 평가 프레임워크를 개발한다. 이를 바탕으로 ‘LibOutcomes software’를 개발하여 도서관의 성과와 가치를 보여줄 수 있는 평가도구로 활용하고자 한다.</p>
        	<p>본 연구를 통해 다음과 같은 효과를 얻을 수 있을 것으로 기대한다.</p>
        </div>
	</div>
	<!-- /.row -->


	<!-- 기대효과 -->
    <div class="row">
        <div class="col-lg-12 text-center">
            <h2 class="section-heading">기대 효과</h2>
            <h3 class="section-subheading text-muted">Expectation Effectiveness</h3>
        </div>
        <div class="col-md-4">
            <div class="panel panel-default text-center">
                <div class="panel-heading">
                    <span class="fa-stack fa-5x">
                          <i class="fa fa-circle fa-stack-2x text-primary"></i>
                          <i class="fa fa-bar-chart fa-stack-1x fa-inverse"></i>
                    </span>
                </div>
                <div class="panel-body">
                    <h4>올바른 평가 & 가치 알리기</h4>
                    <p>지역사회에 대한 공공도서관의 성과에 대한 평가를 수행함으로써 공공도서관의 프로그램 운영에 대한 올바른 평가와 가치 알리기가 가능해질 것이다. 아울러, 도서관을 이용하는 지역사회 주민과의 지속적인 연계 및 관계 유지에 유용하게 이용될 것이다.</p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="panel panel-default text-center">
                <div class="panel-heading">
                    <span class="fa-stack fa-5x">
                          <i class="fa fa-circle fa-stack-2x text-primary"></i>
                          <i class="fa fa-book fa-stack-1x fa-inverse"></i>
                    </span>
                </div>
                <div class="panel-body">
                    <h4>업무 개선 & 사업 확장</h4>
                    <p>공공도서관 업무 개선 및 사업의 확장이 가능할 것이다. 이제 단순 수치만으로 도서관을 평가할 수는 없다. 지속적인 가치의 평가와 이용자 서비스의 개발을 통해 지역사회와의 소통에 구심점으로 자리매김해야 할 것이다.</p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="panel panel-default text-center">
                <div class="panel-heading">
                    <span class="fa-stack fa-5x">
                          <i class="fa fa-circle fa-stack-2x text-primary"></i>
                          <i class="fa fa-plane fa-stack-1x fa-inverse"></i>
                    </span>
                </div>
                <div class="panel-body">
                    <h4>문헌정보학계의 발전</h4>
                    <p>평가모델의 공유를 통한 문헌정보학계의 발전을 도모할 수 있을 것이다. 과거의 여러 연구를 통해 평가의 영역이 현재도 여러 문제점이 있으나 개선 및 새로운 지표의 개발이 용이하지 않다는 것을 목도해 왔다. 따라서 본 연구를 통해 성과의 평가라는 새로운 화두를 던질 수 있을 것이다.</p>
                </div>
            </div>
        </div>
    </div>
    <!-- /.row -->
    
    
    <!-- 프로젝트 진행방향 -->
    <div class="row">
        <div class="col-lg-12 text-center">
            <h2 class="section-heading">진행 방향</h2>
            <h3 class="section-subheading text-muted">Direction of Progress</h3>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <ul class="timeline">
                    <li>
                        <div class="timeline-image">
                            <img class="img-circle img-responsive" src="${pageContext.request.contextPath}/assets/img/project2.jpg" alt="">
                        </div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4>2015-2016</h4>
                                <h4 class="subheading">프로젝트 1년차</h4>
                            </div>
                            <div class="timeline-body">
                                <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!</p>
                            </div>
                        </div>
                    </li>
                    <li class="timeline-inverted">
                        <div class="timeline-image">
                            <img class="img-circle img-responsive" src="${pageContext.request.contextPath}/assets/img/project3.jpg" alt="">
                        </div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4>2016-2017</h4>
                                <h4 class="subheading">프로젝트 2년차</h4>
                            </div>
                            <div class="timeline-body">
                                <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!</p>
                            </div>
                        </div>
                    </li>
                    <li class="timeline-inverted">
                        <div class="timeline-image">
                            <h4>Be Part
                                <br>Of Our
                                <br>Story!</h4>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- /.row -->  
    
    
    <!-- 팀원 소개 -->
    <div class="row text-center">
        <div class="col-lg-12">
            <h2 class="section-heading">참여 팀원</h2>
            <h3 class="section-subheading text-muted">Team Member</h3>
        </div>
        <div class="col-lg-4 col-sm-6 text-center">
            <img class="img-circle img-responsive col-center" src="${pageContext.request.contextPath}/assets/img/member/박성재.png" alt="">
            <h4>박성재
                <small>지식정보학과 교수</small>
            </h4>
            <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
        </div>
        
        <div class="col-lg-4 col-sm-6 text-center">
            <img class="img-circle img-responsive col-center" src="${pageContext.request.contextPath}/assets/img/member/조세홍.png" alt="">
            <h4>조세홍
                <small>멀티미디어공학과 교수</small>
            </h4>
            <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
        </div>
        
        <div class="col-lg-4 col-sm-6 text-center">
            <img class="img-circle img-responsive col-center" src="${pageContext.request.contextPath}/assets/img/member/한상우.png" alt="">
            <h4>한상우
                <small>Job Title</small>
            </h4>
            <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
        </div>
        
        <div class="col-lg-4 col-sm-6 text-center">
            <img class="img-circle img-responsive col-center" src="http://placehold.it/200x200" alt="">
            <h4>김정환
                <small>Job Title</small>
            </h4>
            <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
        </div>
        
        <div class="col-lg-4 col-sm-6 text-center">
            <img class="img-circle img-responsive col-center" src="${pageContext.request.contextPath}/assets/img/member/이제진.png" alt="">
            <h4>이제진
                <small>Job Title</small>
            </h4>
            <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
        </div>
        
        <div class="col-lg-4 col-sm-6 text-center">
            <img class="img-circle img-responsive col-center" src="${pageContext.request.contextPath}/assets/img/member/박준민.png" alt="">
            <h4>박준민
                <small>Job Title</small>
            </h4>
            <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
        </div>
        
        <div class="col-lg-4 col-sm-6 text-center">
            <img class="img-circle img-responsive col-center" src="${pageContext.request.contextPath}/assets/img/member/박미현.png" alt="">
            <h4>박미현
                <small>Job Title</small>
            </h4>
            <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
        </div>
        
        <div class="col-lg-4 col-sm-6 text-center">
            <img class="img-circle img-responsive col-center" src="${pageContext.request.contextPath}/assets/img/member/윤민정.png" alt="">
            <h4>윤민정
                <small>Job Title</small>
            </h4>
            <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
        </div>
        
        <div class="col-lg-4 col-sm-6 text-center">
            <img class="img-circle img-responsive col-center" src="${pageContext.request.contextPath}/assets/img/member/이지아.png" alt="">
            <h4>이지아
                <small>Job Title</small>
            </h4>
            <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
        </div>
        
        <div class="col-lg-4 col-sm-6 text-center">
            <img class="img-circle img-responsive col-center" src="${pageContext.request.contextPath}/assets/img/member/정유진.png" alt="">
            <h4>정유진
                <small>Job Title</small>
            </h4>
            <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
        </div>
    </div>
    <!-- /.row -->  
    
</div>
<!-- /.container -->

  
<%@ include file="footer.jsp"%>
