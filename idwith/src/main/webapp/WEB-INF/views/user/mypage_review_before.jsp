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
<title>아이디어스 | 구매후기 쓰기</title>
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
<meta property="og:url" content="http://www.idus.com/w/me/review/add" />
<meta property="og:image"
	content="http://www.idus.com/resources/dist/images/ogimg-idus.png?ver=2.0" />
<link rel="canonical" href="http://www.idus.com/w/me/review/add" />
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
<link rel="stylesheet" href="resources/css/mypage.css" />
<link rel="stylesheet" href="resources/css/idus.web.min.css" />
<link rel="stylesheet" href="resources/css/vendor.client.min.css" />
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

		<!-- 헤더자리 -->
		<div class="dimmed-background"></div>
		<jsp:include page="header_goods.jsp" />
		<div id="content" class="content">
			<div class="inner-w layout-split mobile-full"
				data-layout-split="orderlist">
				<aside class="my-info">
					<div class="profile-area">
						<div class="outline">
							<label data-profile="image" class="img-bg profile-img"
								style="background-image: url(https://image.idus.com/image/files/d247655ca3e545e89a48a43aa9318b3f.jpg)">
								<input data-change-profile="image" type="file" name="image"
								id="profile-image" class="profile-image-input"
								accept=".png, .jpg, .jpeg"> <span
								class="link-style">수정</span> <a href="/w/me/profile/image"
								data-modal-trigger="modal-link" data-modal-id="modal-profile"
								class="profile-modal-open" style="visibility: hidden">이미지
									변경 모달</a>
							</label>
						</div>
						<div class="area-txt">
							<a href="/w/me/membership"> <span class="sp-icon grade-01-s"></span>
								<span>아기손 &gt;</span>
							</a> <strong data-profile="name">이소희🎗</strong>
						</div>
					</div>

					<div class="my-point clf">
						<a href="/w/me/point" class="inner fl"> <span class="label">적립금</span>
							<em>0 P</em>
						</a> <a href="/w/me/coupon" class="fr"> <span class="label">쿠폰</span>
							<em>2</em>
						</a>
					</div>
					<div data-vue="frequency-event-mobile"></div>
					<div class="my-menu">
						<em>MY MENU</em>
						<nav>
							<b><span>주문 배송</span></b> <a href="/w/me/order/payment" class="">주문내역</a>
							<a href="/w/me/order/cancel" class="">취소/환불내역</a> <b><span>알림
									및 메시지</span></b> <a href="/w/notification" class="">알림</a> <a
								href="/w/message" class="">메시지</a> <b><span>나의 구매후기</span></b> <a
								href="/w/me/review/add" class="active">후기 쓰기</a> <a
								href="/w/me/review/all" class="">내가 쓴 후기</a> <b><span>관심리스트</span></b>
							<a href="/w/me/favoriteproduct" class="">찜 목록</a> <a
								href="/w/me/followingartist" class="">팔로우하는 작가</a> <a
								href="/w/me/recentproduct" class="">최근 본 작품</a> <b><span>할인혜택</span></b>

							<a href="/w/me/coupon" class="">쿠폰함</a> <a href="/w/me/point"
								class="">적립금</a> <b><span>내 정보</span></b> <a
								href="/w/me/membership" class="">회원 등급</a> <a
								href="/w/me/personal" class="">회원 정보 관리</a> <a
								href="/w/me/address" class="">주소(배송지) 관리</a> <a href="/w/logout"
								class="">로그아웃</a>
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
				<section>
					<div class="title-style no-mt clf mobile-hide">
						<h2 class="txt fl">나의 구매후기</h2>
					</div>
					<p class="list-style-bg  mobile-hide">
						여러분들이 작성해주시는 솔직한 구매후기는 핸드메이드 작품 선택을 고민하는 분들에게 선택의 도움을 줄 수 있답니다.<br>
						구매하신 작품마다 1회의 구매후기 작성과 1회의 수정이 가능합니다.<br> 단, 작성하신 구매후기를 삭제하면
						다시 작성할 수 없으니 신중히 평가해 주세요.<br> <br> 해당 작품과 무관한 내용이나 비방,
						욕설 등 부적합한 내용의 구매후기는 서비스 이용 약관이나 관련 법률에 의해 제재를 받을 수 있습니다.
					</p>
					<nav class="navstyle">
						<a class="active" href="/w/me/review/add">구매후기 쓰기</a> <a
							href="/w/me/review/all">내가 쓴 구매후기</a>
					</nav>
					<ul class="card-container" data-ui="scroll-paging"
						data-query="next" data-param="">
						<li><input type="hidden" value="15762905">
							<div class="ui_card--review">
								<div class="ui_card__head">
									<a class="ui_card__img"
										href="/w/product/de18c067-2bfe-4ef0-b309-6e4c39d8d94f"
										target="_blank"
										style="background-image: url(https://image.idus.com/image/files/e214038eec044065ae1f17e78df75009_320.jpg)">
									</a>
									<div class="ui_card__textarea">
										<a href="/w/product/de18c067-2bfe-4ef0-b309-6e4c39d8d94f"
											target="_blank"> 윤다현님 개인 결제 </a> <span>몽제리</span>
									</div>
								</div>
								<a class="ui_btn--large"
									href="/w/me/order/review/3249a1c4-7365-45ec-b268-e887dcc1cbe5"
									data-modal-id="modal-review" data-modal-trigger="modal-link">구매후기
									작성하기</a>
							</div></li>
						<li><input type="hidden" value="15762759">
							<div class="ui_card--review">
								<div class="ui_card__head">
									<a class="ui_card__img"
										href="/w/product/745b1cff-c830-49f5-a665-2523b7fa8dd7"
										target="_blank"
										style="background-image: url(https://image.idus.com/image/files/83ae333f77774d9a8aa6e826349043ff_320.jpg)">
									</a>
									<div class="ui_card__textarea">
										<a href="/w/product/745b1cff-c830-49f5-a665-2523b7fa8dd7"
											target="_blank"> 닮은 동물 쪼꼬미일러스트 </a> <span>몽제리</span>
									</div>
								</div>
								<ul class="liststyle--bullet noborder">
									<li>• <span>인원:</span> <span>4명(최대인원)</span> <span>(
											+ 12,000원)</span>
									</li>
									<li>• <span>소품:</span> <span>X</span>
									</li>
									<li>• <span>문구:</span> <span>X</span>
									</li>
									<li>• <span>네임택:</span> <span>X</span>
									</li>
									<li>• <span>배경:</span> <span>원하는 색 (2개)</span> <span>(
											+ 1,000원)</span>
									</li>
									<li>• <span>반려동물 추가:</span> <span>X</span>
									</li>
									<li>• <span>액자&amp;배송(택포):</span> <span>X</span>
									</li>
									<li>• <span>(배송시)사진 추가:</span> <span>X</span>
									</li>
									<li>• 수량: 1개</li>
								</ul>
								<a class="ui_btn--large"
									href="/w/me/order/review/df0effec-8c6b-4913-bcd5-33dda4365309"
									data-modal-id="modal-review" data-modal-trigger="modal-link">구매후기
									작성하기</a>
							</div></li>
						<li><input type="hidden" value="15757968">
							<div class="ui_card--review">
								<div class="ui_card__head">
									<a class="ui_card__img"
										href="/w/product/0e5daccc-d39c-4892-8a30-c65e7751a267"
										target="_blank"
										style="background-image: url(https://image.idus.com/image/files/e214038eec044065ae1f17e78df75009_320.jpg)">
									</a>
									<div class="ui_card__textarea">
										<a href="/w/product/0e5daccc-d39c-4892-8a30-c65e7751a267"
											target="_blank"> 윤다현님 개인 결제 </a> <span>몽제리</span>
									</div>
								</div>
								<a class="ui_btn--large"
									href="/w/me/order/review/6d9f9839-918d-498c-83e7-fa90423e93eb"
									data-modal-id="modal-review" data-modal-trigger="modal-link">구매후기
									작성하기</a>
							</div></li>
						<li><input type="hidden" value="14645608">
							<div class="ui_card--review">
								<div class="ui_card__head">
									<a class="ui_card__img"
										href="/w/product/2c859103-36d0-401d-baff-976b250722b5"
										target="_blank"
										style="background-image: url(http://image.idus.com/image/files/b97532f1291649cb879ebabd1b36de1e_320.jpg)">
									</a>
									<div class="ui_card__textarea">
										<a href="/w/product/2c859103-36d0-401d-baff-976b250722b5"
											target="_blank"> 윤다현님 개인 결제 </a> <span>엠제이 폰케이스💘</span>
									</div>
								</div>
								<a class="ui_btn--large"
									href="/w/me/order/review/7d33f709-cd40-4f04-8686-24337930cf74"
									data-modal-id="modal-review" data-modal-trigger="modal-link">구매후기
									작성하기</a>
							</div></li>
						<li><input type="hidden" value="14177596">
							<div class="ui_card--review">
								<div class="ui_card__head">
									<a class="ui_card__img"
										href="/w/product/e5db5bd3-8d4a-4155-b71a-d7546686726f"
										target="_blank"
										style="background-image: url(https://image.idus.com/image/files/f889b56f11b94d0b8e0db0f55ca7b3dc_320.jpg)">
									</a>
									<div class="ui_card__textarea">
										<a href="/w/product/e5db5bd3-8d4a-4155-b71a-d7546686726f"
											target="_blank"> 파스텔 색감 큰사이즈 숫자초 </a> <span>후후케이크</span>
									</div>
								</div>
								<ul class="liststyle--bullet noborder">
									<li>• <span>색상선택:</span> <span>레몬노랑</span>
									</li>
									<li>• <span>숫자선택:</span> <span>2</span>
									</li>
									<li>• <span>숫자디자인선택(필수:</span> <span>왕관이있는숫자초</span>
									</li>
									<li>• <span>악세사리(선택):</span> <span>선택사항없음</span>
									</li>
									<li>• 수량: 1개</li>
								</ul>
								<ul class="liststyle--bullet ">
									<li>• <span>색상선택:</span> <span>연보라</span>
									</li>
									<li>• <span>숫자선택:</span> <span>7</span>
									</li>
									<li>• <span>숫자디자인선택(필수:</span> <span>왕관이있는숫자초</span>
									</li>
									<li>• <span>악세사리(선택):</span> <span>선택사항없음</span>
									</li>
									<li>• 수량: 1개</li>
								</ul>
								<a class="ui_btn--large"
									href="/w/me/order/review/838d234b-d5fc-4d51-9764-f3459c9c0942"
									data-modal-id="modal-review" data-modal-trigger="modal-link">구매후기
									작성하기</a>
							</div></li>
						<li><input type="hidden" value="11694760">
							<div class="ui_card--review">
								<div class="ui_card__head">
									<a class="ui_card__img"
										href="/w/product/4fbaef81-1017-46b7-8433-6bcbd135ede7"
										target="_blank"
										style="background-image: url(https://image.idus.com/image/files/769bed6ddec44aaba24ba704972f3b62_320.jpg)">
									</a>
									<div class="ui_card__textarea">
										<a href="/w/product/4fbaef81-1017-46b7-8433-6bcbd135ede7"
											target="_blank"> 몽글몽글 귀여운 나만의 드로잉!(디지털 파일) </a> <span>유부드로잉
											u.boo.drawing</span>
									</div>
								</div>
								<ul class="liststyle--bullet noborder">
									<li>• <span>종류:</span> <span>상반신(1인)</span>
									</li>
									<li>• <span>상업적이용금지:</span> <span>프사,블로그 대문등은 자유</span>
									</li>
									<li>• 수량: 1개</li>
								</ul>
								<a class="ui_btn--large"
									href="/w/me/order/review/c89cb821-36a3-4d10-98fe-e4e59017de27"
									data-modal-id="modal-review" data-modal-trigger="modal-link">구매후기
									작성하기</a>
							</div></li>
						<li><input type="hidden" value="10720603">
							<div class="ui_card--review">
								<div class="ui_card__head">
									<a class="ui_card__img"
										href="/w/product/dc75f6f6-2a9a-4e24-a2ef-a6f93e173964"
										target="_blank"
										style="background-image: url(http://image.idus.com/image/files/a8833f96227e4188903178d2f1e058d7_320.jpg)">
									</a>
									<div class="ui_card__textarea">
										<a href="/w/product/dc75f6f6-2a9a-4e24-a2ef-a6f93e173964"
											target="_blank"> 윤다현님 개인 결제 </a> <span>헬로아이👋</span>
									</div>
								</div>
								<a class="ui_btn--large"
									href="/w/me/order/review/400fb082-739e-48bb-9d46-f890edd226c4"
									data-modal-id="modal-review" data-modal-trigger="modal-link">구매후기
									작성하기</a>
							</div></li>
						<li><input type="hidden" value="10179582">
							<div class="ui_card--review">
								<div class="ui_card__head">
									<a class="ui_card__img"
										href="/w/product/640a3778-ba05-4dc6-a782-7bf5db70da8d"
										target="_blank"
										style="background-image: url(http://image.idus.com/image/files/24ce5cd953df45de87e7c152677ff0a4_320.jpg)">
									</a>
									<div class="ui_card__textarea">
										<a href="/w/product/640a3778-ba05-4dc6-a782-7bf5db70da8d"
											target="_blank"> [인기]자유문구생일토퍼 </a> <span>앙쥬토퍼</span>
									</div>
								</div>
								<ul class="liststyle--bullet noborder">
									<li>• <span>케이크 위 숫자:</span> <span>생일 / 4자</span>
									</li>
									<li>• <span>자유문구:</span> <span>3줄 / 24자 이내</span> <span>(
											+ 2,000원)</span>
									</li>
									<li>• <span>영문문구(골드):</span> <span>기본 -
											HappyBirthday</span>
									</li>
									<li>• <span>❣️배송예정일❣️:</span> <span>2/7(금) 출고예정</span>
									</li>
									<li>• 수량: 1개</li>
								</ul>
								<a class="ui_btn--large"
									href="/w/me/order/review/c650b095-2025-4d09-8aeb-c227176bd32b"
									data-modal-id="modal-review" data-modal-trigger="modal-link">구매후기
									작성하기</a>
							</div></li>
						<li><input type="hidden" value="7265468">
							<div class="ui_card--review">
								<div class="ui_card__head">
									<a class="ui_card__img"
										href="/w/product/f34e1eb3-12b7-4e18-bccb-f1bcc296ed05"
										target="_blank"
										style="background-image: url(http://image.idus.com/image/files/8229795248a347d4bac293c8b7ba98dd_320.jpg)">
									</a>
									<div class="ui_card__textarea">
										<a href="/w/product/f34e1eb3-12b7-4e18-bccb-f1bcc296ed05"
											target="_blank"> 푸른바다 투핀 피어싱 귀걸이 </a> <span>행복한선인장</span>
									</div>
								</div>
								<ul class="liststyle--bullet noborder">
									<li>• <span>Color:</span> <span>골드(사진에 있는 색상)</span>
									</li>
									<li>• <span>귓볼 침 선택:</span> <span>무니켈 침(기본)</span>
									</li>
									<li>• <span>귓바퀴(귀 윗부분):</span> <span>귀찌(나사형 귀찌)</span>
									</li>
									<li>• <span>세트 선택:</span> <span>양쪽 모두 구매</span> <span>(
											+ 4,000원)</span>
									</li>
									<li>• <span>선물포장:</span> <span>선물포장X</span>
									</li>
									<li>• 수량: 1개</li>
								</ul>
								<a class="ui_btn--large"
									href="/w/me/order/review/1d67f92e-e650-4800-b9d0-b2cea7952c7f"
									data-modal-id="modal-review" data-modal-trigger="modal-link">구매후기
									작성하기</a>
							</div></li>
					</ul>
					<div class="banner-empty">
						<span class="ico-blank"><i class="idus-icon-logo-empty"></i></span>
						<p>작성할 수 있는 구매후기가 없습니다.</p>
					</div>
				</section>
			</div>
		</div>

		<script>
    (function () {
        var Logger = vuepack.externals.IdusLog.Logger;
        var PageName = vuepack.externals.IdusLog.PageName;
        Logger.sendPageView(PageName.ReviewReviewable);
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
		<!-- 푸터자리 -->
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
