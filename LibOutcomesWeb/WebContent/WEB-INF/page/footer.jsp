<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>

	<!-- Footer -->
	<footer>
		<div class="container">
			<div class="col-md-6">
				<p>Copyright &copy; LibOutcomes Sung Jae Park Alright Reserved</p>
			</div>
			<div class="col-md-6">
				<big>
					<a href="#">박성재</a>
				</big><br>
				<small>
					한성대 지식정보학부<br><br>
					서울특별시 성북구 삼선교로 16길 116 한성대학교 연구관 528호
				</small>
			</div>
		</div>
	</footer>
	
	<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
	<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.isotope.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/animation.js"></script>
	
	<!-- include Summernote js/lang -->
    <script src="${pageContext.request.contextPath}/assets/js/summernote.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/summernote-ko-KR.js"></script>
    
    <!-- 액션 -->
    <script src="${pageContext.request.contextPath}/assets/js/public/loginFunction.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/public/boardFunction.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/public/referenceFunction.js"></script>
    
    <!-- Script to Activate the Summernote -->
    <script>
        $(document).ready(function() {
            $('.summernote').summernote({
                height: 300,
                lang: 'ko-KR'
            });
        });
    </script>
    
</body>
</html>