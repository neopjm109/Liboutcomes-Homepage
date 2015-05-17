<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>

<div class="contents">

	<!--
		사용된 이미지 슬라이더 : Owl Carousel
		@todo
			이미지 내용은 변경 예정입니다. 
	-->
	<div class="col-lg-8 col-centered col-no-padding">
		<div id="index_slider" class="owl-carousel owl-theme text-center">
			<div>
				<img src="${pageContext.request.contextPath}/assets/img/fullimage1.jpg">
			</div>
			<div>
				<img src="${pageContext.request.contextPath}/assets/img/fullimage2.jpg">
			</div>
			<div>
				<img src="${pageContext.request.contextPath}/assets/img/fullimage3.jpg">
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
				<img src="${pageContext.request.contextPath}/assets/img/Lighthouse.jpg">
				<span class="column-list-description">
					<div>
						Lighthouse
					</div>
				</span>
			</div>
			<div class="col-xs-4 col-no-padding">
				<img src="${pageContext.request.contextPath}/assets/img/Penguins.jpg">
				<span class="column-list-description">
					<div>
						Penguins
					</div>
				</span>
			</div>
			<div class="col-xs-4 col-no-padding">
				<img src="${pageContext.request.contextPath}/assets/img/Desert.jpg">
				<span class="column-list-description">
					<div>
						Desert
					</div>
				</span>
			</div>
		</div>
	</div>
	
	<div class="clearfix"></div><br>
</div>


<%@ include file="footer.jsp"%>