/**
 * 로그인 JS
 * 
 */

(function(W, D) {
	
	/*
	 * html 페이지 로딩 시 실행
	 */
	$(document).ready(function() {
		
		// 로그인 버튼 클릭 이벤트
		$('#loginBtn').click(function() {
			var email = $('#login_email').val();
			var password = $('#login_password').val();

			$login.loginCheck(email, password);
		});
		
	});
	
	W.login = W.$login || {}; // 객체 선언
	
	$login = {
		
			// 로그인 확인
			loginCheck : function(email, password) {

				if (email == "") {
					alert("이메일을 입력하세요.");
					return;

				} else if (password == "") {
					alert("비밀번호를 입력하세요.");
					return;
				} 
				
				// Ajax post 방식으로 전송
				$.ajax({
					url : "Login",
					type : "POST",
					data : {
						"email" : email,
						"password" : password
					},
					success : function(data) {
						if (data.indexOf("TRUE") > -1) { // 성공
							goUrl('/LibOutcomesWeb/');
							
						} else { // 실패
							alert("아이디와 비밀번호를 확인하세요.");
						}
					}
				});
			}
	
	};
	
}(window, document));