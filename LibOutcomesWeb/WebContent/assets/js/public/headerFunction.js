
$(document).ready(function() {

	/*
	*		팝업 메뉴
	*/

	var $popupMenuParent = $(".popup_menu_parent");

	$popupMenuParent.on('mouseover', function() {
		var $popupMenu = $(this).find('.popup_menu');

		$popupMenu.show();
	});

	$popupMenuParent.on('mouseleave', function() {
		var $popupMenu = $(this).find('.popup_menu');

		$popupMenu.hide();
	});
	

	/*
	 * 		로그인 로그아웃 버튼 이벤트
	 */

	var $loginMenu = $("#menu_login");
	var $loginButton = $("#login_button");
	var $logoutButton = $("#menu_logout");
	
	$loginMenu.on('click', function() {
		if ( $("#login_dialog").hasClass("dialog_on") ) {
			$("#login_dialog").animate({"height": "0px"});
			$("#login_dialog").removeClass("dialog_on");
		} else {
			$("#login_dialog").animate({"height": "150px"});
			$("#login_dialog").addClass("dialog_on");
		}
	});
	
	$loginButton.on('click', function() {
		var $loginEmail = $("#login_email").val();
		var $loginPassword = $("#login_password").val();
		
		$.post("LoginCheck", {
			"login_email": $loginEmail,
			"login_password": $loginPassword
		}, function(success) {
			if (success.indexOf("TRUE") > -1) {
				location.reload();
			} else {
				alert("이메일 또는 비밀번호가 틀렸습니다.\n확인해주세요");
			}
		});
	});
	
	$logoutButton.on('click', function() {
		location.href="Logout";
	});
	
});