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
<title>아이디어스 | 내가 쓴 구매 후기</title>
<meta name="theme-color" content="#ffffff" />
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
                window.addEventListener('load', function() {
                    navigator.serviceWorker.register('/sw.js').then(function(registration) {
                    // Registration was successful
                    console.log('ServiceWorker registration successful with scope: ', registration.scope);
                    }, function(err) {
                    // registration failed :(
                    console.log('ServiceWorker registration failed: ', err);
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
<meta property="og:url" content="http://www.idus.com/w/me/review/all" />
<meta property="og:image"
	content="http://www.idus.com/resources/dist/images/ogimg-idus.png?ver=2.0" />
<link rel="canonical" href="http://www.idus.com/w/me/review/all" />
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
            if (window.matchMedia && window.matchMedia('(prefers-color-scheme: dark)').matches) {
                // 다크모드일 경우
                console.log('%cidus', 'background-size: contain; background-repeat: no-repeat; background-position: center; background-image: url("https://www.idus.com/resources/dist/images/logo.svg"); width: 300px; height: auto; font-size: 90px; color: transparent; background-color: white;');
                console.log('%cUnique Lifestyle Guide', 'font-weight: bold; color: white; font-size: 15px;');
                console.log('%cWant to join %cidus%c? 👉 https://www.notion.so/idus/Join-idus-61e7ca6d4b6d4211a7506e8773cc78fd', 'font-size: 10px; color: white;', 'background-size: contain; background-repeat: no-repeat; background-position: center; background-image: url("https://www.idus.com/resources/dist/images/logo.svg"); width: 300px; height: auto; font-size: 10px; color: transparent; background-color: white;', 'font-size: 10px; color: white;');
            } else {
                // 아닐경우
                console.log('%cidus', 'background-size: contain; background-repeat: no-repeat; background-position: center; background-image: url("https://www.idus.com/resources/dist/images/logo.svg"); width: 300px; height: auto; font-size: 90px; color: transparent; background-color: #515151;');
                console.log('%cUnique Lifestyle Guide', 'font-weight: bold; color: #515151; font-size: 15px;');
                console.log('%cWant to join %cidus%c? 👉 https://www.notion.so/idus/Join-idus-61e7ca6d4b6d4211a7506e8773cc78fd', 'font-size: 10px; color: #515151;', 'background-size: contain; background-repeat: no-repeat; background-position: center; background-image: url("https://www.idus.com/resources/dist/images/logo.svg"); width: 300px; height: auto; font-size: 10px; color: transparent; background-color: #515151;', 'font-size: 10px; color: #515151;');
            }
        </script>
<link rel="stylesheet"
	href="/resources/dist/css/idus.web.min.css?__v=1631078629">
<link rel="stylesheet"
	href="/resources/dist/css/vendor.client.min.css?__v=1631078629">
<script src="/resources/dist/js/vendor.client.min.js?__v=1631078629"></script>
<script src="/resources/dist/js/vuepack.js?__v=1631078629"></script>

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

<link rel="stylesheet" href="resources/css/mypage.css" />
<link rel="stylesheet" href="resources/css/idus.web.min.css" />
<link rel="stylesheet" href="resources/css/vendor.client.min.css" />
<!-- trackers -->
<script>
        vuepack.externals.VendorLogger.sendLog([
            {
                vendorName: 'google_analytics',
                eventName: 'pageview'
            },
            {
                vendorName: 'google_ads',
                eventName: 'page_view'
            },
            {
                vendorName: 'facebook',
                eventName: 'PageView'
            },
            {
                vendorName: 'kakao',
                eventName: 'pageView'
            },
        ]);
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
        if (!window.localStorage.getItem('idus-product-card-img-only-path') || window.localStorage.getItem('idus-product-card-img-only-path') !== window.location.pathname) {
            window.localStorage.setItem('idus-product-card-img-only', 'false');
        }
        vuepack.createResizeHandler('[data-vue="resizeHandler"]');
        vuepack.createUser('[data-vue="globalUser"]', {
            id: 8001937,
            thumb: 'https://image.idus.com/image/files/d247655ca3e545e89a48a43aa9318b3f.jpg',
            age: 25,
            gender: 'female',
            grade: 1,
            uuid: 'e47f44d5-3f79-42dd-9c1b-1772866c0371',
            isVip: false        });
        vuepack.createToken('[data-vue="token"]', {
            token: {"token_type":"Bearer","access_token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6ODAwMTkzNywicGVybWlzc2lvbiI6IlVTRVIiLCJ0eXBlIjoiY2xpZW50IiwidG9rZW5fdHlwZSI6ImFjY2VzcyIsImV4cCI6MTYzOTA5OTEzNiwic2FsdCI6ImY0MWQwM2YzLWU4MjctNGIwYS1iNzRjLTMxZjlhYmMxNDg0NiIsImNyZWF0ZWQiOiIyMDIxLTA5LTEwVDEwOjE4OjU2KzA5OjAwIn0.1sbItzf_f-sgtun3S4L1sqKm7p6oRbW_qQF5FRo_cfI","refresh_token":"$2y$10$Vqh9LBA\/wSdBQPKcUR.RTO9hpC\/ifZgE5PzXzFJO8BAI8sEX1oUim","expired_access_token":"2021-12-10 10:18:56+09:00","expired_refresh_token":"2022-03-10 10:18:56+09:00"},
            userId: 8001937        });

        /* Idus Log V2 */
                vuepack.externals.IdusLog.Logger.setIdentityId('ap-northeast-2:f4e7cf2c-2c34-49ab-95cd-8b054b9e32ea');
                vuepack.externals.IdusLog.Logger.initialize({
            isApp: false,
            region: 'ap-northeast-2',
            identityPoolId: 'ap-northeast-2:f4c028af-cb84-43cc-a8e5-b047d272b323',
            accountId: '773161815152',
            userData: {
                userId: '8001937',
                userAge: '25',
                userGrade: '1',
                userGender: 'female'
            },
            appData: {
                env: 'prod',
                appVersion: '1631078629'
            }
        });
        </script>

	<div class="wrap">

		<div class="dimmed-background"></div>
		<jsp:include page="header_goods.jsp" />
		<div id="content" class="content">
			<div class="inner-w layout-split mobile-full"
				data-layout-split="orderlist">
				<aside class="my-info">
					<!--메뉴바-->
					<div class="profile-area">
						<div class="outline">
							<label data-profile="image" class="img-bg profile-img"
								style="background-image: url(https://image.idus.com/image/files/d247655ca3e545e89a48a43aa9318b3f.jpg)">
								<input data-change-profile="image" type="file" name="image"
								id="profile-image" class="profile-image-input"
								accept=".png, .jpg, .jpeg"> <span class="link-style">수정</span>

								<a href="/w/me/profile/image" data-modal-trigger="modal-link"
								data-modal-id="modal-profile" class="profile-modal-open"
								style="visibility: hidden">이미지 변경 모달</a>
							</label>
						</div>
						<div class="area-txt">
							<a href="mypage_level.do"> <span class="sp-icon grade-01-s"></span>
								<span>아기손 &gt;</span>
							</a> <strong data-profile="name">OOO</strong>
						</div>
					</div>

					<div class="my-point clf">
						<a href="mypage_point.do" class="inner fl"> <span class="label">적립금</span>
							<em>0 P</em>
						</a> <a href="mypage_coupon.do" class="fr"> <span class="label">쿠폰</span>
							<em>2</em>
						</a>
					</div>
					<div data-vue="frequency-event-mobile"></div>
					<div class="my-menu">
						<em>MY MENU</em>
						<nav>
							<b> <span>주문 배송</span>
							</b> <a href="mypage_order_goods.do" class="">주문내역</a> <a
								href="mypage_order_return.do" class="">취소/환불내역</a> <b> <span>알림
									및 메시지</span>
							</b> <a href="alarm.do" class="">알림</a> <a href="message.do"
								class="">메시지</a> <b> <span>나의 구매후기</span>
							</b> <a href="mypage_review_before.do" class="">후기 쓰기</a> <a
								href="mypage_review_after.do" class="">내가 쓴 후기</a> <b> <span>관심리스트</span>
							</b> <a href="mypage_interest_goods.do" class="">찜 목록</a> <a
								href="mypage_follow.do" class="">팔로우하는 작가</a> <a
								href="mypage_recent.do" class="">최근 본 작품</a> <b> <span>할인혜택</span>
							</b> <a href="mypage_coupon.do" class="">쿠폰함</a> <a href="mypage_point.do"
								class="">적립금</a> <b> <span>내 정보</span>
							</b> <a href="mypage_level.do" class="">회원 등급</a> <a
								href="mypage_info.do" class="">회원 정보 관리</a> <a
								href="mypage_address.do" class="">주소(배송지) 관리</a>
						</nav>
					</div>
				</aside>

				<script>
vuepack.create([{
    selector: '[data-vue="frequency-event-mobile"]',
    component: 'FrequencyEventMobile',
    props: {
        frequencyEvent: {"frequency_event_detail":{"id":12,"name":"9\uc6d4\ucfe0\ud3f0\uc90d\uc90d","description":"\uc791\ud488 \ucc1c\ud558\uae30 10\ud68c, \ub204\uc801 \uad6c\ub9e4 \uae08\uc561 100\ub9cc\uc6d0","start_date_time":"2021-09-01T12:00:00","end_date_time":"2021-09-30T23:59:59","reward_payment_dt":"2021-09-30","status":"IN_PROGRESS","plp_url":{"mobile_url":"https:\/\/www.idus.com\/w\/event\/main\/summer","pc_url":"https:\/\/www.idus.com\/w\/event\/main\/summer"}},"application_detail":{"applied_at":null,"title":"\uc774\ubca4\ud2b8 \uc2e0\uccad\ud558\uace0 \ub9cc\uc6d0 \uc6a9\ub3c8\ud329 \uc90d\uc90d","linked_text_label":"\uc790\uc138\ud788\ubcf4\uae30","frequency_event_url":"https:\/\/www.idus.com\/w\/event\/main\/frequency\/12","status_image_url":"https:\/\/image.idus.com\/static\/frequency\/202109\/my_01.gif"}}    }
}]);
</script>
				<section class="reviewpage">
					<div class="title-style no-mt clf mobile-hide">
						<h2 class="txt fl">나의 구매후기</h2>
					</div>
					<p class="list-style-bg mobile-hide">
						여러분들이 작성해주시는 솔직한 구매후기는 핸드메이드 작품 선택을 고민하는 분들에게 선택의 도움을 줄 수 있답니다.<br>
						구매하신 작품마다 1회의 구매후기 작성과 1회의 수정이 가능합니다.<br> 단, 작성하신 구매후기를 삭제하면
						다시 작성할 수 없으니 신중히 평가해 주세요.<br> <br> 해당 작품과 무관한 내용이나 비방,
						욕설 등 부적합한 내용의 구매후기는 서비스 이용 약관이나 관련 법률에 의해 제재를 받을 수 있습니다.
					</p>
					<nav class="navstyle">
						<a href="/w/me/review/add">구매후기 쓰기</a> <a class="active"
							href="/w/me/review/all">내가 쓴 구매후기</a>
					</nav>
					<div class="m-spacing">
						<ul class="masonry-grid x2" data-col="2" data-ui="scroll-paging"
							data-query="next" data-param=""
							style="position: relative; height: 2000.11px;">
							<li class="card-style story"
								style="position: absolute; left: 0px; top: 0px;">
								<div class="bordering">
									<input name="time_stamp" type="hidden" value="1609817544">
									<div class="area-txt">
										<div class="area-rating">
											<div class="img-bg"
												style="background-image: url(https://image.idus.com/image/files/9d751737276c495d9cad8d98dc3d24d0_320.jpg)"></div>
											<a href="/w/product/435b4a9d-e187-40b0-b0e4-e4aaef306b49"
												target="_blank" class="title ellipsis">🎄12월의 크리스마스 밤</a>
											<div class="ui_rating" data-ui="rating" data-value="5">
												<i class="idus-icon-star-fill" data-state="active"></i> <i
													class="idus-icon-star-fill" data-state="active"></i> <i
													class="idus-icon-star-fill" data-state="active"></i> <i
													class="idus-icon-star-fill" data-state="active"></i> <i
													class="idus-icon-star-fill" data-state="active"></i>
											</div>
										</div>

										<a href="/w/review/96246c6e-4a26-488b-8f44-a0d419b2771e">
											<div class="split-hard">
												<span class="split crop-circ"
													style="background-image: url(https://image.idus.com/image/files/40c493d070b94d0d9e7203246b33cac3_320.jpg)">
												</span>
												<div class="split">
													<span class="txt-strong">윤다현</span> <span class="txt">2021년
														01월 05일</span>
												</div>
											</div>
											<p class="desc">새해 선물로 찾아온 향초가 너무 좋은 향을 듬뿍 가지고
												왔네요&gt;_&lt; 향도 좋고 너무 예뻐서 태우기가 너무 아까울정도예요👍👍 정말 잘
												사용하겠습니다😍😍 너무 예뻐요❤</p> <br>
											<div class="area-img"
												style="background-image: url(https://image.idus.com/image/files/ecb9dee477cd4b9c89706da76d349235_720.jpg)"></div>
											<br>
											<div class="area-img"
												style="background-image: url(https://image.idus.com/image/files/740a9736a8534ab0ad0ba64e93cf59b1_720.jpg)"></div>
										</a>
									</div>

								</div>
							</li>
							<li class="card-style story"
								style="position: absolute; left: 434px; top: 0px;">
								<div class="bordering">
									<input name="time_stamp" type="hidden" value="1597962669">
									<div class="area-txt">
										<div class="area-rating">
											<div class="img-bg"
												style="background-image: url(https://image.idus.com/image/files/8ddb2947f3a04464903d3d11a8991df7_320.png)"></div>
											<a href="/w/product/34ec07c5-02c8-4f33-9b26-1371a5a88de4"
												target="_blank" class="title ellipsis">전기종할인💕유화 ver.1커플
												그립 톡+폰케이스</a>
											<div class="ui_rating" data-ui="rating" data-value="5">
												<i class="idus-icon-star-fill" data-state="active"></i> <i
													class="idus-icon-star-fill" data-state="active"></i> <i
													class="idus-icon-star-fill" data-state="active"></i> <i
													class="idus-icon-star-fill" data-state="active"></i> <i
													class="idus-icon-star-fill" data-state="active"></i>
											</div>
										</div>

										<a href="/w/review/8f69bcb0-2557-4521-b023-72a0eb76db29">
											<div class="split-hard">
												<span class="split crop-circ"
													style="background-image: url(https://image.idus.com/image/files/40c493d070b94d0d9e7203246b33cac3_320.jpg)">
												</span>
												<div class="split">
													<span class="txt-strong">윤다현</span> <span class="txt">2020년
														08월 21일</span>
												</div>
											</div>
											<p class="desc">너무 예쁘네요!!! 주문후에 바탕 그림 을 바꾸고 싶어서 연락드렸는데 너무
												친절하게 잘 해쥬셔서 너무 감사했습니다 잘 쓸께욤!!!</p> <br>
											<div class="area-img"
												style="background-image: url(https://image.idus.com/image/files/d373b2b735394a2e97052a8e7fcc0de9_720.jpg)"></div>
										</a>
									</div>

								</div>
							</li>
							<li class="card-style story"
								style="position: absolute; left: 434px; top: 517.444px;">
								<div class="bordering">
									<input name="time_stamp" type="hidden" value="1592867688">
									<div class="area-txt">
										<div class="area-rating">
											<div class="img-bg"
												style="background-image: url(https://image.idus.com/image/files/83ae333f77774d9a8aa6e826349043ff_320.jpg)"></div>
											<a href="/w/product/745b1cff-c830-49f5-a665-2523b7fa8dd7"
												target="_blank" class="title ellipsis">🌸닮은 동물 쪼꼬미일러스트🌸</a>
											<div class="ui_rating" data-ui="rating" data-value="5">
												<i class="idus-icon-star-fill" data-state="active"></i> <i
													class="idus-icon-star-fill" data-state="active"></i> <i
													class="idus-icon-star-fill" data-state="active"></i> <i
													class="idus-icon-star-fill" data-state="active"></i> <i
													class="idus-icon-star-fill" data-state="active"></i>
											</div>
										</div>

										<a href="/w/review/a0bb12cd-a3c2-4928-b5e1-3508bedf8f8e">
											<div class="split-hard">
												<span class="split crop-circ"
													style="background-image: url(https://image.idus.com/image/files/40c493d070b94d0d9e7203246b33cac3_320.jpg)">
												</span>
												<div class="split">
													<span class="txt-strong">윤다현</span> <span class="txt">2020년
														06월 23일</span>
												</div>
											</div>
											<p class="desc">너무 귀여워요!! 액자 주문 못한게 너무 아쉽네요😀 작가님께 너무 많이
												요구 드리고 바꿔달라고 해서 조금 걱정했는데 딱 주문할때 생각했던 그림을 받아서 너무 기분 좋습니다😀😀
												파일로 받아서 바로 폰 배경화면도 바꾸고 사진 넣을 수 있는 곳은 다 넣어놓은 것 같아요😁 너무
												감사합니다&gt;_&lt;</p> <br>
											<div class="area-img"
												style="background-image: url(https://image.idus.com/image/files/ecdff2b9fbab49f89a9e2400cd36ad85_720.jpg)"></div>
										</a>
									</div>

								</div>
							</li>
							<li class="card-style story"
								style="position: absolute; left: 0px; top: 833.444px;">
								<div class="bordering">
									<input name="time_stamp" type="hidden" value="1583626220">
									<div class="area-txt">
										<div class="area-rating">
											<div class="img-bg"
												style="background-image: url(https://image.idus.com/image/files/f100c2c5bd574d4e80ece636994f9151_320.jpg)"></div>
											<a href="/w/product/80dc824b-0b80-42bb-892e-662c833938ea"
												target="_blank" class="title ellipsis">택배불가)🌹숫자케이크🎂이니셜케이크🔢🔠</a>
											<div class="ui_rating" data-ui="rating" data-value="5">
												<i class="idus-icon-star-fill" data-state="active"></i> <i
													class="idus-icon-star-fill" data-state="active"></i> <i
													class="idus-icon-star-fill" data-state="active"></i> <i
													class="idus-icon-star-fill" data-state="active"></i> <i
													class="idus-icon-star-fill" data-state="active"></i>
											</div>
										</div>

										<a href="/w/review/3522a135-f7b6-4515-bbb3-5d25f28483b4">
											<div class="split-hard">
												<span class="split crop-circ"
													style="background-image: url(https://image.idus.com/image/files/40c493d070b94d0d9e7203246b33cac3_320.jpg)">
												</span>
												<div class="split">
													<span class="txt-strong">윤다현</span> <span class="txt">2020년
														03월 08일</span>
												</div>
											</div>
											<p class="desc">너무 예쁘게 케이크 나와서 7주년 정말 축하 잘 했어요♡♡ 케이크도 너무
												맛나서 케이크 잘 안먹는 남자친구도 잘 먹었어요!! 감사합니다❤</p> <br>
											<div class="area-img"
												style="background-image: url(https://image.idus.com/image/files/e430bc8d878b4dc8933fe9386291e161_720.jpg)"></div>
										</a>
									</div>

								</div>
							</li>
							<li class="card-style story"
								style="position: absolute; left: 434px; top: 1096.22px;">
								<div class="bordering">
									<input name="time_stamp" type="hidden" value="1573445168">
									<div class="area-txt">
										<div class="area-rating">
											<div class="img-bg"
												style="background-image: url(https://image.idus.com/image/files/1285c52b2dfe421695335a7fb1614b77_320.jpg)"></div>
											<a href="/w/product/7cebd336-76b9-45f9-9fd4-90665a4f6861"
												target="_blank" class="title ellipsis">❄️첫눈오는날 드롭
												귀걸이❄️귀찌 생일선물</a>
											<div class="ui_rating" data-ui="rating" data-value="5">
												<i class="idus-icon-star-fill" data-state="active"></i> <i
													class="idus-icon-star-fill" data-state="active"></i> <i
													class="idus-icon-star-fill" data-state="active"></i> <i
													class="idus-icon-star-fill" data-state="active"></i> <i
													class="idus-icon-star-fill" data-state="active"></i>
											</div>
										</div>

										<a href="/w/review/a4ad1b3e-10d5-4724-953b-6d481c27dec7">
											<div class="split-hard">
												<span class="split crop-circ"
													style="background-image: url(https://image.idus.com/image/files/40c493d070b94d0d9e7203246b33cac3_320.jpg)">
												</span>
												<div class="split">
													<span class="txt-strong">윤다현</span> <span class="txt">2019년
														11월 11일</span>
												</div>
											</div>
											<p class="desc">딱 빼빼로 데이에 맞춰 왔는데 너무 예뻐요!! 이제 겨울 결혼식도 줄줄이
												있는데 결혼식 때 마다 끼고 가야겠어요🥰🥰 손편지도 너무 예뻤고 함께온 젤리도 너무 감사했습니다. 인스타
												보자마자 들어와서 구매했는데 사진으로 본것보다 실물이 너무 예뻐서 너무 신나고 좋네요❤❤ 예쁜 귀걸이 많이
												만들어 주셔서 감사합니다&gt;&lt;</p> <br>
											<div class="area-img"
												style="background-image: url(https://image.idus.com/image/files/38e3c3d1f43b4f29bade11525227f9c2_720.jpg)"></div>
											<br>
											<div class="area-img"
												style="background-image: url(https://image.idus.com/image/files/029ba8b3ac3b40afb4e17c11a59e374e_720.jpg)"></div>
										</a>
									</div>

								</div>
							</li>
						</ul>
					</div>
					<div class="banner-empty">
						<span class="ico-blank"><i class="idus-icon-logo-empty"></i></span>
						<p>
							구매후기를 남겨주시면 작가님이<br>함박 웃음을 지으며 기뻐하신답니다!
						</p>
					</div>
				</section>
			</div>
		</div>
		<!-- 푸터자리 -->
		<script>
    (function () {
        var Logger = vuepack.externals.IdusLog.Logger;
        var PageName = vuepack.externals.IdusLog.PageName;
        Logger.sendPageView(PageName.ReviewWrote);
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

		<script>
function escrowPopup() {
    var url = 'https://pg.nicepay.co.kr/issue/IssueEscrow.jsp?Mid=iduscom01m&CoNo=1078783297';
    var newWindow = window.open(url,'name','height=450,width=400');

    if (window.focus) newWindow.focus();
    return false;
}

vuepack.create([
    {
        selector: '[data-vue="BottomSheet"]',
        component: 'BottomSheet'
    },
    {
        selector: '[data-vue="WideBottomSheet"]',
        component: 'WideBottomSheet'
    },
    {
        selector: '[data-vue="FooterModal"]',
        component: 'FooterModal'
    },
    {
        selector: '[data-vue="ToastPopup"]',
        component: 'ToastPopup'
    },
    {
        selector: '[data-vue="InactiveToast',
        component: 'InactiveToast'
    }
]);
</script>
	<jsp:include page="footer.jsp" />
	</div>
	<!-- div WRAP -->
	<script type="text/javascript"
		src="/resources/dist/js/idus.web.min.js?__v=1631078629"></script>
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
