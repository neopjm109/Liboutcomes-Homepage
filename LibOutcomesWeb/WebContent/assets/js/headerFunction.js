
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
		
		alert($loginEmail + " " + $loginPassword);
	});
	

});