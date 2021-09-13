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
<script>
	if ('serviceWorker' in navigator) {
		window
				.addEventListener(
						'load',
						function() {
							navigator.serviceWorker
									.register('/sw.js')
									.then(
											function(registration) {
												// Registration was successful
												console
														.log(
																'ServiceWorker registration successful with scope: ',
																registration.scope);
											},
											function(err) {
												// registration failed :(
												console
														.log(
																'ServiceWorker registration failed: ',
																err);
											});
						});
	}
</script>
<!-- Intersection Observer polyfill -->
<script
	src="https://polyfill.io/v3/polyfill.js?features=IntersectionObserver&ua=ie/11"></script>
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
<link rel="icon" href="/resources/favicon_32.ico" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<script>
	// 개발자 console에 아이디어스 로고 노출
	if (window.matchMedia
			&& window.matchMedia('(prefers-color-scheme: dark)').matches) {
		// 다크모드일 경우
		console
				.log(
						'%cidus',
						'background-size: contain; background-repeat: no-repeat; background-position: center; background-image: url("https://www.idus.com/resources/dist/images/logo.svg"); width: 300px; height: auto; font-size: 90px; color: transparent; background-color: white;');
		console.log('%cUnique Lifestyle Guide',
				'font-weight: bold; color: white; font-size: 15px;');
		console
				.log(
						'%cWant to join %cidus%c? 👉 https://www.notion.so/idus/Join-idus-61e7ca6d4b6d4211a7506e8773cc78fd',
						'font-size: 10px; color: white;',
						'background-size: contain; background-repeat: no-repeat; background-position: center; background-image: url("https://www.idus.com/resources/dist/images/logo.svg"); width: 300px; height: auto; font-size: 10px; color: transparent; background-color: white;',
						'font-size: 10px; color: white;');
	} else {
		// 아닐경우
		console
				.log(
						'%cidus',
						'background-size: contain; background-repeat: no-repeat; background-position: center; background-image: url("https://www.idus.com/resources/dist/images/logo.svg"); width: 300px; height: auto; font-size: 90px; color: transparent; background-color: #515151;');
		console.log('%cUnique Lifestyle Guide',
				'font-weight: bold; color: #515151; font-size: 15px;');
		console
				.log(
						'%cWant to join %cidus%c? 👉 https://www.notion.so/idus/Join-idus-61e7ca6d4b6d4211a7506e8773cc78fd',
						'font-size: 10px; color: #515151;',
						'background-size: contain; background-repeat: no-repeat; background-position: center; background-image: url("https://www.idus.com/resources/dist/images/logo.svg"); width: 300px; height: auto; font-size: 10px; color: transparent; background-color: #515151;',
						'font-size: 10px; color: #515151;');
	}
</script>
<link rel="stylesheet"
	href="/resources/dist/css/idus.web.min.css?__v=1630657354">
<link rel="stylesheet"
	href="/resources/dist/css/vendor.client.min.css?__v=1630657354">
<script src="/resources/dist/js/vendor.client.min.js?__v=1630657354"></script>
<script src="/resources/dist/js/vuepack.js?__v=1630657354"></script>

<link rel="stylesheet"
	href="//cdn.flowplayer.com/releases/native/v2.5.14/style/flowplayer.css">
<script
	src="//cdn.flowplayer.com/releases/native/v2.5.14/flowplayer.min.js"></script>
<script
	src="//cdn.flowplayer.com/releases/native/v2.5.14/plugins/dash.min.js"></script>
<script
	src="//cdn.flowplayer.com/releases/native/v2.5.14/plugins/thumbnails.min.js"></script>
<script
	src="//cdn.flowplayer.com/releases/native/v2.5.14/plugins/speed.min.js"></script>
<script
	src="//cdn.flowplayer.com/releases/native/v2.5.14/plugins/hls.min.js"></script>
<script
	src="//cdn.flowplayer.com/releases/native/v2.5.14/plugins/dash.min.js"></script>
<script
	src="//cdn.flowplayer.com/releases/native/v2.5.14/plugins/keyboard.min.js"></script>
<!-- <script src="//cdn.flowplayer.com/releases/native/stable/plugins/cuepoints.min.js"></script> -->

<!-- Kakao web SDK -->
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<!-- Signin With Apple -->
<script type="text/javascript"
	src="https://appleid.cdn-apple.com/appleauth/static/jsapi/appleid/1/en_US/appleid.auth.js"></script>

