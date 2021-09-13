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
<title>아이디어스 | 알림</title>
<meta name="theme-color" content="#ffffff" />
<link rel="apple-touch-icon" sizes="384x384"
	href="/resources/images/icon_300.png">
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
<meta property="og:url" content="http://www.idus.com/w/notification" />
<meta property="og:image"
	content="http://www.idus.com/resources/dist/images/ogimg-idus.png?ver=2.0" />
<link rel="canonical" href="http://www.idus.com/w/notification" />
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
<link rel="stylesheet" href="resources/css/idus.web.min.css">
<link rel="stylesheet" href="resources/css/vendor.client.min.css">
<link rel="stylesheet" href="resources/css/alarm.css">

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
		vuepack
				.createUser(
						'[data-vue="globalUser"]',
						{
							id : 8001937,
							thumb : 'https://image.idus.com/image/files/d247655ca3e545e89a48a43aa9318b3f.jpg',
							age : 25,
							gender : 'female',
							grade : 1,
							uuid : 'e47f44d5-3f79-42dd-9c1b-1772866c0371',
							isVip : false
						});
		vuepack
				.createToken(
						'[data-vue="token"]',
						{
							token : {
								"token_type" : "Bearer",
								"access_token" : "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6ODAwMTkzNywicGVybWlzc2lvbiI6IlVTRVIiLCJ0eXBlIjoiY2xpZW50IiwidG9rZW5fdHlwZSI6ImFjY2VzcyIsImV4cCI6MTYzOTM3MDA4Niwic2FsdCI6ImM0ZjFmMTAwLTc0YzYtNDgwMS1hNjIzLTk5NDBjNmZhYTA1MyIsImNyZWF0ZWQiOiIyMDIxLTA5LTEzVDEzOjM0OjQ2KzA5OjAwIn0.WmbRiY9muwjcPtxgUoifqT8lbeBshSstqRIZByrCArE",
								"refresh_token" : "$2y$10$0gFd8KcN0sNxzoiwU1Dch.tGbe\/DXGjtnWNh5xwoawkNbuSoKU7ja",
								"expired_access_token" : "2021-12-13 13:34:46+09:00",
								"expired_refresh_token" : "2022-03-13 13:34:46+09:00"
							},
							userId : 8001937
						});

		/* Idus Log V2 */
		vuepack.externals.IdusLog.Logger
				.setIdentityId('ap-northeast-2:f4e7cf2c-2c34-49ab-95cd-8b054b9e32ea');
		vuepack.externals.IdusLog.Logger
				.initialize({
					isApp : false,
					region : 'ap-northeast-2',
					identityPoolId : 'ap-northeast-2:f4c028af-cb84-43cc-a8e5-b047d272b323',
					accountId : '773161815152',
					userData : {
						userId : '8001937',
						userAge : '25',
						userGrade : '1',
						userGender : 'female'
					},
					appData : {
						env : 'prod',
						appVersion : '1631255393'
					}
				});
	</script>

	<div class="wrap">


		<div id="skip-to-content">
			<a href="#gnb">메뉴목록으로 바로가기</a> <a href="#content">컨텐츠로 바로가기</a>
		</div>
		<jsp:include page="header_goods.jsp" />

		<div class="dimmed-background"></div>
		<div id="content" class="content" data-page="notification">
			<div class="title-style-block inner-w">
				<h2 class="txt">알림</h2>
			</div>
			<div class="inner-w layout-split" data-layout-split="notification">
				<section class="notice-area">
					<ul class="msg-lists mCustomScrollbar _mCS_3 mCS-autoHide"
						data-ui-paging="{ &quot;event&quot;:&quot;scroll&quot;, &quot;target&quot;:&quot;.mCSB_container&quot; }"
						data-endpoint="/w/notification"
						data-scrollbar="{&quot;trigger&quot;: &quot;bottom&quot;}"
						data-page="noti_list"
						style="position: relative; overflow: visible;">
						<div id="mCSB_3"
							class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
							tabindex="0" style="max-height: none;">
							<div id="mCSB_3_container" class="mCSB_container"
								style="position: relative; top: 0; left: 0;" dir="ltr">
								<div data-v-6ae4a888="" class="notification_card_container">
									<input data-v-6ae4a888="" type="hidden" name="paging_param"
										value="49071457"> <a data-v-6ae4a888=""
										href="/w/me/coupon" class="notification_card_link"><img
										data-v-6ae4a888=""
										src="https://image.idus.com/image/files/1b943d7e4df14e029705d57b9c2e55ed.jpg"
										class="notification_card_artist_img mCS_img_loaded">
										<div data-v-6ae4a888="" class="notification_card_content_box">
											<p data-v-6ae4a888="" class="label">쿠폰</p>
											<p data-v-6ae4a888="" class="artist_name">아이디어스</p>
											<p data-v-6ae4a888="" class="message">앗! 오늘이 지나면 영영 사라지는
												쿠폰이 있네요? 잊지 말고 꼭 사용하세요!</p>
										</div>
										<p data-v-6ae4a888="" class="notification_card_date">오전
											10:0</p></a>
								</div>
								<script>
									var components = [];
									components
											.push({
												selector : '[data-vue="notification-card49071457"]',
												component : 'NotificationCard',
												props : {
													notification : {
														"id" : 49071457,
														"created" : 1631494828778,
														"modified" : 1631494828778,
														"artist_uuid" : "31be12c4-c498-11e3-8b03-06fd000000c2",
														"noti_style" : 18,
														"message" : "\uc557! \uc624\ub298\uc774 \uc9c0\ub098\uba74 \uc601\uc601 \uc0ac\ub77c\uc9c0\ub294 \ucfe0\ud3f0\uc774 \uc788\ub124\uc694? \uc78a\uc9c0 \ub9d0\uace0 \uaf2d \uc0ac\uc6a9\ud558\uc138\uc694!",
														"name" : "\uc544\uc774\ub514\uc5b4\uc2a4(idus)",
														"artistname" : "\uc544\uc774\ub514\uc5b4\uc2a4",
														"userpicture" : "https:\/\/image.idus.com\/image\/files\/1b943d7e4df14e029705d57b9c2e55ed.jpg",
														"label" : "\ucfe0\ud3f0",
														"title" : null,
														"image_url" : null,
														"noti_grp" : null,
														"expire_time" : 0,
														"link_url" : "\/w\/me\/coupon",
														"page" : ""
													},
													page : 'noti_list'
												}
											});
									vuepack.create(components);
								</script>
								<div data-v-6ae4a888="" class="notification_card_container">
									<input data-v-6ae4a888="" type="hidden" name="paging_param"
										value="49047981"> <a data-v-6ae4a888=""
										href="/w/showroom/1709" class="notification_card_link"><img
										data-v-6ae4a888=""
										src="https://image.idus.com/image/files/1b943d7e4df14e029705d57b9c2e55ed.jpg"
										class="notification_card_artist_img mCS_img_loaded">
										<div data-v-6ae4a888="" class="notification_card_content_box">
											<p data-v-6ae4a888="" class="label">이벤트</p>
											<p data-v-6ae4a888="" class="artist_name">[WARNING⚠] 89%
												할인이 오늘 종료됩니다</p>
											<p data-v-6ae4a888="" class="message">(광고) 추석 안전 택배 배송도
												오늘이 마지노선! *수신거부:내정보&gt;설정&gt;앱 알림</p>
										</div>
										<p data-v-6ae4a888="" class="notification_card_date">9월
											12일</p></a>
								</div>
								<script>
									var components = [];
									components
											.push({
												selector : '[data-vue="notification-card49047981"]',
												component : 'NotificationCard',
												props : {
													notification : {
														"id" : 49047981,
														"created" : 1631439020000,
														"modified" : 1631439020000,
														"artist_uuid" : "31be12c4-c498-11e3-8b03-06fd000000c2",
														"noti_style" : 99,
														"message" : "(\uad11\uace0) \ucd94\uc11d \uc548\uc804 \ud0dd\ubc30 \ubc30\uc1a1\ub3c4 \uc624\ub298\uc774 \ub9c8\uc9c0\ub178\uc120!\n*\uc218\uc2e0\uac70\ubd80:\ub0b4\uc815\ubcf4>\uc124\uc815>\uc571 \uc54c\ub9bc",
														"name" : "\uc544\uc774\ub514\uc5b4\uc2a4(idus)",
														"artistname" : "\uc544\uc774\ub514\uc5b4\uc2a4",
														"userpicture" : "https:\/\/image.idus.com\/image\/files\/1b943d7e4df14e029705d57b9c2e55ed.jpg",
														"label" : "\uc774\ubca4\ud2b8",
														"title" : "[WARNING\u26a0] 89% \ud560\uc778\uc774 \uc624\ub298 \uc885\ub8cc\ub429\ub2c8\ub2e4",
														"image_url" : "",
														"noti_grp" : "all_210912",
														"expire_time" : 1631458799999,
														"link_url" : "\/w\/showroom\/1709",
														"page" : ""
													},
													page : 'noti_list'
												}
											});
									vuepack.create(components);
								</script>
								<div data-v-6ae4a888="" class="notification_card_container">
									<input data-v-6ae4a888="" type="hidden" name="paging_param"
										value="49017335"> <a data-v-6ae4a888=""
										href="/w/showroom/1711" class="notification_card_link"><img
										data-v-6ae4a888=""
										src="https://image.idus.com/image/files/1b943d7e4df14e029705d57b9c2e55ed.jpg"
										class="notification_card_artist_img mCS_img_loaded">
										<div data-v-6ae4a888="" class="notification_card_content_box">
											<p data-v-6ae4a888="" class="label">이벤트</p>
											<p data-v-6ae4a888="" class="artist_name">💥추석 할인 필살기!
												아도~~겐!!!💥</p>
											<p data-v-6ae4a888="" class="message">(광고) 8O% 할인쿠폰+2만원
												할인+가성비 할인 뽝!!! *수신거부:내정보&gt;설정&gt;앱 알림</p>
										</div>
										<p data-v-6ae4a888="" class="notification_card_date">9월
											11일</p></a>
								</div>
								<script>
									var components = [];
									components
											.push({
												selector : '[data-vue="notification-card49017335"]',
												component : 'NotificationCard',
												props : {
													notification : {
														"id" : 49017335,
														"created" : 1631352621000,
														"modified" : 1631352621000,
														"artist_uuid" : "31be12c4-c498-11e3-8b03-06fd000000c2",
														"noti_style" : 99,
														"message" : "(\uad11\uace0) 8O% \ud560\uc778\ucfe0\ud3f0+2\ub9cc\uc6d0 \ud560\uc778+\uac00\uc131\ube44 \ud560\uc778 \ubf5d!!!\n*\uc218\uc2e0\uac70\ubd80:\ub0b4\uc815\ubcf4>\uc124\uc815>\uc571 \uc54c\ub9bc",
														"name" : "\uc544\uc774\ub514\uc5b4\uc2a4(idus)",
														"artistname" : "\uc544\uc774\ub514\uc5b4\uc2a4",
														"userpicture" : "https:\/\/image.idus.com\/image\/files\/1b943d7e4df14e029705d57b9c2e55ed.jpg",
														"label" : "\uc774\ubca4\ud2b8",
														"title" : "\ud83d\udca5\ucd94\uc11d \ud560\uc778 \ud544\uc0b4\uae30! \uc544\ub3c4~~\uac90!!!\ud83d\udca5",
														"image_url" : "",
														"noti_grp" : "all_210911",
														"expire_time" : 1631458799999,
														"link_url" : "\/w\/showroom\/1711",
														"page" : ""
													},
													page : 'noti_list'
												}
											});
									vuepack.create(components);
								</script>
								<div data-v-6ae4a888="" class="notification_card_container">
									<input data-v-6ae4a888="" type="hidden" name="paging_param"
										value="48973886"> <a data-v-6ae4a888=""
										href="/w/showroom/1711" class="notification_card_link"><img
										data-v-6ae4a888=""
										src="https://image.idus.com/image/files/1b943d7e4df14e029705d57b9c2e55ed.jpg"
										class="notification_card_artist_img mCS_img_loaded">
										<div data-v-6ae4a888="" class="notification_card_content_box">
											<p data-v-6ae4a888="" class="label">이벤트</p>
											<p data-v-6ae4a888="" class="artist_name">저예산이라도 가능한
												한우선물🥩🐮</p>
											<p data-v-6ae4a888="" class="message">(광고) 돈이 없지 마음이 없는 게
												아니잖아요!!!😭 *수신거부:내정보&gt;설정&gt;앱 알림</p>
										</div>
										<p data-v-6ae4a888="" class="notification_card_date">9월
											10일</p></a>
								</div>
								<script>
									var components = [];
									components
											.push({
												selector : '[data-vue="notification-card48973886"]',
												component : 'NotificationCard',
												props : {
													notification : {
														"id" : 48973886,
														"created" : 1631266238000,
														"modified" : 1631266238000,
														"artist_uuid" : "31be12c4-c498-11e3-8b03-06fd000000c2",
														"noti_style" : 99,
														"message" : "(\uad11\uace0) \ub3c8\uc774 \uc5c6\uc9c0 \ub9c8\uc74c\uc774 \uc5c6\ub294 \uac8c \uc544\ub2c8\uc796\uc544\uc694!!!\ud83d\ude2d\n*\uc218\uc2e0\uac70\ubd80:\ub0b4\uc815\ubcf4>\uc124\uc815>\uc571 \uc54c\ub9bc",
														"name" : "\uc544\uc774\ub514\uc5b4\uc2a4(idus)",
														"artistname" : "\uc544\uc774\ub514\uc5b4\uc2a4",
														"userpicture" : "https:\/\/image.idus.com\/image\/files\/1b943d7e4df14e029705d57b9c2e55ed.jpg",
														"label" : "\uc774\ubca4\ud2b8",
														"title" : "\uc800\uc608\uc0b0\uc774\ub77c\ub3c4 \uac00\ub2a5\ud55c \ud55c\uc6b0\uc120\ubb3c\ud83e\udd69\ud83d\udc2e",
														"image_url" : "https:\/\/image.idus.com\/image\/files\/2b99de30c78142bc8e04760914cc7369.jpg",
														"noti_grp" : "all_210910",
														"expire_time" : 1631458799999,
														"link_url" : "\/w\/showroom\/1711",
														"page" : ""
													},
													page : 'noti_list'
												}
											});
									vuepack.create(components);
								</script>
								<div data-v-6ae4a888="" class="notification_card_container">
									<input data-v-6ae4a888="" type="hidden" name="paging_param"
										value="48958700"> <a data-v-6ae4a888=""
										href="/w/showroom/1710" class="notification_card_link"><img
										data-v-6ae4a888=""
										src="https://image.idus.com/image/files/1b943d7e4df14e029705d57b9c2e55ed.jpg"
										class="notification_card_artist_img mCS_img_loaded">
										<div data-v-6ae4a888="" class="notification_card_content_box">
											<p data-v-6ae4a888="" class="label">이벤트</p>
											<p data-v-6ae4a888="" class="artist_name">당신만 받는 정보!🤫
												선착순 2만원쿠폰 소진임박!</p>
											<p data-v-6ae4a888="" class="message">(광고) 오늘이 추석 전
												안전배송🎁 라스트 찬스!⏳ *수신거부:내정보&gt;설정&gt;앱 알림</p>
										</div>
										<p data-v-6ae4a888="" class="notification_card_date">9월
											10일</p></a>
								</div>
								<script>
									var components = [];
									components
											.push({
												selector : '[data-vue="notification-card48958700"]',
												component : 'NotificationCard',
												props : {
													notification : {
														"id" : 48958700,
														"created" : 1631246414000,
														"modified" : 1631246414000,
														"artist_uuid" : "31be12c4-c498-11e3-8b03-06fd000000c2",
														"noti_style" : 99,
														"message" : "(\uad11\uace0) \uc624\ub298\uc774 \ucd94\uc11d \uc804 \uc548\uc804\ubc30\uc1a1\ud83c\udf81 \ub77c\uc2a4\ud2b8 \ucc2c\uc2a4!\u23f3\n*\uc218\uc2e0\uac70\ubd80:\ub0b4\uc815\ubcf4>\uc124\uc815>\uc571 \uc54c\ub9bc",
														"name" : "\uc544\uc774\ub514\uc5b4\uc2a4(idus)",
														"artistname" : "\uc544\uc774\ub514\uc5b4\uc2a4",
														"userpicture" : "https:\/\/image.idus.com\/image\/files\/1b943d7e4df14e029705d57b9c2e55ed.jpg",
														"label" : "\uc774\ubca4\ud2b8",
														"title" : "\ub2f9\uc2e0\ub9cc \ubc1b\ub294 \uc815\ubcf4!\ud83e\udd2b \uc120\ucc29\uc21c 2\ub9cc\uc6d0\ucfe0\ud3f0 \uc18c\uc9c4\uc784\ubc15!",
														"image_url" : "",
														"noti_grp" : "event_targeting_210910",
														"expire_time" : 1632927659999,
														"link_url" : "\/w\/showroom\/1710",
														"page" : ""
													},
													page : 'noti_list'
												}
											});
									vuepack.create(components);
								</script>
								<div data-v-6ae4a888="" class="notification_card_container">
									<input data-v-6ae4a888="" type="hidden" name="paging_param"
										value="48957127"> <a data-v-6ae4a888=""
										href="/w/story/39133463-c0d5-4db4-bf7a-55f620c55e29"
										class="notification_card_link"><img data-v-6ae4a888=""
										src="https://image.idus.com/image/files/7036aa7ce7c043f7835e6ef121c5134c.jpg"
										class="notification_card_artist_img mCS_img_loaded">
										<div data-v-6ae4a888="" class="notification_card_content_box">
											<p data-v-6ae4a888="" class="label">스토리</p>
											<p data-v-6ae4a888="" class="artist_name">다앤하(danha)</p>
											<p data-v-6ae4a888="" class="message">다앤하(danha)님이 새로운
												스토리를 게시하였습니다. 궁금하시죠?</p>
										</div>
										<p data-v-6ae4a888="" class="notification_card_date">9월
											10일</p></a>
								</div>
								<script>
									var components = [];
									components
											.push({
												selector : '[data-vue="notification-card48957127"]',
												component : 'NotificationCard',
												props : {
													notification : {
														"id" : 48957127,
														"created" : 1631244155233,
														"modified" : 1631244155233,
														"artist_uuid" : "598fb7c4-6674-47de-ad02-95673d738a99",
														"noti_style" : 1,
														"message" : "\ub2e4\uc564\ud558(danha)\ub2d8\uc774 \uc0c8\ub85c\uc6b4 \uc2a4\ud1a0\ub9ac\ub97c \uac8c\uc2dc\ud558\uc600\uc2b5\ub2c8\ub2e4. \uad81\uae08\ud558\uc2dc\uc8e0?",
														"name" : "\ub2e4\uc564\ud558",
														"artistname" : "\ub2e4\uc564\ud558(danha)",
														"userpicture" : "https:\/\/image.idus.com\/image\/files\/7036aa7ce7c043f7835e6ef121c5134c.jpg",
														"label" : "\uc2a4\ud1a0\ub9ac",
														"title" : null,
														"image_url" : null,
														"noti_grp" : null,
														"expire_time" : 0,
														"link_url" : "\/w\/story\/39133463-c0d5-4db4-bf7a-55f620c55e29",
														"page" : ""
													},
													page : 'noti_list'
												}
											});
									vuepack.create(components);
								</script>
								<div data-v-6ae4a888="" class="notification_card_container">
									<input data-v-6ae4a888="" type="hidden" name="paging_param"
										value="48914767"> <a data-v-6ae4a888=""
										href="/w/showroom/1709" class="notification_card_link"><img
										data-v-6ae4a888=""
										src="https://image.idus.com/image/files/1b943d7e4df14e029705d57b9c2e55ed.jpg"
										class="notification_card_artist_img mCS_img_loaded">
										<div data-v-6ae4a888="" class="notification_card_content_box">
											<p data-v-6ae4a888="" class="label">이벤트</p>
											<p data-v-6ae4a888="" class="artist_name">꿈을 꿨어요...추석선물
												택배가 안오는 꿈..😫</p>
											<p data-v-6ae4a888="" class="message">(광고)지금 주문해야 제때 받을 수
												있는거, 아시죠?😏 *수신거부:내정보&gt;설정&gt;앱 알림</p>
										</div>
										<p data-v-6ae4a888="" class="notification_card_date">9월 9일
										</p></a>
								</div>
								<script>
									var components = [];
									components
											.push({
												selector : '[data-vue="notification-card48914767"]',
												component : 'NotificationCard',
												props : {
													notification : {
														"id" : 48914767,
														"created" : 1631179831000,
														"modified" : 1631179831000,
														"artist_uuid" : "31be12c4-c498-11e3-8b03-06fd000000c2",
														"noti_style" : 99,
														"message" : "(\uad11\uace0)\uc9c0\uae08 \uc8fc\ubb38\ud574\uc57c \uc81c\ub54c \ubc1b\uc744 \uc218 \uc788\ub294\uac70, \uc544\uc2dc\uc8e0?\ud83d\ude0f\n *\uc218\uc2e0\uac70\ubd80:\ub0b4\uc815\ubcf4>\uc124\uc815>\uc571 \uc54c\ub9bc",
														"name" : "\uc544\uc774\ub514\uc5b4\uc2a4(idus)",
														"artistname" : "\uc544\uc774\ub514\uc5b4\uc2a4",
														"userpicture" : "https:\/\/image.idus.com\/image\/files\/1b943d7e4df14e029705d57b9c2e55ed.jpg",
														"label" : "\uc774\ubca4\ud2b8",
														"title" : "\uafc8\uc744 \uafe8\uc5b4\uc694...\ucd94\uc11d\uc120\ubb3c \ud0dd\ubc30\uac00 \uc548\uc624\ub294 \uafc8..\ud83d\ude2b",
														"image_url" : "",
														"noti_grp" : "all_210909",
														"expire_time" : 1631458799999,
														"link_url" : "\/w\/showroom\/1709",
														"page" : ""
													},
													page : 'noti_list'
												}
											});
									vuepack.create(components);
								</script>
								<div data-v-6ae4a888="" class="notification_card_container">
									<input data-v-6ae4a888="" type="hidden" name="paging_param"
										value="48910542"> <a data-v-6ae4a888=""
										href="/w/story/42f59263-2f30-4730-a2ca-ca2b7d07a7ec"
										class="notification_card_link"><img data-v-6ae4a888=""
										src="https://image.idus.com/image/files/7036aa7ce7c043f7835e6ef121c5134c.jpg"
										class="notification_card_artist_img mCS_img_loaded">
										<div data-v-6ae4a888="" class="notification_card_content_box">
											<p data-v-6ae4a888="" class="label">스토리</p>
											<p data-v-6ae4a888="" class="artist_name">다앤하(danha)</p>
											<p data-v-6ae4a888="" class="message">다앤하(danha)님이 새로운
												스토리를 게시하였습니다. 궁금하시죠?</p>
										</div>
										<p data-v-6ae4a888="" class="notification_card_date">9월 9일
										</p></a>
								</div>
								<script>
									var components = [];
									components
											.push({
												selector : '[data-vue="notification-card48910542"]',
												component : 'NotificationCard',
												props : {
													notification : {
														"id" : 48910542,
														"created" : 1631174417470,
														"modified" : 1631174417470,
														"artist_uuid" : "598fb7c4-6674-47de-ad02-95673d738a99",
														"noti_style" : 1,
														"message" : "\ub2e4\uc564\ud558(danha)\ub2d8\uc774 \uc0c8\ub85c\uc6b4 \uc2a4\ud1a0\ub9ac\ub97c \uac8c\uc2dc\ud558\uc600\uc2b5\ub2c8\ub2e4. \uad81\uae08\ud558\uc2dc\uc8e0?",
														"name" : "\ub2e4\uc564\ud558",
														"artistname" : "\ub2e4\uc564\ud558(danha)",
														"userpicture" : "https:\/\/image.idus.com\/image\/files\/7036aa7ce7c043f7835e6ef121c5134c.jpg",
														"label" : "\uc2a4\ud1a0\ub9ac",
														"title" : null,
														"image_url" : null,
														"noti_grp" : null,
														"expire_time" : 0,
														"link_url" : "\/w\/story\/42f59263-2f30-4730-a2ca-ca2b7d07a7ec",
														"page" : ""
													},
													page : 'noti_list'
												}
											});
									vuepack.create(components);
								</script>
								<div data-v-6ae4a888="" class="notification_card_container">
									<input data-v-6ae4a888="" type="hidden" name="paging_param"
										value="48895011"> <a data-v-6ae4a888="" href="/w/cart"
										class="notification_card_link"><img data-v-6ae4a888=""
										src="https://image.idus.com/image/files/1b943d7e4df14e029705d57b9c2e55ed.jpg"
										class="notification_card_artist_img mCS_img_loaded">
										<div data-v-6ae4a888="" class="notification_card_content_box">
											<p data-v-6ae4a888="" class="label">이벤트</p>
											<p data-v-6ae4a888="" class="artist_name">🚅이번 추석 택배 마감은
												더 빨리 끝나요!⏳</p>
											<p data-v-6ae4a888="" class="message">(광고) 장바구니 속🛒 작품,
												잊지 말고 오늘 주문하기💡 *수신거부:내정보&gt;설정&gt;앱 알림</p>
										</div>
										<p data-v-6ae4a888="" class="notification_card_date">9월 9일
										</p></a>
								</div>
								<script>
									var components = [];
									components
											.push({
												selector : '[data-vue="notification-card48895011"]',
												component : 'NotificationCard',
												props : {
													notification : {
														"id" : 48895011,
														"created" : 1631154614000,
														"modified" : 1631154614000,
														"artist_uuid" : "31be12c4-c498-11e3-8b03-06fd000000c2",
														"noti_style" : 99,
														"message" : "(\uad11\uace0) \uc7a5\ubc14\uad6c\ub2c8 \uc18d\ud83d\uded2 \uc791\ud488, \uc78a\uc9c0 \ub9d0\uace0 \uc624\ub298 \uc8fc\ubb38\ud558\uae30\ud83d\udca1\n*\uc218\uc2e0\uac70\ubd80:\ub0b4\uc815\ubcf4>\uc124\uc815>\uc571 \uc54c\ub9bc",
														"name" : "\uc544\uc774\ub514\uc5b4\uc2a4(idus)",
														"artistname" : "\uc544\uc774\ub514\uc5b4\uc2a4",
														"userpicture" : "https:\/\/image.idus.com\/image\/files\/1b943d7e4df14e029705d57b9c2e55ed.jpg",
														"label" : "\uc774\ubca4\ud2b8",
														"title" : "\ud83d\ude85\uc774\ubc88 \ucd94\uc11d \ud0dd\ubc30 \ub9c8\uac10\uc740 \ub354 \ube68\ub9ac \ub05d\ub098\uc694!\u23f3",
														"image_url" : "",
														"noti_grp" : "event_targeting_210909",
														"expire_time" : 0,
														"link_url" : "\/w\/cart",
														"page" : ""
													},
													page : 'noti_list'
												}
											});
									vuepack.create(components);
								</script>
								<div data-v-6ae4a888="" class="notification_card_container">
									<input data-v-6ae4a888="" type="hidden" name="paging_param"
										value="48855723"> <a data-v-6ae4a888=""
										href="/w/showroom/1767" class="notification_card_link"><img
										data-v-6ae4a888=""
										src="https://image.idus.com/image/files/1b943d7e4df14e029705d57b9c2e55ed.jpg"
										class="notification_card_artist_img mCS_img_loaded">
										<div data-v-6ae4a888="" class="notification_card_content_box">
											<p data-v-6ae4a888="" class="label">이벤트</p>
											<p data-v-6ae4a888="" class="artist_name">요즘 제철맞은
												이것→'🤍🦵🏻👑🦐'</p>
											<p data-v-6ae4a888="" class="message">(광고) 79% 할인받고 '이것'
												저녁메뉴로 어때요? *수신거부:내정보&gt;설정&gt;앱 알림</p>
										</div>
										<p data-v-6ae4a888="" class="notification_card_date">9월 8일
										</p></a>
								</div>
								<script>
									var components = [];
									components
											.push({
												selector : '[data-vue="notification-card48855723"]',
												component : 'NotificationCard',
												props : {
													notification : {
														"id" : 48855723,
														"created" : 1631095233000,
														"modified" : 1631095233000,
														"artist_uuid" : "31be12c4-c498-11e3-8b03-06fd000000c2",
														"noti_style" : 99,
														"message" : "(\uad11\uace0) 79% \ud560\uc778\ubc1b\uace0 '\uc774\uac83' \uc800\ub141\uba54\ub274\ub85c \uc5b4\ub54c\uc694?\n *\uc218\uc2e0\uac70\ubd80:\ub0b4\uc815\ubcf4>\uc124\uc815>\uc571 \uc54c\ub9bc",
														"name" : "\uc544\uc774\ub514\uc5b4\uc2a4(idus)",
														"artistname" : "\uc544\uc774\ub514\uc5b4\uc2a4",
														"userpicture" : "https:\/\/image.idus.com\/image\/files\/1b943d7e4df14e029705d57b9c2e55ed.jpg",
														"label" : "\uc774\ubca4\ud2b8",
														"title" : "\uc694\uc998 \uc81c\ucca0\ub9de\uc740 \uc774\uac83\u2192'\ud83e\udd0d\ud83e\uddb5\ud83c\udffb\ud83d\udc51\ud83e\udd90'",
														"image_url" : "",
														"noti_grp" : "all_210908",
														"expire_time" : 1633014059999,
														"link_url" : "\/w\/showroom\/1767",
														"page" : ""
													},
													page : 'noti_list'
												}
											});
									vuepack.create(components);
								</script>
								<div data-v-6ae4a888="" class="notification_card_container">
									<input data-v-6ae4a888="" type="hidden" name="paging_param"
										value="48791118"> <a data-v-6ae4a888=""
										href="/w/event/main/thanksgiving-benefit"
										class="notification_card_link"><img data-v-6ae4a888=""
										src="https://image.idus.com/image/files/1b943d7e4df14e029705d57b9c2e55ed.jpg"
										class="notification_card_artist_img mCS_img_loaded">
										<div data-v-6ae4a888="" class="notification_card_content_box">
											<p data-v-6ae4a888="" class="label">이벤트</p>
											<p data-v-6ae4a888="" class="artist_name">2O,OOO원 할인받을
												사람!🎟</p>
											<p data-v-6ae4a888="" class="message">(광고) 선착순 2천명 요이 땅!
												빨리 클릭!!🏃🏻‍♂️🏃🏻‍♀️ *수신거부:내정보&gt;설정&gt;앱 알림</p>
										</div>
										<p data-v-6ae4a888="" class="notification_card_date">9월 7일
										</p></a>
								</div>
								<script>
									var components = [];
									components
											.push({
												selector : '[data-vue="notification-card48791118"]',
												component : 'NotificationCard',
												props : {
													notification : {
														"id" : 48791118,
														"created" : 1631007019000,
														"modified" : 1631007019000,
														"artist_uuid" : "31be12c4-c498-11e3-8b03-06fd000000c2",
														"noti_style" : 99,
														"message" : "(\uad11\uace0) \uc120\ucc29\uc21c 2\ucc9c\uba85 \uc694\uc774 \ub545! \ube68\ub9ac \ud074\ub9ad!!\ud83c\udfc3\ud83c\udffb\u200d\u2642\ufe0f\ud83c\udfc3\ud83c\udffb\u200d\u2640\ufe0f\n*\uc218\uc2e0\uac70\ubd80:\ub0b4\uc815\ubcf4>\uc124\uc815>\uc571 \uc54c\ub9bc",
														"name" : "\uc544\uc774\ub514\uc5b4\uc2a4(idus)",
														"artistname" : "\uc544\uc774\ub514\uc5b4\uc2a4",
														"userpicture" : "https:\/\/image.idus.com\/image\/files\/1b943d7e4df14e029705d57b9c2e55ed.jpg",
														"label" : "\uc774\ubca4\ud2b8",
														"title" : "2O,OOO\uc6d0 \ud560\uc778\ubc1b\uc744 \uc0ac\ub78c!\ud83c\udf9f",
														"image_url" : "",
														"noti_grp" : "all_210907",
														"expire_time" : 1633013999999,
														"link_url" : "\/w\/event\/main\/thanksgiving-benefit",
														"page" : ""
													},
													page : 'noti_list'
												}
											});
									vuepack.create(components);
								</script>
								<div data-v-6ae4a888="" class="notification_card_container">
									<input data-v-6ae4a888="" type="hidden" name="paging_param"
										value="48778988"> <a data-v-6ae4a888=""
										href="/w/product/720a2eed-1735-4c10-bd67-e84114e2d144"
										class="notification_card_link"><img data-v-6ae4a888=""
										src="https://image.idus.com/image/files/e8534c6cbfb7488fbb5771f48db36e6d.jpg"
										class="notification_card_artist_img mCS_img_loaded">
										<div data-v-6ae4a888="" class="notification_card_content_box">
											<p data-v-6ae4a888="" class="label">작품 할인</p>
											<p data-v-6ae4a888="" class="artist_name">늘해랑 떡공방</p>
											<p data-v-6ae4a888="" class="message">늘해랑 떡공방님이 '[신림]
												추석선물/부모님생신고급보자기케이크' 작품의 할인 판매를 시작하였습니다.</p>
										</div>
										<p data-v-6ae4a888="" class="notification_card_date">9월 7일
										</p></a>
								</div>
								<script>
									var components = [];
									components
											.push({
												selector : '[data-vue="notification-card48778988"]',
												component : 'NotificationCard',
												props : {
													notification : {
														"id" : 48778988,
														"created" : 1630994358519,
														"modified" : 1630994358519,
														"artist_uuid" : "2e754b3a-8c6e-4904-a8ab-9cac555cef5c",
														"noti_style" : 2,
														"message" : "\ub298\ud574\ub791 \ub5a1\uacf5\ubc29\ub2d8\uc774 '[\uc2e0\ub9bc] \ucd94\uc11d\uc120\ubb3c\/\ubd80\ubaa8\ub2d8\uc0dd\uc2e0\uace0\uae09\ubcf4\uc790\uae30\ucf00\uc774\ud06c' \uc791\ud488\uc758 \ud560\uc778 \ud310\ub9e4\ub97c \uc2dc\uc791\ud558\uc600\uc2b5\ub2c8\ub2e4.",
														"name" : "\uc608\uc2ac",
														"artistname" : "\ub298\ud574\ub791 \ub5a1\uacf5\ubc29",
														"userpicture" : "https:\/\/image.idus.com\/image\/files\/e8534c6cbfb7488fbb5771f48db36e6d.jpg",
														"label" : "\uc791\ud488 \ud560\uc778",
														"title" : null,
														"image_url" : null,
														"noti_grp" : null,
														"expire_time" : 0,
														"link_url" : "\/w\/product\/720a2eed-1735-4c10-bd67-e84114e2d144",
														"page" : ""
													},
													page : 'noti_list'
												}
											});
									vuepack.create(components);
								</script>
								<div data-v-6ae4a888="" class="notification_card_container">
									<input data-v-6ae4a888="" type="hidden" name="paging_param"
										value="48769555"> <a data-v-6ae4a888=""
										href="/w/showroom/1710" class="notification_card_link"><img
										data-v-6ae4a888=""
										src="https://image.idus.com/image/files/1b943d7e4df14e029705d57b9c2e55ed.jpg"
										class="notification_card_artist_img mCS_img_loaded">
										<div data-v-6ae4a888="" class="notification_card_content_box">
											<p data-v-6ae4a888="" class="label">이벤트</p>
											<p data-v-6ae4a888="" class="artist_name">⏰점심 전에 추석선물
												주문해두기⏰</p>
											<p data-v-6ae4a888="" class="message">(광고) 귀찮겠지만, 오늘 사두면
												속이 편안~☺ (결제할 때 2만원 쿠폰 꼭 쓰기💰) *수신거부:내정보&gt;설정&gt;앱 알림</p>
										</div>
										<p data-v-6ae4a888="" class="notification_card_date">9월 7일
										</p></a>
								</div>
								<script>
									var components = [];
									components
											.push({
												selector : '[data-vue="notification-card48769555"]',
												component : 'NotificationCard',
												props : {
													notification : {
														"id" : 48769555,
														"created" : 1630981813000,
														"modified" : 1630981813000,
														"artist_uuid" : "31be12c4-c498-11e3-8b03-06fd000000c2",
														"noti_style" : 99,
														"message" : "(\uad11\uace0) \uadc0\ucc2e\uaca0\uc9c0\ub9cc, \uc624\ub298 \uc0ac\ub450\uba74 \uc18d\uc774 \ud3b8\uc548~\u263a (\uacb0\uc81c\ud560 \ub54c 2\ub9cc\uc6d0 \ucfe0\ud3f0 \uaf2d \uc4f0\uae30\ud83d\udcb0)\n *\uc218\uc2e0\uac70\ubd80:\ub0b4\uc815\ubcf4>\uc124\uc815>\uc571 \uc54c\ub9bc",
														"name" : "\uc544\uc774\ub514\uc5b4\uc2a4(idus)",
														"artistname" : "\uc544\uc774\ub514\uc5b4\uc2a4",
														"userpicture" : "https:\/\/image.idus.com\/image\/files\/1b943d7e4df14e029705d57b9c2e55ed.jpg",
														"label" : "\uc774\ubca4\ud2b8",
														"title" : "\u23f0\uc810\uc2ec \uc804\uc5d0 \ucd94\uc11d\uc120\ubb3c \uc8fc\ubb38\ud574\ub450\uae30\u23f0",
														"image_url" : "",
														"noti_grp" : "event_targeting_210907",
														"expire_time" : 1632927659999,
														"link_url" : "\/w\/showroom\/1710",
														"page" : ""
													},
													page : 'noti_list'
												}
											});
									vuepack.create(components);
								</script>
								<div data-v-6ae4a888="" class="notification_card_container">
									<input data-v-6ae4a888="" type="hidden" name="paging_param"
										value="48721787"> <a data-v-6ae4a888=""
										href="/w/showroom/1709" class="notification_card_link"><img
										data-v-6ae4a888=""
										src="https://image.idus.com/image/files/1b943d7e4df14e029705d57b9c2e55ed.jpg"
										class="notification_card_artist_img mCS_img_loaded">
										<div data-v-6ae4a888="" class="notification_card_content_box">
											<p data-v-6ae4a888="" class="label">이벤트</p>
											<p data-v-6ae4a888="" class="artist_name">추석엔 고기선물🥩 VS
												과일선물?🍎</p>
											<p data-v-6ae4a888="" class="message">(광고) ~89% 할인이니까 둘
												다!😘 *수신거부:내정보&gt;설정&gt;앱 알림</p>
										</div>
										<p data-v-6ae4a888="" class="notification_card_date">9월 6일
										</p></a>
								</div>
								<script>
									var components = [];
									components
											.push({
												selector : '[data-vue="notification-card48721787"]',
												component : 'NotificationCard',
												props : {
													notification : {
														"id" : 48721787,
														"created" : 1630920619000,
														"modified" : 1630920619000,
														"artist_uuid" : "31be12c4-c498-11e3-8b03-06fd000000c2",
														"noti_style" : 99,
														"message" : "(\uad11\uace0) ~89% \ud560\uc778\uc774\ub2c8\uae4c \ub458 \ub2e4!\ud83d\ude18\n*\uc218\uc2e0\uac70\ubd80:\ub0b4\uc815\ubcf4>\uc124\uc815>\uc571 \uc54c\ub9bc",
														"name" : "\uc544\uc774\ub514\uc5b4\uc2a4(idus)",
														"artistname" : "\uc544\uc774\ub514\uc5b4\uc2a4",
														"userpicture" : "https:\/\/image.idus.com\/image\/files\/1b943d7e4df14e029705d57b9c2e55ed.jpg",
														"label" : "\uc774\ubca4\ud2b8",
														"title" : "\ucd94\uc11d\uc5d4 \uace0\uae30\uc120\ubb3c\ud83e\udd69 VS \uacfc\uc77c\uc120\ubb3c?\ud83c\udf4e",
														"image_url" : "https:\/\/image.idus.com\/image\/files\/a852bbba27a54d4ca7c1d6cb84af6f1d.jpg",
														"noti_grp" : "all_210906",
														"expire_time" : 1631458799999,
														"link_url" : "\/w\/showroom\/1709",
														"page" : ""
													},
													page : 'noti_list'
												}
											});
									vuepack.create(components);
								</script>
								<div data-v-6ae4a888="" class="notification_card_container">
									<input data-v-6ae4a888="" type="hidden" name="paging_param"
										value="48699104"> <a data-v-6ae4a888=""
										href="/w/product/735cf9ca-580c-4dfd-93eb-60af27381615"
										class="notification_card_link"><img data-v-6ae4a888=""
										src="https://image.idus.com/image/files/e8534c6cbfb7488fbb5771f48db36e6d.jpg"
										class="notification_card_artist_img mCS_img_loaded">
										<div data-v-6ae4a888="" class="notification_card_content_box">
											<p data-v-6ae4a888="" class="label">작품 할인</p>
											<p data-v-6ae4a888="" class="artist_name">늘해랑 떡공방</p>
											<p data-v-6ae4a888="" class="message">늘해랑 떡공방님이 '[추석선물]
												쫄깃한 아이스월병 ' 작품의 할인 판매를 시작하였습니다.</p>
										</div>
										<p data-v-6ae4a888="" class="notification_card_date">9월 6일
										</p></a>
								</div>
								<script>
									var components = [];
									components
											.push({
												selector : '[data-vue="notification-card48699104"]',
												component : 'NotificationCard',
												props : {
													notification : {
														"id" : 48699104,
														"created" : 1630896796898,
														"modified" : 1630896796898,
														"artist_uuid" : "2e754b3a-8c6e-4904-a8ab-9cac555cef5c",
														"noti_style" : 2,
														"message" : "\ub298\ud574\ub791 \ub5a1\uacf5\ubc29\ub2d8\uc774 '[\ucd94\uc11d\uc120\ubb3c] \ucac4\uae43\ud55c \uc544\uc774\uc2a4\uc6d4\ubcd1 ' \uc791\ud488\uc758 \ud560\uc778 \ud310\ub9e4\ub97c \uc2dc\uc791\ud558\uc600\uc2b5\ub2c8\ub2e4.",
														"name" : "\uc608\uc2ac",
														"artistname" : "\ub298\ud574\ub791 \ub5a1\uacf5\ubc29",
														"userpicture" : "https:\/\/image.idus.com\/image\/files\/e8534c6cbfb7488fbb5771f48db36e6d.jpg",
														"label" : "\uc791\ud488 \ud560\uc778",
														"title" : null,
														"image_url" : null,
														"noti_grp" : null,
														"expire_time" : 0,
														"link_url" : "\/w\/product\/735cf9ca-580c-4dfd-93eb-60af27381615",
														"page" : ""
													},
													page : 'noti_list'
												}
											});
									vuepack.create(components);
								</script>
								<div data-v-6ae4a888="" class="notification_card_container">
									<input data-v-6ae4a888="" type="hidden" name="paging_param"
										value="48689139"> <a data-v-6ae4a888=""
										href="/w/me/coupon" class="notification_card_link"><img
										data-v-6ae4a888=""
										src="https://image.idus.com/image/files/1b943d7e4df14e029705d57b9c2e55ed.jpg"
										class="notification_card_artist_img mCS_img_loaded">
										<div data-v-6ae4a888="" class="notification_card_content_box">
											<p data-v-6ae4a888="" class="label">쿠폰</p>
											<p data-v-6ae4a888="" class="artist_name">아이디어스</p>
											<p data-v-6ae4a888="" class="message">생에 단 한번! 5천원 할인쿠폰이
												발행되었습니다.</p>
										</div>
										<p data-v-6ae4a888="" class="notification_card_date">9월 6일
										</p></a>
								</div>
								<script>
									var components = [];
									components
											.push({
												selector : '[data-vue="notification-card48689139"]',
												component : 'NotificationCard',
												props : {
													notification : {
														"id" : 48689139,
														"created" : 1630886401785,
														"modified" : 1630886401785,
														"artist_uuid" : "31be12c4-c498-11e3-8b03-06fd000000c2",
														"noti_style" : 18,
														"message" : "\uc0dd\uc5d0 \ub2e8 \ud55c\ubc88! 5\ucc9c\uc6d0 \ud560\uc778\ucfe0\ud3f0\uc774 \ubc1c\ud589\ub418\uc5c8\uc2b5\ub2c8\ub2e4.",
														"name" : "\uc544\uc774\ub514\uc5b4\uc2a4(idus)",
														"artistname" : "\uc544\uc774\ub514\uc5b4\uc2a4",
														"userpicture" : "https:\/\/image.idus.com\/image\/files\/1b943d7e4df14e029705d57b9c2e55ed.jpg",
														"label" : "\ucfe0\ud3f0",
														"title" : null,
														"image_url" : null,
														"noti_grp" : null,
														"expire_time" : 0,
														"link_url" : "\/w\/me\/coupon",
														"page" : ""
													},
													page : 'noti_list'
												}
											});
									vuepack.create(components);
								</script>
								<div data-v-6ae4a888="" class="notification_card_container">
									<input data-v-6ae4a888="" type="hidden" name="paging_param"
										value="48674091"> <a data-v-6ae4a888=""
										href="/w/showroom/1767" class="notification_card_link"><img
										data-v-6ae4a888=""
										src="https://image.idus.com/image/files/1b943d7e4df14e029705d57b9c2e55ed.jpg"
										class="notification_card_artist_img mCS_img_loaded">
										<div data-v-6ae4a888="" class="notification_card_content_box">
											<p data-v-6ae4a888="" class="label">이벤트</p>
											<p data-v-6ae4a888="" class="artist_name">삐삐세대 퀴즈! 179
												7979! 무슨뜻이게?</p>
											<p data-v-6ae4a888="" class="message">(광고) 알아들었다면.. 어서
												들어와죠..💛 *수신거부:내정보&gt;설정&gt;앱 알림</p>
										</div>
										<p data-v-6ae4a888="" class="notification_card_date">9월 5일
										</p></a>
								</div>
								<script>
									var components = [];
									components
											.push({
												selector : '[data-vue="notification-card48674091"]',
												component : 'NotificationCard',
												props : {
													notification : {
														"id" : 48674091,
														"created" : 1630834213000,
														"modified" : 1630834213000,
														"artist_uuid" : "31be12c4-c498-11e3-8b03-06fd000000c2",
														"noti_style" : 99,
														"message" : "(\uad11\uace0) \uc54c\uc544\ub4e4\uc5c8\ub2e4\uba74.. \uc5b4\uc11c \ub4e4\uc5b4\uc640\uc8e0..\ud83d\udc9b\n*\uc218\uc2e0\uac70\ubd80:\ub0b4\uc815\ubcf4>\uc124\uc815>\uc571 \uc54c\ub9bc",
														"name" : "\uc544\uc774\ub514\uc5b4\uc2a4(idus)",
														"artistname" : "\uc544\uc774\ub514\uc5b4\uc2a4",
														"userpicture" : "https:\/\/image.idus.com\/image\/files\/1b943d7e4df14e029705d57b9c2e55ed.jpg",
														"label" : "\uc774\ubca4\ud2b8",
														"title" : "\uc090\uc090\uc138\ub300 \ud034\uc988! 179 7979! \ubb34\uc2a8\ub73b\uc774\uac8c?",
														"image_url" : "",
														"noti_grp" : "all_210905",
														"expire_time" : 1633014059999,
														"link_url" : "\/w\/showroom\/1767",
														"page" : ""
													},
													page : 'noti_list'
												}
											});
									vuepack.create(components);
								</script>
								<div data-v-6ae4a888="" class="notification_card_container">
									<input data-v-6ae4a888="" type="hidden" name="paging_param"
										value="48662673"> <a data-v-6ae4a888=""
										href="/w/me/coupon" class="notification_card_link"><img
										data-v-6ae4a888=""
										src="https://image.idus.com/image/files/1b943d7e4df14e029705d57b9c2e55ed.jpg"
										class="notification_card_artist_img mCS_img_loaded">
										<div data-v-6ae4a888="" class="notification_card_content_box">
											<p data-v-6ae4a888="" class="label">쿠폰</p>
											<p data-v-6ae4a888="" class="artist_name">아이디어스</p>
											<p data-v-6ae4a888="" class="message">앗! 오늘이 지나면 영영 사라지는
												쿠폰이 있네요? 잊지 말고 꼭 사용하세요!</p>
										</div>
										<p data-v-6ae4a888="" class="notification_card_date">9월 5일
										</p></a>
								</div>
								<script>
									var components = [];
									components
											.push({
												selector : '[data-vue="notification-card48662673"]',
												component : 'NotificationCard',
												props : {
													notification : {
														"id" : 48662673,
														"created" : 1630803604621,
														"modified" : 1630803604621,
														"artist_uuid" : "31be12c4-c498-11e3-8b03-06fd000000c2",
														"noti_style" : 18,
														"message" : "\uc557! \uc624\ub298\uc774 \uc9c0\ub098\uba74 \uc601\uc601 \uc0ac\ub77c\uc9c0\ub294 \ucfe0\ud3f0\uc774 \uc788\ub124\uc694? \uc78a\uc9c0 \ub9d0\uace0 \uaf2d \uc0ac\uc6a9\ud558\uc138\uc694!",
														"name" : "\uc544\uc774\ub514\uc5b4\uc2a4(idus)",
														"artistname" : "\uc544\uc774\ub514\uc5b4\uc2a4",
														"userpicture" : "https:\/\/image.idus.com\/image\/files\/1b943d7e4df14e029705d57b9c2e55ed.jpg",
														"label" : "\ucfe0\ud3f0",
														"title" : null,
														"image_url" : null,
														"noti_grp" : null,
														"expire_time" : 0,
														"link_url" : "\/w\/me\/coupon",
														"page" : ""
													},
													page : 'noti_list'
												}
											});
									vuepack.create(components);
								</script>
								<div data-v-6ae4a888="" class="notification_card_container">
									<input data-v-6ae4a888="" type="hidden" name="paging_param"
										value="48650192"> <a data-v-6ae4a888=""
										href="/w/showroom/1709" class="notification_card_link"><img
										data-v-6ae4a888=""
										src="https://image.idus.com/image/files/1b943d7e4df14e029705d57b9c2e55ed.jpg"
										class="notification_card_artist_img mCS_img_loaded">
										<div data-v-6ae4a888="" class="notification_card_content_box">
											<p data-v-6ae4a888="" class="label">이벤트</p>
											<p data-v-6ae4a888="" class="artist_name">🚇[89%할인] 폭주하는
												아이디어스🚇</p>
											<p data-v-6ae4a888="" class="message">(광고) 추석만을
												기다리고있었읍니다. 제대로 모시겠읍니다 *수신거부:내정보&gt;설정&gt;앱 알림</p>
										</div>
										<p data-v-6ae4a888="" class="notification_card_date">9월 4일
										</p></a>
								</div>
								<script>
									var components = [];
									components
											.push({
												selector : '[data-vue="notification-card48650192"]',
												component : 'NotificationCard',
												props : {
													notification : {
														"id" : 48650192,
														"created" : 1630747814000,
														"modified" : 1630747814000,
														"artist_uuid" : "31be12c4-c498-11e3-8b03-06fd000000c2",
														"noti_style" : 99,
														"message" : "(\uad11\uace0) \ucd94\uc11d\ub9cc\uc744 \uae30\ub2e4\ub9ac\uace0\uc788\uc5c8\uc74d\ub2c8\ub2e4. \uc81c\ub300\ub85c \ubaa8\uc2dc\uaca0\uc74d\ub2c8\ub2e4\n*\uc218\uc2e0\uac70\ubd80:\ub0b4\uc815\ubcf4>\uc124\uc815>\uc571 \uc54c\ub9bc",
														"name" : "\uc544\uc774\ub514\uc5b4\uc2a4(idus)",
														"artistname" : "\uc544\uc774\ub514\uc5b4\uc2a4",
														"userpicture" : "https:\/\/image.idus.com\/image\/files\/1b943d7e4df14e029705d57b9c2e55ed.jpg",
														"label" : "\uc774\ubca4\ud2b8",
														"title" : "\ud83d\ude87[89%\ud560\uc778] \ud3ed\uc8fc\ud558\ub294 \uc544\uc774\ub514\uc5b4\uc2a4\ud83d\ude87",
														"image_url" : "",
														"noti_grp" : "all_210904",
														"expire_time" : 1631458799999,
														"link_url" : "\/w\/showroom\/1709",
														"page" : ""
													},
													page : 'noti_list'
												}
											});
									vuepack.create(components);
								</script>
								<div data-v-6ae4a888="" class="notification_card_container">
									<input data-v-6ae4a888="" type="hidden" name="paging_param"
										value="48611017"> <a data-v-6ae4a888=""
										href="/w/event/main/thanksgiving-benefit"
										class="notification_card_link"><img data-v-6ae4a888=""
										src="https://image.idus.com/image/files/1b943d7e4df14e029705d57b9c2e55ed.jpg"
										class="notification_card_artist_img mCS_img_loaded">
										<div data-v-6ae4a888="" class="notification_card_content_box">
											<p data-v-6ae4a888="" class="label">이벤트</p>
											<p data-v-6ae4a888="" class="artist_name">🍀9월 할인상! 차린 게
												많으니 맘껏드세요!</p>
											<p data-v-6ae4a888="" class="message">(광고) 🔥제철맞은
												8O%할인에🔥 선착순 2천명 2만원 할인까지💚 *수신거부:내정보&gt;설정&gt;앱 알림</p>
										</div>
										<p data-v-6ae4a888="" class="notification_card_date">9월 3일
										</p></a>
								</div>
								<script>
									var components = [];
									components
											.push({
												selector : '[data-vue="notification-card48611017"]',
												component : 'NotificationCard',
												props : {
													notification : {
														"id" : 48611017,
														"created" : 1630660822000,
														"modified" : 1630660822000,
														"artist_uuid" : "31be12c4-c498-11e3-8b03-06fd000000c2",
														"noti_style" : 99,
														"message" : "(\uad11\uace0) \ud83d\udd25\uc81c\ucca0\ub9de\uc740 8O%\ud560\uc778\uc5d0\ud83d\udd25 \uc120\ucc29\uc21c 2\ucc9c\uba85 2\ub9cc\uc6d0 \ud560\uc778\uae4c\uc9c0\ud83d\udc9a\n*\uc218\uc2e0\uac70\ubd80:\ub0b4\uc815\ubcf4>\uc124\uc815>\uc571 \uc54c\ub9bc",
														"name" : "\uc544\uc774\ub514\uc5b4\uc2a4(idus)",
														"artistname" : "\uc544\uc774\ub514\uc5b4\uc2a4",
														"userpicture" : "https:\/\/image.idus.com\/image\/files\/1b943d7e4df14e029705d57b9c2e55ed.jpg",
														"label" : "\uc774\ubca4\ud2b8",
														"title" : "\ud83c\udf409\uc6d4 \ud560\uc778\uc0c1! \ucc28\ub9b0 \uac8c \ub9ce\uc73c\ub2c8 \ub9d8\uaecf\ub4dc\uc138\uc694!",
														"image_url" : "https:\/\/image.idus.com\/image\/files\/2b156188ef3c48a18e9adcc030816c01.png",
														"noti_grp" : "all_210903",
														"expire_time" : 1632974399999,
														"link_url" : "\/w\/event\/main\/thanksgiving-benefit",
														"page" : ""
													},
													page : 'noti_list'
												}
											});
									vuepack.create(components);
								</script>
								<div data-v-6ae4a888="" class="notification_card_container">
									<input data-v-6ae4a888="" type="hidden" name="paging_param"
										value="48558171"> <a data-v-6ae4a888=""
										href="/w/event/main/frequency/12"
										class="notification_card_link"><img data-v-6ae4a888=""
										src="https://image.idus.com/image/files/1b943d7e4df14e029705d57b9c2e55ed.jpg"
										class="notification_card_artist_img mCS_img_loaded">
										<div data-v-6ae4a888="" class="notification_card_content_box">
											<p data-v-6ae4a888="" class="label">이벤트</p>
											<p data-v-6ae4a888="" class="artist_name">💵1OO,OOO 추석용돈
												도착💵</p>
											<p data-v-6ae4a888="" class="message">(광고) 시작만 해도 쿠폰
												GET🎊 *수신거부:내정보&gt;설정&gt;앱 알림</p>
										</div>
										<p data-v-6ae4a888="" class="notification_card_date">9월 2일
										</p></a>
								</div>
								<script>
									var components = [];
									components
											.push({
												selector : '[data-vue="notification-card48558171"]',
												component : 'NotificationCard',
												props : {
													notification : {
														"id" : 48558171,
														"created" : 1630575024000,
														"modified" : 1630575024000,
														"artist_uuid" : "31be12c4-c498-11e3-8b03-06fd000000c2",
														"noti_style" : 99,
														"message" : "(\uad11\uace0) \uc2dc\uc791\ub9cc \ud574\ub3c4 \ucfe0\ud3f0 GET\ud83c\udf8a\n *\uc218\uc2e0\uac70\ubd80:\ub0b4\uc815\ubcf4>\uc124\uc815>\uc571 \uc54c\ub9bc",
														"name" : "\uc544\uc774\ub514\uc5b4\uc2a4(idus)",
														"artistname" : "\uc544\uc774\ub514\uc5b4\uc2a4",
														"userpicture" : "https:\/\/image.idus.com\/image\/files\/1b943d7e4df14e029705d57b9c2e55ed.jpg",
														"label" : "\uc774\ubca4\ud2b8",
														"title" : "\ud83d\udcb51OO,OOO \ucd94\uc11d\uc6a9\ub3c8 \ub3c4\ucc29\ud83d\udcb5",
														"image_url" : "https:\/\/image.idus.com\/image\/files\/7f685fc967f64112a0164942ce02969b.jpg",
														"noti_grp" : "all_210902",
														"expire_time" : 1633013999999,
														"link_url" : "\/w\/event\/main\/frequency\/12",
														"page" : ""
													},
													page : 'noti_list'
												}
											});
									vuepack.create(components);
								</script>
								<div data-v-6ae4a888="" class="notification_card_container">
									<input data-v-6ae4a888="" type="hidden" name="paging_param"
										value="48535680"> <a data-v-6ae4a888=""
										href="/w/me/coupon" class="notification_card_link"><img
										data-v-6ae4a888=""
										src="https://image.idus.com/image/files/1b943d7e4df14e029705d57b9c2e55ed.jpg"
										class="notification_card_artist_img mCS_img_loaded">
										<div data-v-6ae4a888="" class="notification_card_content_box">
											<p data-v-6ae4a888="" class="label">쿠폰</p>
											<p data-v-6ae4a888="" class="artist_name">아이디어스</p>
											<p data-v-6ae4a888="" class="message">앗! 오늘이 지나면 영영 사라지는
												쿠폰이 있네요? 잊지 말고 꼭 사용하세요!</p>
										</div>
										<p data-v-6ae4a888="" class="notification_card_date">9월 2일
										</p></a>
								</div>
								<script>
									var components = [];
									components
											.push({
												selector : '[data-vue="notification-card48535680"]',
												component : 'NotificationCard',
												props : {
													notification : {
														"id" : 48535680,
														"created" : 1630544428402,
														"modified" : 1630544428402,
														"artist_uuid" : "31be12c4-c498-11e3-8b03-06fd000000c2",
														"noti_style" : 18,
														"message" : "\uc557! \uc624\ub298\uc774 \uc9c0\ub098\uba74 \uc601\uc601 \uc0ac\ub77c\uc9c0\ub294 \ucfe0\ud3f0\uc774 \uc788\ub124\uc694? \uc78a\uc9c0 \ub9d0\uace0 \uaf2d \uc0ac\uc6a9\ud558\uc138\uc694!",
														"name" : "\uc544\uc774\ub514\uc5b4\uc2a4(idus)",
														"artistname" : "\uc544\uc774\ub514\uc5b4\uc2a4",
														"userpicture" : "https:\/\/image.idus.com\/image\/files\/1b943d7e4df14e029705d57b9c2e55ed.jpg",
														"label" : "\ucfe0\ud3f0",
														"title" : null,
														"image_url" : null,
														"noti_grp" : null,
														"expire_time" : 0,
														"link_url" : "\/w\/me\/coupon",
														"page" : ""
													},
													page : 'noti_list'
												}
											});
									vuepack.create(components);
								</script>
								<div data-v-6ae4a888="" class="notification_card_container">
									<input data-v-6ae4a888="" type="hidden" name="paging_param"
										value="48501631"> <a data-v-6ae4a888=""
										href="/w/showroom/1767" class="notification_card_link"><img
										data-v-6ae4a888=""
										src="https://image.idus.com/image/files/1b943d7e4df14e029705d57b9c2e55ed.jpg"
										class="notification_card_artist_img mCS_img_loaded">
										<div data-v-6ae4a888="" class="notification_card_content_box">
											<p data-v-6ae4a888="" class="label">이벤트</p>
											<p data-v-6ae4a888="" class="artist_name">🎁9월 선물 도착!🎁</p>
											<p data-v-6ae4a888="" class="message">(광고) 두구두구, 무슨
												선물일까?(힌트: 79%) *수신거부:내정보&gt;설정&gt;앱 알림</p>
										</div>
										<p data-v-6ae4a888="" class="notification_card_date">9월 1일
										</p></a>
								</div>
								<script>
									var components = [];
									components
											.push({
												selector : '[data-vue="notification-card48501631"]',
												component : 'NotificationCard',
												props : {
													notification : {
														"id" : 48501631,
														"created" : 1630488620000,
														"modified" : 1630488620000,
														"artist_uuid" : "31be12c4-c498-11e3-8b03-06fd000000c2",
														"noti_style" : 99,
														"message" : "(\uad11\uace0) \ub450\uad6c\ub450\uad6c, \ubb34\uc2a8 \uc120\ubb3c\uc77c\uae4c?(\ud78c\ud2b8: 79%)\n *\uc218\uc2e0\uac70\ubd80:\ub0b4\uc815\ubcf4>\uc124\uc815>\uc571 \uc54c\ub9bc",
														"name" : "\uc544\uc774\ub514\uc5b4\uc2a4(idus)",
														"artistname" : "\uc544\uc774\ub514\uc5b4\uc2a4",
														"userpicture" : "https:\/\/image.idus.com\/image\/files\/1b943d7e4df14e029705d57b9c2e55ed.jpg",
														"label" : "\uc774\ubca4\ud2b8",
														"title" : "\ud83c\udf819\uc6d4 \uc120\ubb3c \ub3c4\ucc29!\ud83c\udf81",
														"image_url" : "https:\/\/image.idus.com\/image\/files\/33a9abac44a240aeb6d2ae1ed7141e76.jpg",
														"noti_grp" : "all_210901",
														"expire_time" : 1633014059999,
														"link_url" : "\/w\/showroom\/1767",
														"page" : ""
													},
													page : 'noti_list'
												}
											});
									vuepack.create(components);
								</script>
								<div data-v-6ae4a888="" class="notification_card_container">
									<input data-v-6ae4a888="" type="hidden" name="paging_param"
										value="48477576"> <a data-v-6ae4a888=""
										href="/w/product/c35cb502-b456-476d-901e-c23d51c14dae"
										class="notification_card_link"><img data-v-6ae4a888=""
										src="https://image.idus.com/image/files/7036aa7ce7c043f7835e6ef121c5134c.jpg"
										class="notification_card_artist_img mCS_img_loaded">
										<div data-v-6ae4a888="" class="notification_card_content_box">
											<p data-v-6ae4a888="" class="label">작품 할인</p>
											<p data-v-6ae4a888="" class="artist_name">다앤하(danha)</p>
											<p data-v-6ae4a888="" class="message">다앤하(danha)님이
												'추석선물❤️선착순30set할인❤️미니칙피쇼콜라15구' 작품의 할인 판매를 시작하였습니다.</p>
										</div>
										<p data-v-6ae4a888="" class="notification_card_date">9월 1일
										</p></a>
								</div>
								<script>
									var components = [];
									components
											.push({
												selector : '[data-vue="notification-card48477576"]',
												component : 'NotificationCard',
												props : {
													notification : {
														"id" : 48477576,
														"created" : 1630455754274,
														"modified" : 1630455754274,
														"artist_uuid" : "598fb7c4-6674-47de-ad02-95673d738a99",
														"noti_style" : 2,
														"message" : "\ub2e4\uc564\ud558(danha)\ub2d8\uc774 '\ucd94\uc11d\uc120\ubb3c\u2764\ufe0f\uc120\ucc29\uc21c30set\ud560\uc778\u2764\ufe0f\ubbf8\ub2c8\uce59\ud53c\uc1fc\ucf5c\ub77c15\uad6c' \uc791\ud488\uc758 \ud560\uc778 \ud310\ub9e4\ub97c \uc2dc\uc791\ud558\uc600\uc2b5\ub2c8\ub2e4.",
														"name" : "\ub2e4\uc564\ud558",
														"artistname" : "\ub2e4\uc564\ud558(danha)",
														"userpicture" : "https:\/\/image.idus.com\/image\/files\/7036aa7ce7c043f7835e6ef121c5134c.jpg",
														"label" : "\uc791\ud488 \ud560\uc778",
														"title" : null,
														"image_url" : null,
														"noti_grp" : null,
														"expire_time" : 0,
														"link_url" : "\/w\/product\/c35cb502-b456-476d-901e-c23d51c14dae",
														"page" : ""
													},
													page : 'noti_list'
												}
											});
									vuepack.create(components);
								</script>
								<div data-v-6ae4a888="" class="notification_card_container">
									<input data-v-6ae4a888="" type="hidden" name="paging_param"
										value="48443423"> <a data-v-6ae4a888=""
										href="/w/showroom/1652" class="notification_card_link"><img
										data-v-6ae4a888=""
										src="https://image.idus.com/image/files/1b943d7e4df14e029705d57b9c2e55ed.jpg"
										class="notification_card_artist_img mCS_img_loaded">
										<div data-v-6ae4a888="" class="notification_card_content_box">
											<p data-v-6ae4a888="" class="label">이벤트</p>
											<p data-v-6ae4a888="" class="artist_name">줄 수 있는 게 87%
												할인밖에 없다💸</p>
											<p data-v-6ae4a888="" class="message">(광고) 그래도 네가 들어와 주길
												바라본다...🥺 *수신거부:내정보&gt;설정&gt;앱 알림</p>
										</div>
										<p data-v-6ae4a888="" class="notification_card_date">8월
											31일</p></a>
								</div>
								<script>
									var components = [];
									components
											.push({
												selector : '[data-vue="notification-card48443423"]',
												component : 'NotificationCard',
												props : {
													notification : {
														"id" : 48443423,
														"created" : 1630402217000,
														"modified" : 1630402217000,
														"artist_uuid" : "31be12c4-c498-11e3-8b03-06fd000000c2",
														"noti_style" : 99,
														"message" : "(\uad11\uace0) \uadf8\ub798\ub3c4 \ub124\uac00 \ub4e4\uc5b4\uc640 \uc8fc\uae38 \ubc14\ub77c\ubcf8\ub2e4...\ud83e\udd7a\n*\uc218\uc2e0\uac70\ubd80:\ub0b4\uc815\ubcf4>\uc124\uc815>\uc571 \uc54c\ub9bc",
														"name" : "\uc544\uc774\ub514\uc5b4\uc2a4(idus)",
														"artistname" : "\uc544\uc774\ub514\uc5b4\uc2a4",
														"userpicture" : "https:\/\/image.idus.com\/image\/files\/1b943d7e4df14e029705d57b9c2e55ed.jpg",
														"label" : "\uc774\ubca4\ud2b8",
														"title" : "\uc904 \uc218 \uc788\ub294 \uac8c 87% \ud560\uc778\ubc16\uc5d0 \uc5c6\ub2e4\ud83d\udcb8",
														"image_url" : "",
														"noti_grp" : "all_210831",
														"expire_time" : 1630422059999,
														"link_url" : "\/w\/showroom\/1652",
														"page" : ""
													},
													page : 'noti_list'
												}
											});
									vuepack.create(components);
								</script>
								<div data-v-6ae4a888="" class="notification_card_container">
									<input data-v-6ae4a888="" type="hidden" name="paging_param"
										value="48435948"> <a data-v-6ae4a888=""
										href="/w/story/5eb4f53d-1370-44f2-8516-ee28863f257a"
										class="notification_card_link"><img data-v-6ae4a888=""
										src="https://image.idus.com/image/files/7036aa7ce7c043f7835e6ef121c5134c.jpg"
										class="notification_card_artist_img mCS_img_loaded">
										<div data-v-6ae4a888="" class="notification_card_content_box">
											<p data-v-6ae4a888="" class="label">스토리</p>
											<p data-v-6ae4a888="" class="artist_name">다앤하(danha)</p>
											<p data-v-6ae4a888="" class="message">다앤하(danha)님이 새로운
												스토리를 게시하였습니다. 궁금하시죠?</p>
										</div>
										<p data-v-6ae4a888="" class="notification_card_date">8월
											31일</p></a>
								</div>
								<script>
									var components = [];
									components
											.push({
												selector : '[data-vue="notification-card48435948"]',
												component : 'NotificationCard',
												props : {
													notification : {
														"id" : 48435948,
														"created" : 1630392444503,
														"modified" : 1630392444503,
														"artist_uuid" : "598fb7c4-6674-47de-ad02-95673d738a99",
														"noti_style" : 1,
														"message" : "\ub2e4\uc564\ud558(danha)\ub2d8\uc774 \uc0c8\ub85c\uc6b4 \uc2a4\ud1a0\ub9ac\ub97c \uac8c\uc2dc\ud558\uc600\uc2b5\ub2c8\ub2e4. \uad81\uae08\ud558\uc2dc\uc8e0?",
														"name" : "\ub2e4\uc564\ud558",
														"artistname" : "\ub2e4\uc564\ud558(danha)",
														"userpicture" : "https:\/\/image.idus.com\/image\/files\/7036aa7ce7c043f7835e6ef121c5134c.jpg",
														"label" : "\uc2a4\ud1a0\ub9ac",
														"title" : null,
														"image_url" : null,
														"noti_grp" : null,
														"expire_time" : 0,
														"link_url" : "\/w\/story\/5eb4f53d-1370-44f2-8516-ee28863f257a",
														"page" : ""
													},
													page : 'noti_list'
												}
											});
									vuepack.create(components);
								</script>
								<div data-v-6ae4a888="" class="notification_card_container">
									<input data-v-6ae4a888="" type="hidden" name="paging_param"
										value="48435863"> <a data-v-6ae4a888=""
										href="/w/product/6aa8b9ab-16e8-4322-b5a0-5655e286060b"
										class="notification_card_link"><img data-v-6ae4a888=""
										src="https://image.idus.com/image/files/7036aa7ce7c043f7835e6ef121c5134c.jpg"
										class="notification_card_artist_img mCS_img_loaded">
										<div data-v-6ae4a888="" class="notification_card_content_box">
											<p data-v-6ae4a888="" class="label">작품 할인</p>
											<p data-v-6ae4a888="" class="artist_name">다앤하(danha)</p>
											<p data-v-6ae4a888="" class="message">다앤하(danha)님이
												'1990원500개 한정판매 4맛1통‼️' 작품의 할인 판매를 시작하였습니다.</p>
										</div>
										<p data-v-6ae4a888="" class="notification_card_date">8월
											31일</p></a>
								</div>
								<script>
									var components = [];
									components
											.push({
												selector : '[data-vue="notification-card48435863"]',
												component : 'NotificationCard',
												props : {
													notification : {
														"id" : 48435863,
														"created" : 1630392365119,
														"modified" : 1630392365119,
														"artist_uuid" : "598fb7c4-6674-47de-ad02-95673d738a99",
														"noti_style" : 2,
														"message" : "\ub2e4\uc564\ud558(danha)\ub2d8\uc774 '1990\uc6d0500\uac1c \ud55c\uc815\ud310\ub9e4 4\ub9db1\ud1b5\u203c\ufe0f' \uc791\ud488\uc758 \ud560\uc778 \ud310\ub9e4\ub97c \uc2dc\uc791\ud558\uc600\uc2b5\ub2c8\ub2e4.",
														"name" : "\ub2e4\uc564\ud558",
														"artistname" : "\ub2e4\uc564\ud558(danha)",
														"userpicture" : "https:\/\/image.idus.com\/image\/files\/7036aa7ce7c043f7835e6ef121c5134c.jpg",
														"label" : "\uc791\ud488 \ud560\uc778",
														"title" : null,
														"image_url" : null,
														"noti_grp" : null,
														"expire_time" : 0,
														"link_url" : "\/w\/product\/6aa8b9ab-16e8-4322-b5a0-5655e286060b",
														"page" : ""
													},
													page : 'noti_list'
												}
											});
									vuepack.create(components);
								</script>
								<div data-v-6ae4a888="" class="notification_card_container">
									<input data-v-6ae4a888="" type="hidden" name="paging_param"
										value="48380521"> <a data-v-6ae4a888=""
										href="/w/showroom/1709" class="notification_card_link"><img
										data-v-6ae4a888=""
										src="https://image.idus.com/image/files/1b943d7e4df14e029705d57b9c2e55ed.jpg"
										class="notification_card_artist_img mCS_img_loaded">
										<div data-v-6ae4a888="" class="notification_card_content_box">
											<p data-v-6ae4a888="" class="label">이벤트</p>
											<p data-v-6ae4a888="" class="artist_name">추석 선물 11%만 내고
												사세요!🛍</p>
											<p data-v-6ae4a888="" class="message">(광고) 89%는 저희가 낼게요!!
												워후!😎 *수신거부:내정보&gt;설정&gt;앱 알림</p>
										</div>
										<p data-v-6ae4a888="" class="notification_card_date">8월
											30일</p></a>
								</div>
								<script>
									var components = [];
									components
											.push({
												selector : '[data-vue="notification-card48380521"]',
												component : 'NotificationCard',
												props : {
													notification : {
														"id" : 48380521,
														"created" : 1630314022000,
														"modified" : 1630314022000,
														"artist_uuid" : "31be12c4-c498-11e3-8b03-06fd000000c2",
														"noti_style" : 99,
														"message" : "(\uad11\uace0) 89%\ub294 \uc800\ud76c\uac00 \ub0bc\uac8c\uc694!! \uc6cc\ud6c4!\ud83d\ude0e\n*\uc218\uc2e0\uac70\ubd80:\ub0b4\uc815\ubcf4>\uc124\uc815>\uc571 \uc54c\ub9bc",
														"name" : "\uc544\uc774\ub514\uc5b4\uc2a4(idus)",
														"artistname" : "\uc544\uc774\ub514\uc5b4\uc2a4",
														"userpicture" : "https:\/\/image.idus.com\/image\/files\/1b943d7e4df14e029705d57b9c2e55ed.jpg",
														"label" : "\uc774\ubca4\ud2b8",
														"title" : "\ucd94\uc11d \uc120\ubb3c 11%\ub9cc \ub0b4\uace0 \uc0ac\uc138\uc694!\ud83d\udecd",
														"image_url" : "https:\/\/image.idus.com\/image\/files\/ce6bbd2d38b5430da3564549c050e4ef.jpg",
														"noti_grp" : "all_210830",
														"expire_time" : 1631458799999,
														"link_url" : "\/w\/showroom\/1709",
														"page" : ""
													},
													page : 'noti_list'
												}
											});
									vuepack.create(components);
								</script>
								<div data-v-6ae4a888="" class="notification_card_container">
									<input data-v-6ae4a888="" type="hidden" name="paging_param"
										value="48338383"> <a data-v-6ae4a888=""
										href="/w/showroom/1652" class="notification_card_link"><img
										data-v-6ae4a888=""
										src="https://image.idus.com/image/files/1b943d7e4df14e029705d57b9c2e55ed.jpg"
										class="notification_card_artist_img mCS_img_loaded">
										<div data-v-6ae4a888="" class="notification_card_content_box">
											<p data-v-6ae4a888="" class="label">이벤트</p>
											<p data-v-6ae4a888="" class="artist_name">이번 달 할인 안착한 것
												같아요😑</p>
											<p data-v-6ae4a888="" class="message">(광고) 87% 할인 내 마음에
												안착😍❤ *수신거부:내정보&gt;설정&gt;앱 알림</p>
										</div>
										<p data-v-6ae4a888="" class="notification_card_date">8월
											29일</p></a>
								</div>
								<script>
									var components = [];
									components
											.push({
												selector : '[data-vue="notification-card48338383"]',
												component : 'NotificationCard',
												props : {
													notification : {
														"id" : 48338383,
														"created" : 1630227620000,
														"modified" : 1630227620000,
														"artist_uuid" : "31be12c4-c498-11e3-8b03-06fd000000c2",
														"noti_style" : 99,
														"message" : "(\uad11\uace0) 87% \ud560\uc778 \ub0b4 \ub9c8\uc74c\uc5d0 \uc548\ucc29\ud83d\ude0d\u2764\n*\uc218\uc2e0\uac70\ubd80:\ub0b4\uc815\ubcf4>\uc124\uc815>\uc571 \uc54c\ub9bc",
														"name" : "\uc544\uc774\ub514\uc5b4\uc2a4(idus)",
														"artistname" : "\uc544\uc774\ub514\uc5b4\uc2a4",
														"userpicture" : "https:\/\/image.idus.com\/image\/files\/1b943d7e4df14e029705d57b9c2e55ed.jpg",
														"label" : "\uc774\ubca4\ud2b8",
														"title" : "\uc774\ubc88 \ub2ec \ud560\uc778 \uc548\ucc29\ud55c \uac83 \uac19\uc544\uc694\ud83d\ude11",
														"image_url" : "",
														"noti_grp" : "all_210829",
														"expire_time" : 1630421999999,
														"link_url" : "\/w\/showroom\/1652",
														"page" : ""
													},
													page : 'noti_list'
												}
											});
									vuepack.create(components);
								</script>
								<div data-v-6ae4a888="" class="notification_card_container">
									<input data-v-6ae4a888="" type="hidden" name="paging_param"
										value="48326297"> <a data-v-6ae4a888=""
										href="/w/me/coupon" class="notification_card_link"><img
										data-v-6ae4a888=""
										src="https://image.idus.com/image/files/1b943d7e4df14e029705d57b9c2e55ed.jpg"
										class="notification_card_artist_img mCS_img_loaded">
										<div data-v-6ae4a888="" class="notification_card_content_box">
											<p data-v-6ae4a888="" class="label">쿠폰</p>
											<p data-v-6ae4a888="" class="artist_name">아이디어스</p>
											<p data-v-6ae4a888="" class="message">아이디어스 작가님이 쿠폰을
												발행하였습니다. 어떤 작품을 할인받을 수 있나 볼까요?</p>
										</div>
										<p data-v-6ae4a888="" class="notification_card_date">8월
											29일</p></a>
								</div>
								<script>
									var components = [];
									components
											.push({
												selector : '[data-vue="notification-card48326297"]',
												component : 'NotificationCard',
												props : {
													notification : {
														"id" : 48326297,
														"created" : 1630181285953,
														"modified" : 1630181285953,
														"artist_uuid" : "31be12c4-c498-11e3-8b03-06fd000000c2",
														"noti_style" : 18,
														"message" : "\uc544\uc774\ub514\uc5b4\uc2a4 \uc791\uac00\ub2d8\uc774 \ucfe0\ud3f0\uc744 \ubc1c\ud589\ud558\uc600\uc2b5\ub2c8\ub2e4. \uc5b4\ub5a4 \uc791\ud488\uc744 \ud560\uc778\ubc1b\uc744 \uc218 \uc788\ub098 \ubcfc\uae4c\uc694?",
														"name" : "\uc544\uc774\ub514\uc5b4\uc2a4(idus)",
														"artistname" : "\uc544\uc774\ub514\uc5b4\uc2a4",
														"userpicture" : "https:\/\/image.idus.com\/image\/files\/1b943d7e4df14e029705d57b9c2e55ed.jpg",
														"label" : "\ucfe0\ud3f0",
														"title" : null,
														"image_url" : null,
														"noti_grp" : null,
														"expire_time" : 0,
														"link_url" : "\/w\/me\/coupon",
														"page" : ""
													},
													page : 'noti_list'
												}
											});
									vuepack.create(components);
								</script>
								<div data-v-6ae4a888="" class="notification_card_container">
									<input data-v-6ae4a888="" type="hidden" name="paging_param"
										value="48326296"> <a data-v-6ae4a888=""
										href="/w/me/coupon" class="notification_card_link"><img
										data-v-6ae4a888=""
										src="https://image.idus.com/image/files/1b943d7e4df14e029705d57b9c2e55ed.jpg"
										class="notification_card_artist_img mCS_img_loaded">
										<div data-v-6ae4a888="" class="notification_card_content_box">
											<p data-v-6ae4a888="" class="label">쿠폰</p>
											<p data-v-6ae4a888="" class="artist_name">아이디어스</p>
											<p data-v-6ae4a888="" class="message">아이디어스 작가님이 쿠폰을
												발행하였습니다. 어떤 작품을 할인받을 수 있나 볼까요?</p>
										</div>
										<p data-v-6ae4a888="" class="notification_card_date">8월
											29일</p></a>
								</div>
								<script>
									var components = [];
									components
											.push({
												selector : '[data-vue="notification-card48326296"]',
												component : 'NotificationCard',
												props : {
													notification : {
														"id" : 48326296,
														"created" : 1630181285932,
														"modified" : 1630181285932,
														"artist_uuid" : "31be12c4-c498-11e3-8b03-06fd000000c2",
														"noti_style" : 18,
														"message" : "\uc544\uc774\ub514\uc5b4\uc2a4 \uc791\uac00\ub2d8\uc774 \ucfe0\ud3f0\uc744 \ubc1c\ud589\ud558\uc600\uc2b5\ub2c8\ub2e4. \uc5b4\ub5a4 \uc791\ud488\uc744 \ud560\uc778\ubc1b\uc744 \uc218 \uc788\ub098 \ubcfc\uae4c\uc694?",
														"name" : "\uc544\uc774\ub514\uc5b4\uc2a4(idus)",
														"artistname" : "\uc544\uc774\ub514\uc5b4\uc2a4",
														"userpicture" : "https:\/\/image.idus.com\/image\/files\/1b943d7e4df14e029705d57b9c2e55ed.jpg",
														"label" : "\ucfe0\ud3f0",
														"title" : null,
														"image_url" : null,
														"noti_grp" : null,
														"expire_time" : 0,
														"link_url" : "\/w\/me\/coupon",
														"page" : ""
													},
													page : 'noti_list'
												}
											});
									vuepack.create(components);
								</script>
								<div data-v-6ae4a888="" class="notification_card_container">
									<input data-v-6ae4a888="" type="hidden" name="paging_param"
										value="48326295"> <a data-v-6ae4a888=""
										href="/w/me/coupon" class="notification_card_link"><img
										data-v-6ae4a888=""
										src="https://image.idus.com/image/files/1b943d7e4df14e029705d57b9c2e55ed.jpg"
										class="notification_card_artist_img mCS_img_loaded">
										<div data-v-6ae4a888="" class="notification_card_content_box">
											<p data-v-6ae4a888="" class="label">쿠폰</p>
											<p data-v-6ae4a888="" class="artist_name">아이디어스</p>
											<p data-v-6ae4a888="" class="message">아이디어스 작가님이 쿠폰을
												발행하였습니다. 어떤 작품을 할인받을 수 있나 볼까요?</p>
										</div>
										<p data-v-6ae4a888="" class="notification_card_date">8월
											29일</p></a>
								</div>
								<script>
									var components = [];
									components
											.push({
												selector : '[data-vue="notification-card48326295"]',
												component : 'NotificationCard',
												props : {
													notification : {
														"id" : 48326295,
														"created" : 1630181285931,
														"modified" : 1630181285931,
														"artist_uuid" : "31be12c4-c498-11e3-8b03-06fd000000c2",
														"noti_style" : 18,
														"message" : "\uc544\uc774\ub514\uc5b4\uc2a4 \uc791\uac00\ub2d8\uc774 \ucfe0\ud3f0\uc744 \ubc1c\ud589\ud558\uc600\uc2b5\ub2c8\ub2e4. \uc5b4\ub5a4 \uc791\ud488\uc744 \ud560\uc778\ubc1b\uc744 \uc218 \uc788\ub098 \ubcfc\uae4c\uc694?",
														"name" : "\uc544\uc774\ub514\uc5b4\uc2a4(idus)",
														"artistname" : "\uc544\uc774\ub514\uc5b4\uc2a4",
														"userpicture" : "https:\/\/image.idus.com\/image\/files\/1b943d7e4df14e029705d57b9c2e55ed.jpg",
														"label" : "\ucfe0\ud3f0",
														"title" : null,
														"image_url" : null,
														"noti_grp" : null,
														"expire_time" : 0,
														"link_url" : "\/w\/me\/coupon",
														"page" : ""
													},
													page : 'noti_list'
												}
											});
									vuepack.create(components);
								</script>
								<div data-v-6ae4a888="" class="notification_card_container">
									<input data-v-6ae4a888="" type="hidden" name="paging_param"
										value="48326294"> <a data-v-6ae4a888=""
										href="/w/me/coupon" class="notification_card_link"><img
										data-v-6ae4a888=""
										src="https://image.idus.com/image/files/1b943d7e4df14e029705d57b9c2e55ed.jpg"
										class="notification_card_artist_img mCS_img_loaded">
										<div data-v-6ae4a888="" class="notification_card_content_box">
											<p data-v-6ae4a888="" class="label">쿠폰</p>
											<p data-v-6ae4a888="" class="artist_name">아이디어스</p>
											<p data-v-6ae4a888="" class="message">아이디어스 작가님이 쿠폰을
												발행하였습니다. 어떤 작품을 할인받을 수 있나 볼까요?</p>
										</div>
										<p data-v-6ae4a888="" class="notification_card_date">8월
											29일</p></a>
								</div>
								<script>
									var components = [];
									components
											.push({
												selector : '[data-vue="notification-card48326294"]',
												component : 'NotificationCard',
												props : {
													notification : {
														"id" : 48326294,
														"created" : 1630181285905,
														"modified" : 1630181285905,
														"artist_uuid" : "31be12c4-c498-11e3-8b03-06fd000000c2",
														"noti_style" : 18,
														"message" : "\uc544\uc774\ub514\uc5b4\uc2a4 \uc791\uac00\ub2d8\uc774 \ucfe0\ud3f0\uc744 \ubc1c\ud589\ud558\uc600\uc2b5\ub2c8\ub2e4. \uc5b4\ub5a4 \uc791\ud488\uc744 \ud560\uc778\ubc1b\uc744 \uc218 \uc788\ub098 \ubcfc\uae4c\uc694?",
														"name" : "\uc544\uc774\ub514\uc5b4\uc2a4(idus)",
														"artistname" : "\uc544\uc774\ub514\uc5b4\uc2a4",
														"userpicture" : "https:\/\/image.idus.com\/image\/files\/1b943d7e4df14e029705d57b9c2e55ed.jpg",
														"label" : "\ucfe0\ud3f0",
														"title" : null,
														"image_url" : null,
														"noti_grp" : null,
														"expire_time" : 0,
														"link_url" : "\/w\/me\/coupon",
														"page" : ""
													},
													page : 'noti_list'
												}
											});
									vuepack.create(components);
								</script>
							</div>
						</div>
						<div id="mCSB_3_scrollbar_vertical"
							class="mCSB_scrollTools mCSB_3_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
							style="display: block;">
							<div class="mCSB_draggerContainer">
								<div id="mCSB_3_dragger_vertical" class="mCSB_dragger"
									style="position: absolute; min-height: 50px; display: block; height: 224px; max-height: 786px; top: 0px;">
									<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
									<div class="mCSB_draggerRail"></div>
								</div>
							</div>
						</div>
					</ul>
				</section>
			</div>
		</div>

		<script>
			$(document)
					.ready(
							function() {
								var $body = $('body');
								var bannerGroupHeight = $body.find(
										'.head_banner_group').height();
								var notiList = $body.find(
										'[data-page="notification"]').find(
										'.msg-lists');
								var notiListTop = Number(notiList.css('top')
										.split('p')[0]);
								var isMobile = false ? true : false;

								if (isMobile) {
									if (bannerGroupHeight) {
										notiList
												.css(
														'top',
														(notiListTop + bannerGroupHeight)
																+ 'px');
									} else {
										notiList.css('top', '123px');
									}
								}
							});

			(function() {
				var Logger = vuepack.externals.IdusLog.Logger;
				var PageName = vuepack.externals.IdusLog.PageName;
				Logger.sendPageView(PageName.Inbox);
			})();
		</script>
		<div data-vue="ToastPopup"></div>
		<div data-vue="BottomSheet"></div>
		<div data-vue="WideBottomSheet"></div>
		<div data-vue="FooterModal"></div>
		<div data-vue="InactiveToast"></div>
		<a href="#header" class="to-top" data-ui="scroll-to-top" data-page="">
			<img src="/resources/dist/images/go-to-top-image.png" alt="go to top">
		</a>
		<jsp:include page="footer.jsp" />
		<script>
			function escrowPopup() {
				var url = 'https://pg.nicepay.co.kr/issue/IssueEscrow.jsp?Mid=iduscom01m&CoNo=1078783297';
				var newWindow = window
						.open(url, 'name', 'height=450,width=400');

				if (window.focus)
					newWindow.focus();
				return false;
			}

			vuepack.create([ {
				selector : '[data-vue="BottomSheet"]',
				component : 'BottomSheet'
			}, {
				selector : '[data-vue="WideBottomSheet"]',
				component : 'WideBottomSheet'
			}, {
				selector : '[data-vue="FooterModal"]',
				component : 'FooterModal'
			}, {
				selector : '[data-vue="ToastPopup"]',
				component : 'ToastPopup'
			}, {
				selector : '[data-vue="InactiveToast',
				component : 'InactiveToast'
			} ]);
		</script>
	</div>
	<!-- div WRAP -->
	<script type="text/javascript"
		src="/resources/dist/js/idus.web.min.js?__v=1631255393"></script>
	<script>
        (function(){
            var applink = new vuepack.externals.Applink();
            var scheme = applink.locationToAppScheme();

            var isIOS = (navigator.userAgent.match('iPhone') != null
                || navigator.userAgent.match('iPod') != null
                || navigator.userAgent.match('iPad') != null);

            // App 충돌 이슈로 인해 Android만 wta query 적용하지 않도록 함
            if (isIOS) {
                var hasQueryMark = scheme.indexOf('?') !== -1;
                var randomHash = BPackr.randomHash(16);
                var key = "mobile_web";

                if (hasQueryMark) {
                    scheme = scheme + '&wta=' +  randomHash;
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
