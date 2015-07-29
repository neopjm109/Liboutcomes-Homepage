$(document).ready(function() {
	
	/**
	 *	@param	$boardList	: 게시판 리스트 테이블
	 */
	
	var $boardList = $("#board_list");
	
	/**
	 *	@brief	tr 클릭시 View로 넘어가기
	 *	@param	id	: 게시글의 id 찾기
	 */
	
	$boardList.on("click", "tr", function() {
		
		var id = $(this).find('td').eq(0).text() * 1;
		
		location.href = "DataScienceManual/View?id="+id;
		
	});
	
});