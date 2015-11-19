/**
 * 일반 게시판 JS
 * 
 */

(function(W, D) {
	
	/*
	 * html 페이지 로딩 시 실행
	 */
	$(document).ready(function() {
		
		$boardNormal.setCategoryItem();
		
		// 글 쓰기 버튼
		$('#writeBtn').click(function() {
			goUrl('BoardNormalWrite');
		});

	});
	
	W.boardNormal = W.$boardNormal || {}; // 객체 선언
	
	$boardNormal = {
			
			// 카테고리 클릭 시 해당 글만 보여주기
			setCategoryItem : function() {
				
				var $container = $('#lightbox');
		        $container.isotope({
		            filter: '*',
		            animationOptions: {
		                duration: 750,
		                easing: 'linear',
		                queue: false
		            }
		        });
		        $('.cat a').click(function() {
		            $('.cat .active').removeClass('active');
		            $(this).addClass('active');
		            var selector = $(this).attr('data-filter');
		            $container.isotope({
		                filter: selector,
		                animationOptions: {
		                    duration: 750,
		                    easing: 'linear',
		                    queue: false
		                }
		            });
		            return false;
		        });
			}
		
	};
	
}(window, document));