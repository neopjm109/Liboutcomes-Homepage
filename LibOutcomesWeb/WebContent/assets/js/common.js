/**
 * 공용 JS
 * 
 */

$(document).ready(function() {

});

/*
 * 해당 페이지로 이동
 * ex. goUrl('이동할 WebServlet명');
 */
function goUrl(url) {
	window.location.href = url;
}


/*
 * 로그아웃
 */
function logoutProcess() {
	if (confirm("로그아웃 하시겠습니까?")) {
		goUrl('Logout');
	}
}