<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
    <nav id="footer">
        <div class="container">
			<div class="col-md-6">
				Copyright (c) LibOutcomes Hansung Univ. Sung Jae Park Alright Reserved
			</div>
			
			<div class="col-md-6">
				<big>
					<a href="#">박성재</a>
				</big><br>
				<small>
					한성대 지식정보학과<br><br>
					서울 특별시 삼선구 삼선동2가 389 한성대학교 연구관 529호
				</small>
			</div>
        </div>
    </nav>
	
	<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/assets/js/jquery.isotope.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/assets/js/owl.carousel.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/assets/js/main.js" type="text/javascript"></script> 
    
    <!-- include summernote js/lang -->
	<script src="${pageContext.request.contextPath}/assets/js/summernote.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/summernote-ko-KR.js"></script>
    
    <!-- 액션 -->
	<script src="${pageContext.request.contextPath}/assets/js/public/loginFunction.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/public/boardFunction.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/public/referenceFunction.js"></script>
	
	<!-- Script to Activate the Summernote -->
	<script>
		$(document).ready(function() {
			$('#summernote').summernote({
				height: 300,
				lang: 'ko-KR'
			});
		});
	</script>
 
</body>
 
</html>