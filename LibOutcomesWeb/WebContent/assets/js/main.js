/**
 * 메인 JS
 * 
 */

(function(W, D) {
	
	/*
	 * html 페이지 로딩 시 실행
	 */
	$(document).ready(function() {
		
		// ∨ 버튼 클릭 시 슬라이딩 이동
		$('.page-scroll').click(function() {
			if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
				var target = $(this.hash);
				target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
				if (target.length) {
					$('html,body').animate({
						scrollTop: target.offset().top - 40
					}, 900);
					return false;
				}
			}
		});
		
	});
	
	W.main = W.$main || {}; // 객체 선언
	
	$main = {
		
	};
	
}(window, document));