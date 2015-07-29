<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="header.jsp"%>

<!-- 로그인
==========================================-->

<div class="contents">
	<div class="container"><br>
		<div class="jumbotron col-md-6 col-centered">
			<div class="row">
				<div>
					<h1>로그인</h1>
				</div>
				<br>
				<div>
					<label for="login_email">이메일</label>
					<input id="login_email" type="text" class="form-control" placeholder="이메일" style="margin-bottom:10px;"/>
					
					<label for="login_password">비밀번호</label><span class="pull-right"><a href="#" class="text-info"><i class="fa fa-question-circle"></i> 비밀번호를 잊으셨나요?</a></span>
					<input id="login_password" type="password" class="form-control" placeholder="비밀번호" style="margin-bottom:10px;"/>
					
					<button id="button_login" class="form-control btn btn-primary" style="margin-bottom:10px;">로그인</button>
					<button id="button_register" class="form-control btn btn-danger" style="margin-bottom:10px;">회원가입</button>
				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="footer.jsp"%>