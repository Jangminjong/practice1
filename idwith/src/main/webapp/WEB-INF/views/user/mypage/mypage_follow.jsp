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
<title>아이디어스 | 팔로우하는 작가</title>
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
<meta property="og:url"
	content="http://www.idus.com/w/me/followingartist" />
<meta property="og:image"
	content="http://www.idus.com/resources/dist/images/ogimg-idus.png?ver=2.0" />
<link rel="canonical" href="http://www.idus.com/w/me/followingartist" />
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
		<jsp:include page="../header_goods.jsp"/>
		<div class="dimmed-background"></div>
		<div id="content" class="content">
			<div class="inner-w layout-split" data-layout-split="orderlist">
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
								href="mypage_goods_order_return.do" class="">취소/환불내역</a> <b> <span>알림
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

				<section>
					<div class="title-style">
						<h1 class="txt">팔로우하는 작가</h1>
					</div>
					<p style="color: #666; margin-bottom: 24px;">
						<strong style="font-weight: bold;">2명</strong>의 작가를 팔로우 중입니다.
					</p>
					<ul class="artist-list">
						<li data-v-1ae32da5="" class="following-artist-container"><div
								data-v-1ae32da5="" class="artist-profile-area">
								<div data-v-1ae32da5="" class="artist-thumbnail"
									style="background-image: url(&quot;https://image.idus.com/image/files/e8534c6cbfb7488fbb5771f48db36e6d_324.jpg&quot;);">
									<!---->
								</div>
								<div data-v-1ae32da5="" class="artist-profile">
									<div data-v-1ae32da5="" class="text-area">
										<h2 data-v-1ae32da5="" class="artist-name">늘해랑 떡공방</h2>
										<p data-v-1ae32da5="" class="artist-introduce">안녕하세요 건강하고
											예쁜떡을 만드는 늘해랑입니다.</p>
									</div>
									<button data-v-b534333e="" data-v-1ae32da5="" type="button"
										class="following"
										style="background-color: rgb(255, 255, 255); min-width: 96px; width: 96px; height: 32px; font-size: 12px; color: rgb(51, 51, 51); border: 1px solid rgb(217, 217, 217); border-radius: 4px;">
										<i data-v-b534333e="" class="idus-icon-check"
											style="font-size: 12px;"></i> 팔로잉
									</button>
								</div>
							</div>
							<div data-v-1ae32da5="" class="product-thumbnails">
								<a data-v-1ae32da5=""
									href="/w/artist/2e754b3a-8c6e-4904-a8ab-9cac555cef5c/product"
									target="_blank" class="thumbnail-wrapper"><div
										data-v-1ae32da5="" class="product-thumbnail"
										style="background-image: url(&quot;https://image.idus.com/image/files/7fbae09755274fc3a4ab80f30f8f86f3_512.jpg&quot;);"></div></a><a
									data-v-1ae32da5=""
									href="/w/artist/2e754b3a-8c6e-4904-a8ab-9cac555cef5c/product"
									target="_blank" class="thumbnail-wrapper"><div
										data-v-1ae32da5="" class="product-thumbnail"
										style="background-image: url(&quot;https://image.idus.com/image/files/1ef90b19bca24bfdbe150b17348e85db_512.jpg&quot;);"></div></a><a
									data-v-1ae32da5=""
									href="/w/artist/2e754b3a-8c6e-4904-a8ab-9cac555cef5c/product"
									target="_blank" class="thumbnail-wrapper"><div
										data-v-1ae32da5="" class="product-thumbnail"
										style="background-image: url(&quot;https://image.idus.com/image/files/8a53329ed3894cd4830ff22cde836d9f_512.jpg&quot;);"></div></a>
							</div></li>
						<li data-v-1ae32da5="" class="following-artist-container"><div
								data-v-1ae32da5="" class="artist-profile-area">
								<div data-v-1ae32da5="" class="artist-thumbnail"
									style="background-image: url(&quot;https://image.idus.com/image/files/7036aa7ce7c043f7835e6ef121c5134c_324.jpg&quot;);">
									<img data-v-1ae32da5=""
										src="/resources/dist/images/medal-award2020.png"
										alt="award 2020">
								</div>
								<div data-v-1ae32da5="" class="artist-profile">
									<div data-v-1ae32da5="" class="text-area">
										<h2 data-v-1ae32da5="" class="artist-name">다앤하(danha)</h2>
										<p data-v-1ae32da5="" class="artist-introduce">작가❤️버튼을
											눌러주신후 매달 할인쿠폰과 이벤트알림을 받아보세요🌝👍🏻 [NO정제밀, NO정제설탕] 속이 편안한
											빵&amp;디저트를 만들어요</p>
									</div>
									<button data-v-b534333e="" data-v-1ae32da5="" type="button"
										class="following"
										style="background-color: rgb(255, 255, 255); min-width: 96px; width: 96px; height: 32px; font-size: 12px; color: rgb(51, 51, 51); border: 1px solid rgb(217, 217, 217); border-radius: 4px;">
										<i data-v-b534333e="" class="idus-icon-check"
											style="font-size: 12px;"></i> 팔로잉
									</button>
								</div>
							</div>
							<div data-v-1ae32da5="" class="product-thumbnails">
								<a data-v-1ae32da5=""
									href="/w/artist/598fb7c4-6674-47de-ad02-95673d738a99/product"
									target="_blank" class="thumbnail-wrapper"><div
										data-v-1ae32da5="" class="product-thumbnail"
										style="background-image: url(&quot;https://image.idus.com/image/files/819010ea6ed745aa9327d909c33dfab3_512.jpg&quot;);"></div></a><a
									data-v-1ae32da5=""
									href="/w/artist/598fb7c4-6674-47de-ad02-95673d738a99/product"
									target="_blank" class="thumbnail-wrapper"><div
										data-v-1ae32da5="" class="product-thumbnail"
										style="background-image: url(&quot;https://image.idus.com/image/files/280eb388cdf44f93a46837334f9853de_512.jpg&quot;);"></div></a><a
									data-v-1ae32da5=""
									href="/w/artist/598fb7c4-6674-47de-ad02-95673d738a99/product"
									target="_blank" class="thumbnail-wrapper"><div
										data-v-1ae32da5="" class="product-thumbnail"
										style="background-image: url(&quot;https://image.idus.com/image/files/880ac53a941440e4a19fb768bd6017be_512.jpg&quot;);"></div></a>
							</div></li>
						<nav data-v-450a0b42="">
							<!---->
							<button data-v-450a0b42="" type="button" class="active">
								1</button>
							<!---->
						</nav>
					</ul>
					<div data-vue="FollowingArtistList"></div>
				</section>
			</div>
		</div>

		<script>
    vuepack.create([
        {
            selector: '[data-vue="FollowingArtistList"]',
            component: 'FollowingArtistList',
            props: {
                artists: [{"uuid":"6159ba47-76f5-40d0-98b2-7cbabde46625","artist_id":"5189261","artist_uuid":"2e754b3a-8c6e-4904-a8ab-9cac555cef5c","name":"\ub298\ud574\ub791 \ub5a1\uacf5\ubc29","image_url":"https:\/\/image.idus.com\/image\/files\/5c542b18dc614d3cad084378a4b5d3fc.jpg","userpicture_url":"https:\/\/image.idus.com\/image\/files\/e8534c6cbfb7488fbb5771f48db36e6d_324.jpg","introduce":"\uc548\ub155\ud558\uc138\uc694 \uac74\uac15\ud558\uace0 \uc608\uc05c\ub5a1\uc744 \ub9cc\ub4dc\ub294 \ub298\ud574\ub791\uc785\ub2c8\ub2e4.","is_vacation":false,"vacation_msg":"","is_award":false,"award_image_url":"","products":[{"uuid":"7eaf4f6c-f4ce-41e0-9c67-1f1e86e31542","name":"\ucd94\uc11d\uc8fc\ubb38\ub9c8\uac10\ud83c\udf39\ucd94\uc11d\uc120\ubb3c\ud83c\udf39\uc815\uc131\uac00\ub4dd \uc218\uc81c \ud654\uacfc\uc790 ","category_uuid":"5c6bc7d4-7760-4702-b63f-7f29eca479e3","thumb_image_url":"https:\/\/image.idus.com\/image\/files\/7fbae09755274fc3a4ab80f30f8f86f3.jpg"},{"uuid":"735cf9ca-580c-4dfd-93eb-60af27381615","name":"\ucd94\uc11d\uc8fc\ubb38\ub9c8\uac10[\ucd94\uc11d\uc120\ubb3c] \ucac4\uae43\ud55c \uc544\uc774\uc2a4\uc6d4\ubcd1 7\uad6c\uc138","category_uuid":"5c6bc7d4-7760-4702-b63f-7f29eca479e3","thumb_image_url":"https:\/\/image.idus.com\/image\/files\/1ef90b19bca24bfdbe150b17348e85db.jpg"},{"uuid":"720a2eed-1735-4c10-bd67-e84114e2d144","name":"[\uc2e0\ub9bc] \ucd94\uc11d\uc120\ubb3c\/\ubd80\ubaa8\ub2d8\uc0dd\uc2e0\ud83c\udf37\uace0\uae09\ubcf4\uc790\uae30\ub5a1\ucf00\uc774\ud06c\ud83c\udf37","category_uuid":"5c6bc7d4-7760-4702-b63f-7f29eca479e3","thumb_image_url":"https:\/\/image.idus.com\/image\/files\/8a53329ed3894cd4830ff22cde836d9f.jpg"}],"created":"1630757267999"},{"uuid":"0970be26-d09b-4ece-a49f-3e96ad6dea24","artist_id":"1879201","artist_uuid":"598fb7c4-6674-47de-ad02-95673d738a99","name":"\ub2e4\uc564\ud558(danha)","image_url":"http:\/\/image.idus.com\/image\/files\/d4477808756643d0897e01943fc00a13.jpg","userpicture_url":"https:\/\/image.idus.com\/image\/files\/7036aa7ce7c043f7835e6ef121c5134c_324.jpg","introduce":"\uc791\uac00\u2764\ufe0f\ubc84\ud2bc\uc744 \ub20c\ub7ec\uc8fc\uc2e0\ud6c4\n\ub9e4\ub2ec \ud560\uc778\ucfe0\ud3f0\uacfc \uc774\ubca4\ud2b8\uc54c\ub9bc\uc744 \ubc1b\uc544\ubcf4\uc138\uc694\ud83c\udf1d\ud83d\udc4d\ud83c\udffb\n[NO\uc815\uc81c\ubc00, NO\uc815\uc81c\uc124\ud0d5]\n\uc18d\uc774 \ud3b8\uc548\ud55c \ube75&\ub514\uc800\ud2b8\ub97c \ub9cc\ub4e4\uc5b4\uc694","is_vacation":false,"vacation_msg":"\u2764\ufe0f\uac8c\ub9b4\ub77c \ub77c\uc778\uc5c5 \uc900\ube44\uc911\uc785\ub2c8\ub2e4.\u2764\ufe0f","is_award":true,"award_image_url":"https:\/\/image.idus.com\/static\/award\/ios\/badge_2020.png","products":[{"uuid":"a867920d-c518-419f-bd8d-d7e43d973ed7","name":"\ud83c\udf3a\ucd94\uc11d\uc804\ubc30\uc1a1 \uc2e0\uba54\ub274\u203c\ufe0f\ud83c\udf3a\uc8e0\ub9ac\ud401,\ub85c\ud22c\uc2a4,\ub2f9\ucf00,\ub179\ucc28\uc138\ud2b8","category_uuid":"5c6bc7d4-7760-4702-b63f-7f29eca479e3","thumb_image_url":"https:\/\/image.idus.com\/image\/files\/819010ea6ed745aa9327d909c33dfab3.jpg"},{"uuid":"557ced87-2a6c-4036-ab62-fb7b684f95c1","name":"\ud83c\udf3a\ucd94\uc11d\uc804\ubc30\uc1a1 \uc2e0\uba54\ub274\uac8c\ub9b4\ub77c\u203c\ufe0f\ud83c\udf3a \ubf40\ub610\ud06c\uce58\ubc45,\ud398\ub808\ub85c\ubc45","category_uuid":"5c6bc7d4-7760-4702-b63f-7f29eca479e3","thumb_image_url":"https:\/\/image.idus.com\/image\/files\/280eb388cdf44f93a46837334f9853de.jpg"},{"uuid":"2dda9470-6e8f-457e-8abb-321942f61b36","name":"\ud83c\udf3a\ucd94\uc11d\uc804\ubc30\uc1a1 \uac8c\ub9b4\ub77c\ud83c\udf3a\ub0b1\uac1c: \uc8e0\ub9ac\ud401,\ub85c\ud22c\uc2a4,\ub2f9\ucf00,\ub179\ucc28","category_uuid":"5c6bc7d4-7760-4702-b63f-7f29eca479e3","thumb_image_url":"https:\/\/image.idus.com\/image\/files\/880ac53a941440e4a19fb768bd6017be.jpg"}],"created":"1630185266542"}],
                pagination: {"page_size":2,"total_size":1,"items_size":2,"current_page":1}            }
        }
    ]);

    (function () {
        var Logger = vuepack.externals.IdusLog.Logger;
        var PageName = vuepack.externals.IdusLog.PageName;
        Logger.sendPageView(PageName.FavoriteArtists);
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
		<jsp:include page="../footer.jsp"/>
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
