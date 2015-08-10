
$(document).ready(function() {
	
	/**
	 * @brief	View로 이동
	 * @param	.board_list		: 버튼의 class 값
	 * @param	name			: 버튼의 name 값인 게시글의 id
	 */
	$(".board_list").on("click", function() {
		
		var id = $(this).attr('name');
		
		location.href = "BoardView?num="+id;
		
	});
	
	/**
	 * @brief	글 삭제하기
	 * @param	#board_delete	: 버튼의 id 값
	 */
	$("#board_delete").on("click", function() {
		
		var id = $(this).attr('name');
		
		location.href = "BoardDelete?num="+id;
	});
	
	/**
	 * @brief	글 수정 페이지로 이동
	 * @param	#board_modify	: 버튼의 id 값
	 */
	$("#board_modify").on("click", function() {
		
		var id = $(this).attr('name');
		
		location.href = "BoardModify?num="+id;
	});

	
});