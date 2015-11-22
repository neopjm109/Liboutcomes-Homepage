/**
 * 메뉴얼 JS
 * 
 */

(function(W, D) {
	
	/*
	 * html 페이지 로딩 시 실행
	 */
	$(document).ready(function() {
		
		$manual.setGotoTopBtn();
		
		// 메뉴로 버튼 클릭
		$('#gotoTop').click(function() {
			$(window).scrollTop(0);
		});
		
	});
	
	W.manual = W.$manual || {}; // 객체 선언
	
	$manual = {
			
			// 스크롤 높이에 따라 메뉴로 버튼 표시
			setGotoTopBtn : function() {
				
				$(window).scroll(function() {
					if ($(this).scrollTop() > 500) {
						$("#gotoTop").show();
					} else {
						$("#gotoTop").hide();
					}
				});
			}
		
	};
	
}(window, document));