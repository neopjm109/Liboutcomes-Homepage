<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- css -->
<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="assets/css/common.css" />
<!-- js -->
<script type="text/javascript" src="assets/js/plugins/jquery.min.js"></script>
<script type="text/javascript" src="assets/js/plugins/bootstrap.min.js"></script>
<script type="text/javascript" src="assets/js/common.js"></script>
<script type="text/javascript" src="assets/js/login.js"></script>

<title>LIBOUTCOMES</title>
</head>
<body>
    <!-- hedaer -->
    <%@ include file="Header.jsp" %>
    <!-- /.header -->
    
    <!-- contents -->
    <div class="container mt120 mb80"><br>
        <div class="lib-login jumbotron center-block">

            <div>
                <h1>로그인</h1>
            </div><br>
            <div>
                <label for="login_email">이메일</label>
                <input id="login_email" type="text" class="form-control mb10" placeholder="이메일"/>
                
                <label for="login_password">비밀번호</label>
                <span class="pull-right">
                    <a href="#" class="text-info">
                        <i class="fa fa-question-circle"></i> 비밀번호를 잊으셨나요?
                    </a>
                </span>
                <input id="login_password" type="password" class="form-control mb10" placeholder="비밀번호"/>
                
                <button id="loginBtn" class="form-control btn btn-primary mt20">로그인</button>
                <button id="registerBtn" class="form-control btn btn-danger mt10">회원가입</button>
            </div>
            
        </div>
    </div>
    <!-- /.contents -->

    <!-- footer -->
    <%@ include file="Footer.jsp" %>
    <!-- /.footer -->
</body>
</html>