<!-- tracker vendors -->
<script async
	src="https://www.googletagmanager.com/gtag/js?id=AW-775263643"></script>
<script type="text/javascript" charset="UTF-8"
	src="//t1.daumcdn.net/adfit/static/kp.js"></script>
<script type="text/javascript" src="//static.criteo.net/js/ld/ld.js"
	async="true"></script>
<script src="//wcs.naver.net/wcslog.js"></script>

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




	<div class="wrap-login">
		<div class="head_banner_group"></div>


		<div class="login wrap">
			<div data-v-668c286c="" class="login_container">
			
				<div data-v-668c286c="" class="login_head_logo">
					<h1 data-v-668c286c="">
						<a data-v-668c286c="" href="##">
							<span data-v-668c286c="" class="sp-icon logo"></span>
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
					<img data-v-668c286c=""
						src="resources/images/login/coupon01.PNG"
						alt="" class="coupon_img">
				</div>
				<div data-v-668c286c="" class="login_signup_content">
					<div data-v-668c286c="" class="border_and_text">
						<span data-v-668c286c="">간편 로그인/회원가입</span>
					</div>
					<div data-v-0eb5c308="" data-v-668c286c="" class="vertical_buttons">
						<a data-v-0eb5c308="" idus-log-selector="third_party"
							idus-log="kakaotalk" href="" class="bar_button kakao"><span
							data-v-0eb5c308="" class="sp-icon icon-kakaotalk"></span> 카카오로
							3초만에 시작하기 </a> <a data-v-0eb5c308="" idus-log-selector="third_party"
							idus-log="email"
							href="sing.jsp"
							class="bar_button email">이메일로 가입하기</a>
					</div>
					<div data-v-38bd83a8="" data-v-668c286c=""
						class="horizontal_buttons">
						<a data-v-38bd83a8="" idus-log-selector="third_party"
							href="/w/naver/login?redirect_uri=https%3A%2F%2Fwww.idus.com%2Fw%2Fproduct%2Fd1e300b8-c0c7-48bd-803f-dfed5543954a%3Fkeyword_channel%3Duser%26search_word%3D%EB%A7%9B%EC%9E%88%EB%8A%94+%EA%B9%90%EB%B0%A4"
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
				<div data-v-668c286c="" class="login_signin_content">
					<div data-v-668c286c="" class="border_and_text">
						<span data-v-668c286c="">이메일 로그인</span>
					</div>
					<div data-v-22bdcf3e="" data-v-668c286c=""
						class="email_login_container">
						<div data-v-22bdcf3e="">
							<input data-v-22bdcf3e="" id="email_login_input" type="email"
								placeholder="이메일" required="required" class="login_input ">
							<!---->
							<input data-v-22bdcf3e="" type="password" placeholder="비밀번호"
								required="required" class="login_input ">
							<!---->
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
						<button data-v-32d88566="" data-v-22bdcf3e=""
							class="CommonButton login_button CommonButton--middle CommonButton--white "
							id="login_logging">로그인</button>
					</div>
				</div>
				
			</div>
		</div>
	</div>




	<script>
		(function() {
			// 회원가입 후 다시 원래 페이지로 돌아가기 위한 storage저장
			if ('https://www.idus.com/w/product/d1e300b8-c0c7-48bd-803f-dfed5543954a?keyword_channel=user&search_word=맛있는 깐밤')
				vuepack.externals.util
						.saveLastVisitedUrl('https://www.idus.com/w/product/d1e300b8-c0c7-48bd-803f-dfed5543954a?keyword_channel=user&search_word=맛있는 깐밤');

			var Logger = vuepack.externals.IdusLog.Logger;
			var PageName = vuepack.externals.IdusLog.PageName;
			Logger.sendPageView(PageName.Join);
		})();

		vuepack
				.create([ {
					selector : '[data-vue="login"]',
					component : 'Login',
					props : {
						userData : {
							"login_modal" : "",
							"login_image" : "https:\/\/image.idus.com\/static\/signup\/web_benefit_signup.png",
							"main_image" : "",
							"user_info_image" : ""
						},
						redirectUrl : 'https://www.idus.com/w/product/d1e300b8-c0c7-48bd-803f-dfed5543954a?keyword_channel=user&search_word=맛있는 깐밤',
						oauthRedirectUri : '?redirect_uri=https%3A%2F%2Fwww.idus.com%2Fw%2Fproduct%2Fd1e300b8-c0c7-48bd-803f-dfed5543954a%3Fkeyword_channel%3Duser%26search_word%3D%EB%A7%9B%EC%9E%88%EB%8A%94+%EA%B9%90%EB%B0%A4',
						kakaoUniqueId : "61381a284d8f4"
					}
				} ]);

		$(document)
				.ready(
						function() {
							var $form = $('.form-signin');
							var $email = $form.find('input[name="email"]');
							var $saveEmail = $form.find('input#emailsave');
							var emailKey = 'idus-login-email';
							var $btnJoin = $('#btnJoin');
							var $btnThirdPartyLogin = $('[data-idus-log]');

							function saveEmail() {
								window.localStorage.setItem(emailKey, window
										.btoa($email.val()));
							}

							function setEmail() {
								var email = window.localStorage
										.getItem(emailKey)
										|| '';

								if (!!email) {
									$email.val(window.atob(email));
									$saveEmail.prop('checked', true).change();
								}
							}

							$btnJoin
									.on(
											'click',
											function() {
												var joinUrl = '/w/join?redirect_uri=https%3A%2F%2Fwww.idus.com%2Fw%2Fproduct%2Fd1e300b8-c0c7-48bd-803f-dfed5543954a%3Fkeyword_channel%3Duser%26search_word%3D%EB%A7%9B%EC%9E%88%EB%8A%94+%EA%B9%90%EB%B0%A4';
												var Logger = vuepack.externals.IdusLog.Logger;
												var Section = vuepack.externals.IdusLog.Section;
												var LogObject = vuepack.externals.IdusLog.LogObject;

												Logger
														.sendClick(
																{
																	section : Section.MemberJoin,
																	object : LogObject.MemberJoin
																}, true);
												location.href = joinUrl;
												return false;
											});

							$btnThirdPartyLogin
									.on(
											'click',
											function() {
												var Logger = vuepack.externals.IdusLog.Logger;
												var Section = vuepack.externals.IdusLog.Section;
												var ObjectType = vuepack.externals.IdusLog.ObjectType;
												var logObject = $(this).data(
														'idus-log');

												Cookies.set('login_type',
														logObject);
												Logger
														.sendClick({
															section : Section.Login,
															object : logObject,
															objectType : ObjectType.LoginType
														});
											});

							// skip updating localstorage
							BPackr.pageHistory.skipUnload();

							// update on pagehide - for next page
							$(window).on(
									'beforeunload pagehide',
									function() {
										BPackr.pageHistory.update(
												'scrollOnLoad', true);
									});

							// set email field
							$(window).on('load', setEmail);

							// 다른 방법으로 로그인
							var showMoreLoginButtonDom = document
									.getElementsByClassName('show-more-login-btn');
							var showMoreLoginButton = showMoreLoginButtonDom
									&& showMoreLoginButtonDom[0] ? showMoreLoginButtonDom[0]
									: undefined;
							if (showMoreLoginButton) {
								showMoreLoginButton
										.addEventListener(
												'click',
												function() {
													var hideDoms = document
															.getElementsByClassName('show-more');
													hideDoms
															.forEach(function(
																	dom) {
																showMoreLoginButton.classList
																		.add('hide');
																dom.classList
																		.remove('hide');
															});
												});
							}
						});
	</script>
	<div data-vue="FooterModal"></div>
	<script>
		vuepack.create([ {
			selector : '[data-vue="FooterModal"]',
			component : 'FooterModal'
		} ]);
	</script>
	<!-- =========================================================================================-->


	<!-- div WRAP -->
	<script type="text/javascript"
		src="/resources/dist/js/idus.web.min.js?__v=1630657354"></script>
	<script>
		(function() {
			var applink = new vuepack.externals.Applink();
			var scheme = applink.locationToAppScheme();

			var isIOS = (navigator.userAgent.match('iPhone') != null
					|| navigator.userAgent.match('iPod') != null || navigator.userAgent
					.match('iPad') != null);

			// App 충돌 이슈로 인해 Android만 wta query 적용하지 않도록 함
			if (isIOS) {
				var hasQueryMark = scheme.indexOf('?') !== -1;
				var randomHash = BPackr.randomHash(16);
				var key = "mobile_web";

				if (hasQueryMark) {
					scheme = scheme + '&wta=' + randomHash;
				} else {
					scheme = scheme + '?wta=' + randomHash;
				}
			}

			appDownloadMask(key, scheme);
			BPackr.scheme = scheme;
		}());
	</script>
	<script>
        vuepack.externals.VendorLogger.sendLog([
            {
                vendorName: 'naver',
            },
        ]);
        </script>
</body>
</html>
