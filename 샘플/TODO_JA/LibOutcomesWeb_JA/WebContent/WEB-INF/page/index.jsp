<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>

<!-- Home Page
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

    <!-- About Us Page
    ==========================================-->
    <div id="tf-about">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <img src="${pageContext.request.contextPath}/assets/img/bootstrap/02.png" class="img-responsive">
                </div>
                <div class="col-md-6">
                    <div class="about-text">
                        <div class="section-title">
                            <h4>About us</h4>
                            <h2>Some words <strong>about us</strong></h2>
                            <hr>
                            <div class="clearfix"></div>
                        </div>
                        <p class="intro">2012년 ACRL(미국 대학 및 연구도서관 협회)은 도서관의 10대 핵심 이슈 중 하나로 ‘도서관 가치 알리기(Communicating value)’를 선정한 바 있다. 이는 도서관의 가치를 알리고 이를 통해 지역사회에서 변화와 소통에 주도적인 역할을 주문하는 것이다. 도서관이 지역사회와 소통하기 위해서는 무엇보다 올바른 평가를 통한 가치의 발견이 선행되어야 함은 물론이다.</p>
                        <p class="intro">그간 도서관에서 수행한 평가는 이용자의 만족도 조사 혹은 서비스 산출 평가(Output evaulation) 위주로 되어 있어 지역사회 내에서 도서관이 만들어내는 변화와 성과를 충분히 보여주지 못하여 도서관이 가진 가치에 비해 상대적으로 낮은 인식을 받아왔다. 또한 내부적으로도 도서관에 축적된 데이터를 평가에 다양하게 활용할 수 있음에도 불구하고 단순 기술통계로 사용하고 있어 도서관 데이터 활용의 효율성을 제고할 필요가 있는 상황이다.</p>
                        <br/><br/>
                    </div>
                </div>
                <!-- 지아 -->
                <div>
                <div class="about-text">
						<p class="intro">따라서 본 연구는 공공도서관의 가치를 계량적으로 제시할 수 있는 성과 평가(Outcome evaluation) 모델을 개발하기 위해 도서관에서 기존에 축적한 데이터를 활용하여 도서관의 가치 평가 지표를 설계하고 지표를 측정하는 것을 목적으로 한다. 본 목적을 달성하기 위해서 구체적으로는 공공도서관의 다양한 서비스를 다차원으로 분석하고, 공공도서관의 데이터를 활용한 지표를 개발한 후 로직모델(Logic model)을 바탕으로 평가 프레임워크를 개발한다. 이를 바탕으로 ‘LibOutcomes software’를 개발하여 도서관의 성과와 가치를 보여줄 수 있는 평가도구로 활용하고자 한다.</p>
						<p class="intro">본 연구를 통해 다음과 같은 효과를 얻을 수 있을 것으로 기대한다.
						<ul class="about-list">
                            <li>
                                <span class="fa fa-dot-circle-o"></span>
                                <strong>First</strong> - <em>지역사회에 대한 공공도서관의 성과에 대한 평가를 수행함으로써 공공도서관의 프로그램 운영에 대한 올바른 평가와 가치 알리기가 가능해질 것이다. 아울러, 도서관을 이용하는 지역사회 주민과의 지속적인 연계 및 관계 유지에 유용하게 이용될 것이다.</em>
                            </li>
                            <li>
                                <span class="fa fa-dot-circle-o"></span>
                                <strong>Second</strong> - <em>공공도서관 업무 개선 및 사업의 확장이 가능할 것이다. 이제 단순 수치만으로 도서관을 평가할 수는 없다. 지속적인 가치의 평가와 이용자 서비스의 개발을 통해 지역사회와의 소통에 구심점으로 자리매김해야 할 것이다.</em>
                            </li>
                            <li>
                                <span class="fa fa-dot-circle-o"></span>
                                <strong>Third</strong> - <em>평가모델의 공유를 통한 문헌정보학계의 발전을 도모할 수 있을 것이다. 과거의 여러 연구를 통해 평가의 영역이 현재도 여러 문제점이 있으나 개선 및 새로운 지표의 개발이 용이하지 않다는 것을 목도해 왔다. 따라서 본 연구를 통해 성과의 평가라는 새로운 화두를 던질 수 있을 것이다.</em>
                            </li>
                        </ul>
                        </p>
                      
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Team Page
    ==========================================-->
    <div id="tf-team" class="text-center">
        <div class="overlay">
            <div class="container">
                <div class="section-title center">
                    <h2>Meet <strong>our team</strong></h2>
                    <div class="line">
                        <hr>
                    </div>
                </div>

                <div id="team" class="owl-carousel owl-theme row">
                    <div class="item">
                        <div class="thumbnail">
                            <img src="${pageContext.request.contextPath}/assets/img/bootstrap/team/01.jpg" alt="..." class="img-circle team-img">
                            <div class="caption">
                                <h3>Jenn Gwapa</h3>
                                <p>CEO / Founder</p>
                                <p>Do not seek to change what has come before. Seek to create that which has not.</p>
                            </div>
                        </div>
                    </div>

                    <div class="item">
                        <div class="thumbnail">
                            <img src="${pageContext.request.contextPath}/assets/img/bootstrap/team/02.jpg" alt="..." class="img-circle team-img">
                            <div class="caption">
                                <h3>Jenn Gwapa</h3>
                                <p>CEO / Founder</p>
                                <p>Do not seek to change what has come before. Seek to create that which has not.</p>
                            </div>
                        </div>
                    </div>

                    <div class="item">
                        <div class="thumbnail">
                            <img src="${pageContext.request.contextPath}/assets/img/bootstrap/team/03.jpg" alt="..." class="img-circle team-img">
                            <div class="caption">
                                <h3>Jenn Gwapa</h3>
                                <p>CEO / Founder</p>
                                <p>Do not seek to change what has come before. Seek to create that which has not.</p>
                            </div>
                        </div>
                    </div>

                    <div class="item">
                        <div class="thumbnail">
                            <img src="${pageContext.request.contextPath}/assets/img/bootstrap/team/04.jpg" alt="..." class="img-circle team-img">
                            <div class="caption">
                                <h3>Jenn Gwapa</h3>
                                <p>CEO / Founder</p>
                                <p>Do not seek to change what has come before. Seek to create that which has not.</p>
                            </div>
                        </div>
                    </div>

                    <div class="item">
                        <div class="thumbnail">
                            <img src="${pageContext.request.contextPath}/assets/img/bootstrap/team/04.jpg" alt="..." class="img-circle team-img">
                            <div class="caption">
                                <h3>Jenn Gwapa</h3>
                                <p>CEO / Founder</p>
                                <p>Do not seek to change what has come before. Seek to create that which has not.</p>
                            </div>
                        </div>
                    </div>

                    <div class="item">
                        <div class="thumbnail">
                            <img src="${pageContext.request.contextPath}/assets/img/bootstrap/team/01.jpg" alt="..." class="img-circle team-img">
                            <div class="caption">
                                <h3>Jenn Gwapa</h3>
                                <p>CEO / Founder</p>
                                <p>Do not seek to change what has come before. Seek to create that which has not.</p>
                            </div>
                        </div>
                    </div>

                    <div class="item">
                        <div class="thumbnail">
                            <img src="${pageContext.request.contextPath}/assets/img/bootstrap/team/02.jpg" alt="..." class="img-circle team-img">
                            <div class="caption">
                                <h3>Jenn Gwapa</h3>
                                <p>CEO / Founder</p>
                                <p>Do not seek to change what has come before. Seek to create that which has not.</p>
                            </div>
                        </div>
                    </div>

                    <div class="item">
                        <div class="thumbnail">
                            <img src="${pageContext.request.contextPath}/assets/img/bootstrap/team/03.jpg" alt="..." class="img-circle team-img">
                            <div class="caption">
                                <h3>Jenn Gwapa</h3>
                                <p>CEO / Founder</p>
                                <p>Do not seek to change what has come before. Seek to create that which has not.</p>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    </div>


    <!-- Portfolio Section
    ==========================================-->
    <div id="tf-works">
        <div class="container"> <!-- Container -->
            <div class="section-title text-center center">
                <h2>Take a look at <strong>our services</strong></h2>
                <div class="line">
                    <hr>
                </div>
                <div class="clearfix"></div>
                <small><em>Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</em></small>
            </div>
            <div class="space"></div>

            <div class="categories">
                
                <ul class="cat">
                    <li class="pull-left"><h4>Filter by Type:</h4></li>
                    <li class="pull-right">
                        <ol class="type">
                            <li><a href="#" data-filter="*" class="active">All</a></li>
                            <li><a href="#" data-filter=".web">Web Design</a></li>
                            <li><a href="#" data-filter=".photography">Photography</a></li>
                            <li><a href="#" data-filter=".app" >Mobile App</a></li>
                            <li><a href="#" data-filter=".branding" >Branding</a></li>
                        </ol>
                    </li>
                </ul>
                <div class="clearfix"></div>
            </div>

            <div id="lightbox" class="row">

                <div class="col-sm-6 col-md-3 col-lg-3 branding">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="#">
                                <div class="hover-text">
                                    <h4>Logo Design</h4>
                                    <small>Branding</small>
                                    <div class="clearfix"></div>
                                    <i class="fa fa-plus"></i>
                                </div>
                                <img src="${pageContext.request.contextPath}/assets/img/bootstrap/portfolio/01.jpg" class="img-responsive" alt="...">
                            </a>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-md-3 col-lg-3 photography app">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="#">
                                <div class="hover-text">
                                    <h4>Logo Design</h4>
                                    <small>Branding</small>
                                    <div class="clearfix"></div>
                                    <i class="fa fa-plus"></i>
                                </div>
                                <img src="${pageContext.request.contextPath}/assets/img/bootstrap/portfolio/02.jpg" class="img-responsive" alt="...">
                            </a>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-md-3 col-lg-3 branding">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="#">
                                <div class="hover-text">
                                    <h4>Logo Design</h4>
                                    <small>Branding</small>
                                    <div class="clearfix"></div>
                                    <i class="fa fa-plus"></i>
                                </div>
                                <img src="${pageContext.request.contextPath}/assets/img/bootstrap/portfolio/03.jpg" class="img-responsive" alt="...">
                            </a>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-md-3 col-lg-3 branding">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="#">
                                <div class="hover-text">
                                    <h4>Logo Design</h4>
                                    <small>Branding</small>
                                    <div class="clearfix"></div>
                                    <i class="fa fa-plus"></i>
                                </div>
                                <img src="${pageContext.request.contextPath}/assets/img/bootstrap/portfolio/04.jpg" class="img-responsive" alt="...">
                            </a>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-md-3 col-lg-3 web">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="#">
                                <div class="hover-text">
                                    <h4>Logo Design</h4>
                                    <small>Branding</small>
                                    <div class="clearfix"></div>
                                    <i class="fa fa-plus"></i>
                                </div>
                                <img src="${pageContext.request.contextPath}/assets/img/bootstrap/portfolio/05.jpg" class="img-responsive" alt="...">
                            </a>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-md-3 col-lg-3 app">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="#">
                                <div class="hover-text">
                                    <h4>Logo Design</h4>
                                    <small>Branding</small>
                                    <div class="clearfix"></div>
                                    <i class="fa fa-plus"></i>
                                </div>
                                <img src="${pageContext.request.contextPath}/assets/img/bootstrap/portfolio/06.jpg" class="img-responsive" alt="...">
                            </a>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-md-3 col-lg-3 photography web">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="#">
                                <div class="hover-text">
                                    <h4>Logo Design</h4>
                                    <small>Branding</small>
                                    <div class="clearfix"></div>
                                    <i class="fa fa-plus"></i>
                                </div>
                                <img src="${pageContext.request.contextPath}/assets/img/bootstrap/portfolio/07.jpg" class="img-responsive" alt="...">
                            </a>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-md-3 col-lg-3 web">
                    <div class="portfolio-item">
                        <div class="hover-bg">
                            <a href="#">
                                <div class="hover-text">
                                    <h4>Logo Design</h4>
                                    <small>Branding</small>
                                    <div class="clearfix"></div>
                                    <i class="fa fa-plus"></i>
                                </div>
                                <img src="${pageContext.request.contextPath}/assets/img/bootstrap/portfolio/08.jpg" class="img-responsive" alt="...">
                            </a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>


	<div class="contents">
	
		
		<!--
			사용된 이미지 슬라이더 : Owl Carousel
			@todo
			이미지 내용은 변경 예정입니다. 
		-->
		<div class="col-lg-8 col-centered col-no-padding">
			<div id="index_slider" class="owl-carousel owl-theme text-center">
				<div>
					<img src="${pageContext.request.contextPath}/assets/img/full_image1.jpg">
				</div>
				<div>
					<img src="${pageContext.request.contextPath}/assets/img/full_image2.jpg">
				</div>
				<div>
					<img src="${pageContext.request.contextPath}/assets/img/full_image3.jpg">
				</div>
			</div>
		</div>
		
		<div class="clearfix"></div><br>
		
		
		<!--
			이미지 사용시 3개의 이미지 모두 같은 높이여야 최적화로 나옵니다. 
		--> 
		
		
		<div class="col-lg-8 col-centered col-no-padding">
			<div class="text-center column-list-3">
				<div class="col-xs-4 col-no-padding">
					<img src="${pageContext.request.contextPath}/assets/img/image1.jpg">
					<span class="column-list-description">
						<div>
							Library
						</div>
					</span>
				</div>
				<div class="col-xs-4 col-no-padding">
					<img src="${pageContext.request.contextPath}/assets/img/image2.jpg">
					<span class="column-list-description">
						<div>
							Out
						</div>
					</span>
				</div>
				<div class="col-xs-4 col-no-padding">
					<img src="${pageContext.request.contextPath}/assets/img/image3.jpg">
					<span class="column-list-description">
						<div>
							Comes
						</div>
					</span>
				</div>
			</div>
		</div>=
		<div class="clearfix"></div><br>
		
	</div>


<%@ include file="footer.jsp"%>