<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />

<link rel="stylesheet" href="resources/css/account.css" />
<link rel="stylesheet" href="resources/css/Search/UserSearch.css" />
<link rel="stylesheet" href="resources/css/vendor.client.min.css" />
<link rel="stylesheet" href="resources/css/idus.web.min.css" />

<!-- 파비콘 이미지 설정 -->
<link rel="shortcut icon" type="image/x-icon"
	href="resources/images/title/icon_300.PNG">
</head>
<body>
	<div class="wrap-login">
		<div class="head_banner_group"></div>
		<div class="login wrap">
			<div class="login section root" data-page="reauth-complete">
				<div class="login logo">
					<h1>
						<a href="/"> <img src="resources/images/header/logo.svg"
							alt="IDUS, Unique Lifestyle Guide">
						</a>
					</h1>
				</div>

				<!-- <h1>계정찾기 - 완료 (SNS계정)</h1> -->
				<section class="login section">
					<h2 class="login title">계정 확인 완료</h2>
					<div class="login img-bg"
						style="background-image: url('https://image.idus.com/image/files/d247655ca3e545e89a48a43aa9318b3f.jpg');"></div>
					<p class="login para">
						<strong>${userInfo}</strong> 님 안녕하세요. <br> 이전에 사용한 <strong><!-- jstl 사용 : 가입방식 --></strong>
						계정 확인이 완료되었습니다.
					</p>
					<form data-form="reauth" class="login input-group"
						action="login.do"
						novalidate="novalidate">
						<input type="hidden" name="login_type" value="LoginUserTypeNaver">
						<button class="ui_btn--red" type="submit">
							로그인하러 가기
						</button>
					</form>
				</section>

			</div>
		</div>
	</div>
	<!-- div WRAP -->
</body>
</html>