/**
 * 일반 게시판 글 내용 JS
 * 
 */

(function(W, D) {
	
	/*
	 * html 페이지 로딩 시 실행
	 */
	$(document).ready(function() {

		// 글 수정 버튼
		$('#modifyBtn').click(function() {
			var id = $(this).attr('name');
			goUrl("BoardNormalModify?num="+id);
		});
		
		// 글 삭제 버튼
		$('#deleteBtn').click(function() {
			if (confirm("정말로 글을 삭제하시겠습니까?")) {
				var id = $(this).attr('name');
				goUrl("BoardNormalDelete?num="+id);
			}
		});
		
	});
	
	W.boardNormalView = W.$boardNormalView || {}; // 객체 선언
	
	$boardNormalView = {
		
	};
	
}(window, document));