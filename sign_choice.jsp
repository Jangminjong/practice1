<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 선택 화면</title>
<!-- 파비콘 이미지 설정 -->
<link rel="shortcut icon" type="image/x-icon"
	href="resources/images/title/icon_300.PNG">
<script type="text/javascript" src="resources/js/sign.js"></script>
</head>
<body>
	<link rel="stylesheet" href="resources/css/sign_choice.css">
	<link rel="stylesheet" href="resources/css/common.css">
	<link rel="stylesheet" href="resources/css/idus.web.min.css">
	<link rel="stylesheet" href="resources/css/vendor.client.min.css">

	<div class="wrap login">
		<div class="head_banner_group"></div>
		<div class="login section root" data-page="signup">
			<div class="login logo">
				<h1>
					<a href="/"> <span class="sp-icon logo"></span>
					</a>
				</h1>
			</div>

			<section class="login-coupon-area--no-border">
				<img class="coupon-img"
					src="https://image.idus.com/static/signup/web_benefit_signup.png"
					alt="">
			</section>

			<section class="login section login-sns">
				<h2 class="login title">정말 간단한 회원가입하기</h2>

				<div class="signup-step wrap">
					<ul>
						<li class="is_active">1</li>
						<li>2</li>
					</ul>
					<h3 class="signup-step title">회원가입 방법 선택하기</h3>
				</div>

				<div class="login-sns wrap h">
					<div class="login-sns item kakaotalk" data-auth-type="kakaotalk">
						<a id="kakao-login-btn" href="javascript:loginWithKakao();"
							data-idus-log="kakaotalk"> <span
							class="sp-icon icon-kakaotalk"></span> 카카오톡으로 가입하기
						</a>
					</div>


					<div class="login-sns item more">
						<button class="show-more-signup-btn" data-ui="toggle_view"
							onclick="showHidden();" >다른 방법으로 가입하기</button>
					</div>

					<div class="hidden" data-ui="toggle_target">
						<div class="login-sns item naver" data-auth-type="naver">
							<a data-sns-login="naver"
								href="/w/naver/login?redirect_uri=https%3A%2F%2Fwww.idus.com%2Fc"
								data-idus-log="naver"> <span class="sp-icon icon-naver"></span>
								네이버로 가입하기
							</a>
						</div>
						<div class="login-sns item facebook" data-auth-type="facebook">
							<a data-sns-login="facebook"
								href="/w/facebook/login?redirect_uri=https%3A%2F%2Fwww.idus.com%2Fc"
								data-idus-log="facebook"> <span
								class="sp-icon icon-facebook"></span> 페이스북으로 가입하기
							</a>
						</div>
						<div class="login-sns item twitter" data-auth-type="twitter">
							<a data-sns-login="twiiter"
								href="/w/twitter/login?redirect_uri=https%3A%2F%2Fwww.idus.com%2Fc"
								data-idus-log="twitter"> <span class="sp-icon icon-twitter"></span>
								트위터로 가입하기
							</a>
						</div>
						<div class="login-sns item email" data-auth-type="email">
							<a
								href="sing.jsp"
								data-idus-log="email"> 이메일로 가입하기 </a>
						</div>
					</div>

					<div class="addition-txt mt30">
						이미 가입하셨다면 <a href="login.jsp">바로 로그인하기</a>
					</div>
				</div>
			</section>
		</div>
	</div>
</body>
</html>