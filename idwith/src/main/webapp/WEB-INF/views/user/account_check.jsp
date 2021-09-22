<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디어스 | 아이디 비밀번호 찾기</title>

<link rel="stylesheet" href="resources/css/account.css" />
<link rel="stylesheet" href="resources/css/vendor.client.min.css" />
<link rel="stylesheet" href="resources/css/idus.web.min.css" />

<!-- 파비콘 이미지 설정 -->
<link rel="shortcut icon" type="image/x-icon"
	href="resources/images/title/icon_300.PNG">
</head>
<body>
	<div class="wrap-login">
		<div class="login wrap">
			<div class="login section root">
				<div class="login logo">
					<h1>
						<a href="index.do"> <img src="resources/images/header/logo.svg"
							alt="IDUS, Unique Lifestyle Guide">
						</a>
					</h1>
				</div>

				<section class="login section">
					<h2 class="login title">계정 확인</h2>
					<c:choose>
						<c:when test="${ user_phone eq null }">
							<p class="login para">
								회원가입한 계정이 존재하지 않습니다.
							</p>
							<div class="login input-group">
								<a class="ui_btn--red" href="sign_choice.do">회원가입하러 가기</a> 
							</div>
						</c:when>
						
						<c:when test="${ user_phone ne null }">
						<form action="account_step1.do" method="post">
							<div class="login img-bg"
								style="background-image: url('https://image.idus.com/image/files/d247655ca3e545e89a48a43aa9318b3f.jpg');"></div>
							<p class="login para">
								<strong>${user_phone}</strong>로 <br>회원가입한 계정을 찾았습니다.
							</p>
							<input type="hidden" name="user_phone" id="user_phone" value="${user_phone }">
							<div class="login input-group">
								<input type="submit" class="ui_btn--red" value="이 계정은 내꺼에요.">
								<a class="ui_btn--redline" href="sign_choice.do">처음 보는 계정이에요.</a>
							</div>
						</form>
						</c:when>
					</c:choose>
				</section>
			</div>
		</div>

	</div>
	<!-- div WRAP -->
	
	<div id="criteo-tags-div" style="display: none;"></div>
</body>
</html>