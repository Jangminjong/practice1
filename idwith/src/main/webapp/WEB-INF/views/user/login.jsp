<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]><html class="lt-ie9 lt-ie8 lt-ie7"><![endif]-->
<!--[if IE 7]><html class="lt-ie9 lt-ie8"><![endif]-->
<!--[if IE 8]><html class="lt-ie9"><![endif]-->
<!--[if gt IE 8]><html class="ie9"><![endif]-->
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="naver-site-verification"
	content="a8c6e5633b597db7b48d05e4a7d247011f6794ec" />
<meta name="google-site-verification"
	content="NnaPRa-jWBb5SnBiwjEZkMqm1pFS2Y8mVdUG0nJqO4c" />
<title>아이디어스 | 로그인</title>
<meta name="theme-color" content="#ffffff" />


<link rel="stylesheet" href="resources/css/login.css" />
<link rel="stylesheet" href="resources/css/sign.css" />

<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="resources/js/login.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript" src="resources/js/socialLogin.js"></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>

<!-- 파비콘 이미지 설정 -->
<link rel="shortcut icon" type="image/x-icon"
	href="resources/images/title/icon_300.PNG">
</head>


<link rel="apple-touch-icon" sizes="384x384"
	href="/resources/dist/images/app-icon/icon_300.png">
<link rel="apple-touch-icon" sizes="256x256"
	href="/resources/dist/images/app-icon/icon_300.png">
<link rel="apple-touch-icon" sizes="192x192"
	href="/resources/dist/images/app-icon/icon_192.png">
<link rel="apple-touch-icon" sizes="128x128"
	href="/resources/dist/images/app-icon/icon_120.png">
<link rel="apple-touch-icon" sizes="96x96"
	href="/resources/dist/images/app-icon/icon_96.png">
<link rel="manifest" href="/manifest.json">

<!-- Intersection Observer polyfill -->
<!--  <script
	src="https://polyfill.io/v3/polyfill.js?features=IntersectionObserver&ua=ie/11"></script>-->
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=5.0, user-scalable=0 viewport-fit=cover" />
<meta name="application-name" content="아이디어스" />
<meta name="keywords" content="핸드메이드, 수공예, 수제 먹거리" />
<meta property="fb:app_id" content="1410666675867984" />
<meta name="description"
	content="취향 맞춤 작품 구매부터 취미 생활까지, 아이디어스로 일상에 특별함을 잇다!" />
<meta property="og:title" content="핸드메이드 라이프스타일 플랫폼, 아이디어스" />
<meta property="og:type" content="website" />
<meta property="og:description"
	content="취향 맞춤 작품 구매부터 취미 생활까지, 아이디어스로 일상에 특별함을 잇다!" />
<meta property="og:url"
	content="http://www.idus.com/w/login?redirect_uri=https%3A%2F%2Fwww.idus.com%2Fw%2Fproduct%2Fd1e300b8-c0c7-48bd-803f-dfed5543954a%3Fkeyword_channel%3Duser%26search_word%3D%25EB%25A7%259B%25EC%259E%2588%25EB%258A%2594%2520%25EA%25B9%2590%25EB%25B0%25A4" />
<meta property="og:image"
	content="http://www.idus.com/resources/dist/images/ogimg-idus.png?ver=2.0" />
<link rel="canonical"
	href="http://www.idus.com/w/login?redirect_uri=https%3A%2F%2Fwww.idus.com%2Fw%2Fproduct%2Fd1e300b8-c0c7-48bd-803f-dfed5543954a%3Fkeyword_channel%3Duser%26search_word%3D%25EB%25A7%259B%25EC%259E%2588%25EB%258A%2594%2520%25EA%25B9%2590%25EB%25B0%25A4" />
<script>
	window.__client_env__ = 'production';
	window.CNN_DOMAIN = 'https://cnn.idus.com';
</script>
<!-- project src -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">



<!-- Kakao web SDK -->
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<!-- Signin With Apple -->
<script type="text/javascript"
	src="https://appleid.cdn-apple.com/appleauth/static/jsapi/appleid/1/en_US/appleid.auth.js"></script>

<!-- tracker vendors -->
<!-- <script async
	src="https://www.googletagmanager.com/gtag/js?id=AW-775263643"></script>
<script type="text/javascript" charset="UTF-8"
	src="//t1.daumcdn.net/adfit/static/kp.js"></script>
<script type="text/javascript" src="//static.criteo.net/js/ld/ld.js"
	async="true"></script>
<script src="//wcs.naver.net/wcslog.js"></script> -->

<!-- trackers -->
<script>
	vuepack.externals.VendorLogger.sendLog([ {
		vendorName : 'google_analytics',
		eventName : 'pageview'
	}, {
		vendorName : 'google_ads',
		eventName : 'page_view'
	}, {
		vendorName : 'facebook',
		eventName : 'PageView'
	}, {
		vendorName : 'kakao',
		eventName : 'pageView'
	}, ]);
