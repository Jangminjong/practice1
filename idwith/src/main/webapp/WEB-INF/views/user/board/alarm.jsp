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
<!-- 파비콘 이미지 설정 -->
<link rel="shortcut icon" type="image/x-icon"
	href="resources/images/title/icon_300.PNG">
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
	
<link rel="stylesheet" href="resources/css/idus.web.min.css">
<link rel="stylesheet" href="resources/css/vendor.client.min.css">
<link rel="stylesheet" href="resources/css/alarm.css">
</head>
<body>
	<div data-vue="token"></div>
	<div data-vue="globalUser"></div>
	<div data-vue="resizeHandler"></div>
	<div class="wrap">
		<jsp:include page="../header_goods.jsp" />

		<div class="dimmed-background"></div>
		<div id="content" class="content" data-page="notification" style="margin-top:-42px;">
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
							<div data-v-6b812f0e=""
								class="notification_important_layout_conatiner">
								<p data-v-6b812f0e="" class="title">중요한 이벤트 알림</p>
								<div data-v-0a65a567="" data-v-6b812f0e=""
									class="notification_important_container">
									<a data-v-0a65a567="" href="/w/board/notice"
										class="notification_important_link"><img
										data-v-0a65a567=""
										src="https://image.idus.com/image/files/1b943d7e4df14e029705d57b9c2e55ed.jpg"
										class="notification_important_artist_img mCS_img_loaded">
										<div data-v-0a65a567=""
											class="notification_important_content_box">
											<p data-v-0a65a567="" class="label">이벤트</p>
											<p data-v-0a65a567="" class="title">[D-5] 9천원 쿠폰 꽃이
												피었습니다🏃‍♀️🏃‍♂️</p>
											<p data-v-0a65a567="" class="message">(광고) 5️⃣일 드릴테니 그안에
												사용하시기 바랍니다. 지나면 탈락💥 *수신거부:내정보&gt;설정&gt;앱 알림</p>
											<p data-v-0a65a567="" class="notification_important_date">
												오후 6:30</p>
										</div> <!----></a>
								</div>
							</div>
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
		<jsp:include page="../footer.jsp" />
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
