/**
 * 샘플 JS
 * 
 * 각각의 페이지에 대한 js를 작성해서 해당 페이지의 기능만 구현
 * 페이지의 jsp 파일 <head>에 js 파일을 임포트해서 사용
 */

(function(W, D) {
	
	// 여기서 선언할 경우 본 js 파일내에서의 전역 변수? 사실 잘 모름
	// 어쨌든 본 파일의 어떤 함수에서든 공통적으로 사용할 수 있음
	var sampleVar;
	
	/*
	 * html 페이지 로딩 시 실행
	 * 
	 * 바로 등록해야 하는 이벤트 적용
	 * ex) 버튼 클릭, 스크롤 이동 이벤트 등
	 */
	$(document).ready(function() {

		// 버튼 아이디로 선택
		$('#btnId').click(function() {
			// 작업
		});
		
		// 버튼 클래스로 선택
		$('.btnClass').click(function() {
			// 작업
		});
		
		// 아래의 작성한 함수가 즉시 실행이 필요할 경우
		// 객체명.함수명으로 부르면 됨
		$sample.sampleFunc1();
		
	});
	
	W.sample = W.$sample || {}; // 객체 선언
	
	/*
	 * Object 객체안에 필요한 함수들을 작성
	 * 
	 * 생성 방법은 JSON 방식을 사용한 객체 리터럴
	 * ex) 함수명 : function(인자값) {}
	 */
	$sample = {
			
			// 샘플 함수1
			sampleFunc1 : function() {
				// 작업 ex
				var name = "샘플";
				$sample.sampleFunc2(name); //샘플 함수2 호출
			},
			
			// ',(콤마)'로 함수와 함수 구분
			
			// 샘플 함수2
			sampleFunc2 : function(type) {
				// 작업 ex
				console.log(type);
			}
			
	};
	
}(window, document));