</script>
<!-- sitelink - search box -->
<script type="application/ld+json">
        {
          "@context": "http://schema.org",
          "@type": "WebSite",
          "url": "https://www.idus.com/",
          "potentialAction": {
            "@type": "SearchAction",
            "target": "https://www.idus.com/search?word={ring}",
            "query-input": "required name=ring"
          }
        }
        </script>
<script type="application/ld+json">
            {
                "@context": "http://schema.org",
                "@type": "Organization",
                "name": "아이디어스",
                "url": "https://www.idus.com",
                "sameAs": [
                    "https://www.instagram.com/idus.me",
                    "https://post.naver.com/idus_me",
                    "https://www.facebook.com/idus.me",
                    "https://blog.naver.com/idus_me",
                    "https://play.google.com/store/apps/details?id=kr.backpackr.me.idus",
                    "https://apps.apple.com/kr/app/id872469884",
                    "https://twitter.com/idus_kr"
                ]
            }
        </script>
</head>
<body>
	<div data-vue="token"></div>
	<div data-vue="globalUser"></div>
	<div data-vue="resizeHandler"></div>
	<script>
		// image-only-button 위해
		if (!window.localStorage.getItem('idus-product-card-img-only-path')
				|| window.localStorage
						.getItem('idus-product-card-img-only-path') !== window.location.pathname) {
			window.localStorage.setItem('idus-product-card-img-only', 'false');
		}
		vuepack.createResizeHandler('[data-vue="resizeHandler"]');
		vuepack.createUser('[data-vue="globalUser"]', {
			id : 0,
			thumb : '',
			age : 0,
			gender : 'none',
			grade : 0,
			uuid : '',
			isVip : false
		});
		vuepack.createToken('[data-vue="token"]', {
			token : {},
			userId : 0
		});

		/* Idus Log V2 */
		vuepack.externals.IdusLog.Logger
				.setIdentityId('ap-northeast-2:2dc1cfd9-6d87-4b2e-86e9-527ab8d8b91b');
		vuepack.externals.IdusLog.Logger
				.initialize({
					isApp : false,
					region : 'ap-northeast-2',
					identityPoolId : 'ap-northeast-2:f4c028af-cb84-43cc-a8e5-b047d272b323',
					accountId : '773161815152',
					userData : {
						userId : '',
						userAge : '',
						userGrade : '',
						userGender : 'none'
					},
					appData : {
						env : 'prod',
						appVersion : '1630657354'
					}
				});
	</script>
	
	<script>
		Kakao.init('487ca5895feb7a04e42984525f8de371');
		console.log(Kakao.isInitialized());
	</script>

	<div class="wrap-login">


		<div class="login wrap">
			<div data-v-668c286c="" class="login_container">

				<div data-v-668c286c="" class="login_head_logo">
					<h1 data-v-668c286c="">
						<a data-v-668c286c="" href="##"> <span data-v-668c286c=""
							class="sp-icon logo"></span>
						</a>
					</h1>
				</div>
				<div data-v-668c286c="" class="login_head_text">
					<p data-v-668c286c="" class="need_login">
						<span data-v-668c286c="" class="background_text"><strong
							data-v-668c286c="" class="text">로그인</strong><span
							data-v-668c286c="" class="background"></span></span>이 필요한 서비스입니다.
					</p>
					<!-- https://image.idus.com/static/signup/web_benefit_signup.png -->
					<img data-v-668c286c="" src="resources/images/login/coupon01.PNG"
						alt="" class="coupon_img">
				</div>
				<div data-v-668c286c="" class="login_signup_content">
					<div data-v-668c286c="" class="border_and_text">
						<span data-v-668c286c="">간편 로그인/회원가입</span>
					</div>
					<div data-v-0eb5c308="" data-v-668c286c="" class="vertical_buttons">
						<a data-v-0eb5c308="" idus-log-selector="third_party"
							idus-log="kakaotalk" class="bar_button kakao" href="javascript:kakaoSign()"><span
							data-v-0eb5c308="" class="sp-icon icon-kakaotalk"></span> 카카오로
							3초만에 시작하기 </a> <a data-v-0eb5c308="" idus-log-selector="third_party"
							idus-log="email" href="sign.do" class="bar_button email">이메일로
							가입하기</a>
					</div>
					<div data-v-38bd83a8="" data-v-668c286c=""
						class="horizontal_buttons">
						<a data-v-38bd83a8="" idus-log-selector="third_party"
							id="naver_id_login"
							class="radius_button naver"><span data-v-38bd83a8=""
							idus-log="naver" class="sp-icon icon-naver"></span></a> <a
							data-v-38bd83a8="" idus-log-selector="third_party"
							href="/w/facebook/login?redirect_uri=https%3A%2F%2Fwww.idus.com%2Fw%2Fproduct%2Fd1e300b8-c0c7-48bd-803f-dfed5543954a%3Fkeyword_channel%3Duser%26search_word%3D%EB%A7%9B%EC%9E%88%EB%8A%94+%EA%B9%90%EB%B0%A4"
							class="radius_button facebook"><span data-v-38bd83a8=""
							idus-log="facebook" class="sp-icon icon-facebook"></span></a> <a
							data-v-38bd83a8="" idus-log-selector="third_party"
							href="/w/twitter/login?redirect_uri=https%3A%2F%2Fwww.idus.com%2Fw%2Fproduct%2Fd1e300b8-c0c7-48bd-803f-dfed5543954a%3Fkeyword_channel%3Duser%26search_word%3D%EB%A7%9B%EC%9E%88%EB%8A%94+%EA%B9%90%EB%B0%A4"
							class="radius_button twitter"><span data-v-38bd83a8=""
							idus-log="twitter" class="sp-icon icon-twitter"></span></a> <a
							data-v-38bd83a8="" idus-log-selector="third_party" href=""
							class="radius_button apple"><span data-v-38bd83a8=""
							idus-log="apple" class="sp-icon icon-apple"></span></a>
					</div>
				</div>
				
				<script type="text/javascript">
                    	var naver_id_login = new naver_id_login("aBJVgRXccefohvFJVX65", "http://localhost:8080/mpweb/naver.do");
                		var state= naver_id_login.getUniqState();           	
                		naver_id_login.setDomain("http://localhost:8080/mpweb");	//  서비스URL
                 		naver_id_login.setState(state);
                 		naver_id_login.init_naver_id_login("");
                    </script>
				
				<div data-v-668c286c="" class="login_signin_content">
					<div data-v-668c286c="" class="border_and_text">
						<span data-v-668c286c="">이메일 로그인</span>
					</div>
					<div data-v-22bdcf3e="" data-v-668c286c=""
						class="email_login_container">
						<form action="index.do" method="post" class="form" id="form">
							<div data-v-22bdcf3e="">
								<input data-v-22bdcf3e="" id="email_login_input" type="email"
									placeholder="이메일" required="required" class="login_input" name="user_id">
								<p data-v-22bdcf3e="" class="verify_error_message"
									id="email_error">필수 항목입니다.</p>

								<input data-v-22bdcf3e="" id="password_login_input"
									type="password" placeholder="비밀번호" required="required"
									class="login_input" name="user_pwd">
								<p data-v-22bdcf3e="" class="verify_error_message"
									id="password_error">필수 항목입니다.</p>
							</div>
							<div data-v-22bdcf3e="" class="email_login_option">
								<div data-v-22bdcf3e="" class="check_label">
									<div data-v-22bdcf3e="" class="input_checkbox">
										<input data-v-22bdcf3e="" type="checkbox" class="bp">
									</div>
									<label data-v-22bdcf3e="" for="emailsave"> 이메일 저장하기 </label>
								</div>
								<a data-v-22bdcf3e="" id="find_pw_logging" href="/w/reauth">아이디
									/ 비밀번호 찾기</a>
							</div>
							<input type="submit" data-v-32d88566="" data-v-22bdcf3e=""
								class="CommonButton login_button CommonButton--middle CommonButton--white" id="login_btn" value="로그인">
						</form>
					</div>
				</div>

			</div>
		</div>
	</div>




	
	<div data-vue="FooterModal"></div>
	<!-- <script>
		vuepack.create([ {
			selector : '[data-vue="FooterModal"]',
			component : 'FooterModal'
		} ]);
	</script> -->
	<!-- =========================================================================================-->


	<!-- div WRAP -->
	<!-- 로그인 체크 -->
    <script>
     /*$().ready(function (){
		$('#login_btn').on("click", function(){
			alert('안녕');
			$.ajax({
				url: "${pageContext.request.contextPath}/loginCheck.do",
				type: "GET",
				data: {
						"email":$("#email").val()
					},
				success: function(data){
					
				},
				error: function(request, status, error){
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}
			});
		});
	});*/ 
	
     $(document).ready(function (){
		$('#login_btn').click(function (){
			const email = $("#email_login_input").val();
			const password = $("#password_login_input").val();
			console.log(email);
			console.log(password);
			
			$.ajax({
				url: "${pageContext.request.contextPath}/loginCheck.do",
				type: "GET",
				data: {
						"email": $("#email_login_input").val(),
						"password": $("#password_login_input").val()
					},
				success: function(data){
					if(data == 0){
						alert('아이디와 비밀번호를 다시 확인해주세요');
					}else if(data == 1){
						alert('로그인 성공');
						document.getElementById('form').onsubmit = "return true";
						location.replace("/index.do");
					}
				},
				error: function(request, status, error){
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}
			});
		});
	}); 
	</script>
</body>
</html>
