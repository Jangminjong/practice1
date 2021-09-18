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
	
	<!-- <script type="text/javascript" src="resources/js/sign.js"></script> -->
	<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
	<script type="text/javascript" src="resources/js/socialLogin.js"></script>
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
	<link rel="stylesheet" href="resources/css/sign_choice.css" />
	<link rel="stylesheet" href="resources/css/common.css">
	<link rel="stylesheet" href="resources/css/idus.web.min.css">
	<link rel="stylesheet" href="resources/css/vendor.client.min.css">

</head>
<body>
	
	<div class="wrap login">
		<div class="head_banner_group"></div>
		<div class="login section root" data-page="signup">
			<div class="login logo">
				<h1>
					<a href="index.do"><img src="resources/images/header/logo.svg" />
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
				
				<script>
					Kakao.init('487ca5895feb7a04e42984525f8de371');
					console.log(Kakao.isInitialized());
				</script>

				<div class="login-sns wrap h">
					<div class="login-sns item kakaotalk" data-auth-type="kakaotalk">
						<a id="kakao-login-btn" href="javascript:kakaoSign()"
							data-idus-log="kakaotalk"> <span
							class="sp-icon icon-kakaotalk"></span> 카카오톡으로 가입하기
						</a>
						<a id="cancel" href="javascript:cancel()">연결끊기</a>
					</div>
					
					<!-- '네이버 아이디로 가입하기' 버튼 -->
					<div id="naver_id_login" class="login-sns item naver" data-auth-type="naver"></div>

                    <script type="text/javascript">
                    	var naver_id_login = new naver_id_login("aBJVgRXccefohvFJVX65", "http://localhost:8080/mpweb/naver.do");
                		var state= naver_id_login.getUniqState();           	
                		naver_id_login.setDomain("http://localhost:8080/mpweb");	//  서비스URL
                 		naver_id_login.setState(state);
                 		naver_id_login.init_naver_id_login("");
                    </script>
                    
					
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
								href="sign.do"
								data-idus-log="email"> 이메일로 가입하기 </a>
						</div>
					</div>

					<div class="addition-txt mt30">
						이미 가입하셨다면 <a href="login.do">바로 로그인하기</a>
					</div>
				</div>
			</section>
		</div>
	</div>
	
	
</body>
</html>