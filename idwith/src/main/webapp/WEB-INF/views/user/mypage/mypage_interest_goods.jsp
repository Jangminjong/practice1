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
<title>아이디어스 | 찜 목록</title>
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
	content="http://www.idus.com/w/me/favoriteproduct" />
<meta property="og:image"
	content="http://www.idus.com/resources/dist/images/ogimg-idus.png?ver=2.0" />
<link rel="canonical" href="http://www.idus.com/w/me/favoriteproduct" />
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

		<div class="dimmed-background"></div>
		<jsp:include page="../header_goods.jsp" />
		<div id="content" class="content" data-page="favorite">
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
					<div class="title-style watch-list-title--favorite">
						<h2 class="txt">
							찜 목록
							<!-- 작품(★) -->
						</h2>
					</div>
					<nav class="ui_tab_group--3 favorite">
						<a href="mypage_interest_goods.do" class="ui_tab_group__tab active"
							data-state="active" style="width: 50%;"> <span
							class="txt-desktop">작품</span> <span class="txt-mobile">작품</span>
							</span> <a href="mypage_interest_class.do" class="ui_tab_group__tab "
							data-state="" style="width: 50%;"> <span class="txt-desktop">클래스</span>
								<span class="txt-mobile">클래스</span>
						</a>
					</nav>
					<!-- <div data-vue="product-filter"></div> -->
					<div data-vue="product-list">
						<div class="ui_grid">
							<ul class="ui_grid__cols--4">
								<li class="ui_grid__item">
									<div class="base-card card--vertical product">
										<a href="detail_content.do" target="_blank">
											<div class="card-thumb-cover">
												<div class="product-thumb-img"
													style="background-image: url('https://image.idus.com/image/files/e091eac14db84514aa6c0f1fb5f72061_512.png')"></div>
												<div class="product-bookmark">
													<button class="full-button">
														<button type="button" class="sp-icon icon-favorite"></button>
													</button>
												</div>
											</div>
											<div class="card-info product-info">
												<!-- 작가 이름 -->
												<div class="product-info__artist-name">에즈아이</div>
												<!-- 제목 -->
												<div class="product-info__name">[가을플랫] 둥글둥글 귀여운 플랫펌프스
													- 9col</div>
												<!-- 가격 -->
												<div class="product-info__price">
													<span class="sale-rate"> 53% </span> <span
														class="price-sale"> 35,000<span
														style="font-size: 14px;">원</span>
													</span>
													<div class="price-origin--before-sale">
														<del>75,000원</del>
													</div>
												</div>
												<div class="product-info__badge-group"
													style="margin-top: 12px"></div>
												<div class="product-info__review">
													<div class="review-rating">
														<span class="ui_rating fr" data-value=5> <i
															style="font-size: 11px"
															class="ui_icon--star idus-icon-star-fill"
															data-state="active"></i> <i
															style="font-size: 11px"
															class="ui_icon--star idus-icon-star-fill"
															data-state="active"></i> <i
															style="font-size: 11px"
															class="ui_icon--star idus-icon-star-fill"
															data-state="active"></i> <i
															style="font-size: 11px"
															class="ui_icon--star idus-icon-star-fill"
															data-state="active"></i> <i
															style="font-size: 11px"
															class="ui_icon--star idus-icon-star-fill"
															data-state="active"></i>
														</span> <span class="review-count">(10)</span>
													</div>
													<div class="review-comment">
														<div class="review-comment__badge">후기</div>
														<div class="review-comment__contents">두번째 구매입니다. 제가
															왼발이 오른발보다 티나게 많이 큰 편인데, 처음에 260을 주문했는데 (평소 운동화 260신고
															드라이빙슈즈 남자용 260 잘 맞아요) 왼쪽 발가락이 너무 눌리는 것 같아서 동생에게 넘겼습니다.
															그리고 잊고 살다가 가을이 오길래 한 번 쓰윽~ 검색해보고 270 주문했어요. 잘 맞을거라는 확신이
															있어서요. 3일만에 배송완료되었는데 역시 기대대로 딱 잘 맞습니다. 편하게 평소에 신기에 딱 좋은 것
															같아요. 가격도 좋고, 닳으면 다른 색으로 주문하고 싶네요. 계속 270파셨으면 좋겠어요.</div>
													</div>
												</div>
											</div>
										</a>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</section>
			</div>
		</div>

		<script>

