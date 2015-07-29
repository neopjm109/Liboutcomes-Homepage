<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="header.jsp"%>


<!-- Header Carousel -->
<header id="myCarousel" class="carousel slide">

    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
        <div class="item active">
            <div class="fill" style="background-image:url('${pageContext.request.contextPath}/assets/img/slide1.jpg');"></div>
            <div class="carousel-caption">
                <h2>공공도서관 서비스 가치평가 모델 개발</h2>
            </div>
        </div>
        <div class="item">
            <div class="fill" style="background-image:url('${pageContext.request.contextPath}/assets/img/slide2.jpg');"></div>
            <div class="carousel-caption">
                <h2>소프트웨어 구축</h2>
            </div>
        </div>
        <div class="item">
            <div class="fill" style="background-image:url('${pageContext.request.contextPath}/assets/img/slide3.jpg');"></div>
            <div class="carousel-caption">
                <h2>LibOutcomes 프로젝트</h2>
            </div>
        </div>
    </div>

    <!-- Controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
        <span class="icon-prev"></span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
        <span class="icon-next"></span>
    </a>
    
</header>


<!-- Page Content -->
<div class="container">

    <!-- 프로젝트 소개 -->
	<div class="row">
        <div class="col-lg-12 text-center">
            <h2 class="section-heading">프로젝트 소개</h2>
            <h3 class="section-subheading text-muted">About the Project</h3>
			<p class="large text-muted">2012년 ACRL(미국 대학 및 연구도서관 협회)은 도서관의 10대 핵심 이슈 중 하나로 ‘도서관 가치 알리기(Communicating value)’를 선정한 바 있다. 이는 도서관의 가치를 알리고 이를 통해 지역사회에서 변화와 소통에 주도적인 역할을 주문하는 것이다. 도서관이 지역사회와 소통하기 위해서는 무엇보다 올바른 평가를 통한 가치의 발견이 선행되어야 함은 물론이다.</p>
        	<p class="large text-muted">그간 도서관에서 수행한 평가는 이용자의 만족도 조사 혹은 서비스 산출 평가(Output evaulation) 위주로 되어 있어 지역사회 내에서 도서관이 만들어내는 변화와 성과를 충분히 보여주지 못하여 도서관이 가진 가치에 비해 상대적으로 낮은 인식을 받아왔다. 또한 내부적으로도 도서관에 축적된 데이터를 평가에 다양하게 활용할 수 있음에도 불구하고 단순 기술통계로 사용하고 있어 도서관 데이터 활용의 효율성을 제고할 필요가 있는 상황이다.</p>
        	<p class="large text-muted">따라서 본 연구는 공공도서관의 가치를 계량적으로 제시할 수 있는 성과 평가(Outcome evaluation) 모델을 개발하기 위해 도서관에서 기존에 축적한 데이터를 활용하여 도서관의 가치 평가 지표를 설계하고 지표를 측정하는 것을 목적으로 한다. 본 목적을 달성하기 위해서 구체적으로는 공공도서관의 다양한 서비스를 다차원으로 분석하고, 공공도서관의 데이터를 활용한 지표를 개발한 후 로직모델(Logic model)을 바탕으로 평가 프레임워크를 개발한다. 이를 바탕으로 ‘LibOutcomes software’를 개발하여 도서관의 성과와 가치를 보여줄 수 있는 평가도구로 활용하고자 한다.</p>
        	<p class="large text-muted">본 연구를 통해 다음과 같은 효과를 얻을 수 있을 것으로 기대한다.</p>
        </div>
	</div>
	<!-- /.row -->
	
	<br><br><br><br><br>
	
	
	<!-- 기대효과 -->
    <div class="row text-center">
        <div class="col-md-4">
			<span class="fa-stack fa-5x">
				<i class="fa fa-circle fa-stack-2x text-primary"></i>
				<i class="fa fa-bar-chart fa-stack-1x fa-inverse"></i>
			</span>
			<h4>올바른 평가 & 가치 알리기</h4>
			<p class="text-muted">지역사회에 대한 공공도서관의 성과에 대한 평가를 수행함으로써 공공도서관의 프로그램 운영에 대한 올바른 평가와 가치 알리기가 가능해질 것이다. 아울러, 도서관을 이용하는 지역사회 주민과의 지속적인 연계 및 관계 유지에 유용하게 이용될 것이다.</p>
		</div>
        <div class="col-md-4">
        	<span class="fa-stack fa-5x">
            	<i class="fa fa-circle fa-stack-2x text-primary"></i>
            	<i class="fa fa-book fa-stack-1x fa-inverse"></i>
        	</span>
            <h4>업무 개선 & 사업 확장</h4>
            <p class="text-muted">공공도서관 업무 개선 및 사업의 확장이 가능할 것이다. 이제 단순 수치만으로 도서관을 평가할 수는 없다. 지속적인 가치의 평가와 이용자 서비스의 개발을 통해 지역사회와의 소통에 구심점으로 자리매김해야 할 것이다.</p>
        </div>
        <div class="col-md-4">
        	<span class="fa-stack fa-5x">
            	<i class="fa fa-circle fa-stack-2x text-primary"></i>
            	<i class="fa fa-plane fa-stack-1x fa-inverse"></i>
			</span>
			<h4>문헌정보학계의 발전</h4>
			<p class="text-muted">평가모델의 공유를 통한 문헌정보학계의 발전을 도모할 수 있을 것이다. 과거의 여러 연구를 통해 평가의 영역이 현재도 여러 문제점이 있으나 개선 및 새로운 지표의 개발이 용이하지 않다는 것을 목도해 왔다. 따라서 본 연구를 통해 성과의 평가라는 새로운 화두를 던질 수 있을 것이다.</p>
        </div>
    </div>
    <!-- /.row -->
    
    <br><br><br><br><br>
    
    <!-- 사진 -->
    <div class="row">
        <div class="col-md-4 img-project">
            <img class="img-responsive img-hover" src="http://placehold.it/750x450" alt="">
        </div>
        <div class="col-md-4 img-project">
            <img class="img-responsive img-hover" src="http://placehold.it/750x450" alt="">
        </div>
        <div class="col-md-4 img-project">
            <img class="img-responsive img-hover" src="http://placehold.it/750x450" alt="">
        </div>
    </div>
    <!-- /.row -->
    
    
    <!-- Contact -->
    <div class="row">
        <div class="col-lg-12 text-center">
            <h2 class="section-heading">Contact</h2>
            <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
        </div>
        <form name="sentMessage" id="contactForm" novalidate>
     	   <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Your Name *" id="name" required>
            			<p class="help-block text-danger"></p>
                    </div>
                    <div class="form-group">
                        <input type="email" class="form-control" placeholder="Your Email *" id="email" required>
                        <p class="help-block text-danger"></p>
                    </div>
                    <div class="form-group">
                        <input type="tel" class="form-control" placeholder="Your Phone *" id="phone" required>
                        <p class="help-block text-danger"></p>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <textarea rows="7" class="form-control" placeholder="Your Message *" id="message" required></textarea>
                        <p class="help-block text-danger"></p>
                    </div>
                </div>
                <div class="clearfix"></div>
                <div class="col-lg-12 text-center">
                    <div id="success"></div>
                    <button type="submit" class="btn btn-primary">Send Message</button>
                </div>
            </div>
        </form>
    </div>
    <!-- /.row -->
    
</div>
<!-- /.container -->


<%@ include file="footer.jsp"%>
        
        