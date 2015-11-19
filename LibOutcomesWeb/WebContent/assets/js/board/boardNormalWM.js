/**
 * 일반 게시판 글 작성 JS
 * 
 */

(function(W, D) {
	
	/*
	 * html 페이지 로딩 시 실행
	 */
	$(document).ready(function() {
		
		// WYSIWYG EDITOR summernote 초기화
		$('.summernote').summernote({
            height: 300,
            lang: 'ko-KR'
        });
		
		// 취소 버튼
		$('#cancleBtn').click(function() {
			goUrl('BoardNormal');
		});
		
	});
	
	W.boardNormalWM = W.$boardNormalWM || {}; // 객체 선언
	
	$boardNormalWM = {
		
	};
	
}(window, document));