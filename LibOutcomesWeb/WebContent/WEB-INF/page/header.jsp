<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<title>LIBOUTCOMES</title>
	<meta charset="utf-8"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/public.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/index.css">
</head>

<body>

<div id="wrapper">
	<div id="header_container" class="header">
		<div id="header" class="row">
			<div id="logo">
				<span>
					<a href="/LibOutcomesWeb" style="color:white;">LIBOUTCOMES</a>
				</span>
			</div>
			<div id="menu_container">
				<div id="menu">
					<ul>
						<li>
							<span>
								<a href="Project">프로젝트 소개</a>
							</span>
						</li><li>
							<span>
								<a href="Library">도서관 DB</a>
							</span>
						</li><li class="popup_menu_parent">
							<span>
								<a href="DataScience">데이터 사이언스</a>
							</span>

							<div class="popup_menu">
								<ul>
									<li>
										<a href="DataScienceManual">메뉴얼</a>
									</li><li>
										<a href="DataScienceReference">적용사례</a>
									</li>
								</ul>
							</div>
						</li><li style="position:relative;">
							<button id="menu_login" class="btn btn-blue">로그인</button>
							<button id="menu_logout" class="btn btn-red none">로그아웃</button>
							<div id="login_dialog">
								<div class="form-container">
									<input class="form-default" type="text" id="login_email" placeholder="E-MAIL"/>
									<input class="form-default" type="password" id="login_password" placeholder="비밀번호"/>
									<button id="login_button" class="btn btn-blue" style="width:100%;">로그인</button>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