let vueComponents = [];
vueComponents.push({
    selector: '[data-vue="product-list"]',
    component: 'ProductList',
    props: {
        productList: [{"uuid":"e7de4f8f-f989-4d51-bc15-b6c52e2af8c9","name":"[\uac00\uc744\ud50c\ub7ab] \ub465\uae00\ub465\uae00 \uadc0\uc5ec\uc6b4 \ud50c\ub7ab\ud38c\ud504\uc2a4  - 9col","category_uuid":"65477a55-7f4f-4a0f-9b05-dcaa271a8385","artist_uuid":"7de82d94-07cc-4ac8-804c-a5ce298d23f9","artist_name":"\uc5d0\uc988\uc544\uc774","is_sale":true,"sale_rate":53,"price_origin":75000,"price_sale":35000,"thumb_image_url":"https:\/\/image.idus.com\/image\/files\/e091eac14db84514aa6c0f1fb5f72061_1080.png","is_favorite":true,"review":{"count":10,"rate":5,"contents":"\ub450\ubc88\uc9f8 \uad6c\ub9e4\uc785\ub2c8\ub2e4. \n\uc81c\uac00 \uc67c\ubc1c\uc774 \uc624\ub978\ubc1c\ubcf4\ub2e4 \ud2f0\ub098\uac8c \ub9ce\uc774 \ud070 \ud3b8\uc778\ub370, \ucc98\uc74c\uc5d0 260\uc744 \uc8fc\ubb38\ud588\ub294\ub370 (\ud3c9\uc18c \uc6b4\ub3d9\ud654 260\uc2e0\uace0 \ub4dc\ub77c\uc774\ube59\uc288\uc988 \ub0a8\uc790\uc6a9 260 \uc798 \ub9de\uc544\uc694) \uc67c\ucabd \ubc1c\uac00\ub77d\uc774 \ub108\ubb34 \ub20c\ub9ac\ub294 \uac83 \uac19\uc544\uc11c \ub3d9\uc0dd\uc5d0\uac8c \ub118\uacbc\uc2b5\ub2c8\ub2e4. \n\uadf8\ub9ac\uace0 \uc78a\uace0 \uc0b4\ub2e4\uac00 \uac00\uc744\uc774 \uc624\uae38\ub798 \ud55c \ubc88 \uc4f0\uc73d~ \uac80\uc0c9\ud574\ubcf4\uace0 270 \uc8fc\ubb38\ud588\uc5b4\uc694. \uc798 \ub9de\uc744\uac70\ub77c\ub294 \ud655\uc2e0\uc774 \uc788\uc5b4\uc11c\uc694. \n\n3\uc77c\ub9cc\uc5d0 \ubc30\uc1a1\uc644\ub8cc\ub418\uc5c8\ub294\ub370 \uc5ed\uc2dc \uae30\ub300\ub300\ub85c \ub531 \uc798 \ub9de\uc2b5\ub2c8\ub2e4. \n\n\ud3b8\ud558\uac8c \ud3c9\uc18c\uc5d0 \uc2e0\uae30\uc5d0 \ub531 \uc88b\uc740 \uac83 \uac19\uc544\uc694. \uac00\uaca9\ub3c4 \uc88b\uace0, \ub2f3\uc73c\uba74 \ub2e4\ub978 \uc0c9\uc73c\ub85c \uc8fc\ubb38\ud558\uace0 \uc2f6\ub124\uc694. \uacc4\uc18d 270\ud30c\uc168\uc73c\uba74 \uc88b\uaca0\uc5b4\uc694."},"badges":[],"created":"1631245070936","is_active":true}],
        pageType: 'favorite',
        itemType: "product",
        paginationCursor: {"next":null,"previous":null,"page_size":20}    }
});
vuepack.create(vueComponents);

(function () {
    var Logger = vuepack.externals.IdusLog.Logger;
    var PageName = vuepack.externals.IdusLog.PageName;
    Logger.sendPageView(PageName.FavoriteList, {
        property: {
            service_type: 'product'
        }
    });
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
	<jsp:include page="../footer.jsp" />
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
