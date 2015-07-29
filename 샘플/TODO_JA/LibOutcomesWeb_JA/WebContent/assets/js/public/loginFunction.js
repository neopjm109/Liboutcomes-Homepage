
$(document).ready(function() {

	/**
	 *	@param	$loginEmail		: 이메일 input
	 *	@param	$loginPassword	: 비밀번호 input
	 *	@param	$btnLogin		: 로그인 버튼
	 *	@param	$btnRegister	: 회원가입 버튼
	 */
	
	var $loginEmail = $("#login_email");
	var $loginPassword = $("#login_password");

	var $btnLogin = $("#button_login");
	var $btnRegister = $("#button_register");
	
	/**
	 *	@brief	키보드 이벤트
	 */
	
	$loginPassword.on("keyup", function(e) {
		if (e.keyCode == '13') {
			// 13은 Enter키
			login();
		}
	});
	
	$btnLogin.on('click', function() {
		login();
	});
	
	/**
	 *	@brief	로그인 기능
	 *	@param	loginEmail		: 로그인할 이메일
	 *	@param	loginPassword	: 로그인할 비밀번호
	 */
	
	function login() {
		var loginEmail = $loginEmail.val();
		var loginPassword = $loginPassword.val();
		
		$.post("LoginCheck", {
			"login_email": loginEmail,
			"login_password": loginPassword
		}, function(success) {
			if (success.indexOf("TRUE") > -1) {
				location.href="/LibOutcomesWeb/";
			} else {
				alert("이메일 또는 비밀번호가 틀렸습니다.\n확인해주세요");
			}
		});
	}
});