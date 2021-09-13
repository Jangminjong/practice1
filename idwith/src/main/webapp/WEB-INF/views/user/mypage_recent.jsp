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
<title>아이디어스 | 최근 본 작품</title>
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
<meta property="og:url" content="http://www.idus.com/w/me/recentproduct" />
<meta property="og:image"
	content="http://www.idus.com/resources/dist/images/ogimg-idus.png?ver=2.0" />
<link rel="canonical" href="http://www.idus.com/w/me/recentproduct" />
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
		<!-- 헤더 -->
		<div class="dimmed-background"></div>
		<jsp:include page="header_goods.jsp" />
		<div id="content" class="content" data-page="my-info">
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
				<section>
					<div class="title-style watch-list-title--recent">
						<h1 class="txt">최근 본 작품</h1>
					</div>
					<!-- <div data-vue="product-filter"></div> -->
					<div data-vue="product-list">
						<div class="ui_grid col4">
							<ul class="ui_grid__cols--4">
								<li class="ui_grid__item">
									<div class="base-card card--vertical product">
										<a href="/w/product/" target="_blank">
											<div class="card-thumb-cover">
												<div class="product-thumb-img"
													style="background-image: url('https://image.idus.com/image/files/7ebe95f039c041298181294b5bd4cc8e_512.jpg')"></div>
												<div class="product-bookmark">
													<button class="full-button">
														<button type="button" class="sp-icon icon-favorite"></button>
													</button>
												</div>
											</div>
											<div class="card-info product-info">
												<!-- 작가 이름 -->
												<div class="product-info__artist-name">소소한 양과자점</div>
												<!-- 제목 -->
												<div class="product-info__name">⭐️입점 쫀득쫀득 진-한 유기농재료
													휘낭시에 8종 🧈</div>
												<!-- 가격 -->
												<div class="product-info__price">
													<span class="price-origin"> 2,000<span
														style="font-size: 14px;">원</span>
													</span>
												</div>
												<div class="product-info__badge-group"
													style="margin-top: 8px">
													<div class="badge badge-food">안전식품</div>
												</div>
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
														</span> <span class="review-count">(5)</span>
													</div>
													<div class="review-comment">
														<div class="review-comment__badge">후기</div>
														<div class="review-comment__contents">산지 1주?2주?만에
															부모님이랑 같이 얌얌 먹어버렸네용 ㅎㅎ 너무 맛있고 부모님도 넘 달지 않고 좋다고 어디서샀냐고 하실
															정도 였어요 ㅎㅎ 다음에 또 맛있는 빵 나오면 구매할렵니당~~</div>
													</div>
												</div>
											</div>
										</a>
									</div>
								</li>
								<li class="ui_grid__item">
									<div class="base-card card--vertical product">
										<a href="/w/product/" target="_blank">
											<div class="card-thumb-cover">
												<div class="product-thumb-img"
													style="background-image: url('https://image.idus.com/image/files/825f8f0dfa514cbcbb9d9520d5bc9905_512.png')"></div>
												<div class="product-bookmark">
													<button class="full-button">
														<button type="button" class="sp-icon icon-favorite"></button>
													</button>
												</div>
											</div>
											<div class="card-info product-info">
												<!-- 작가 이름 -->
												<div class="product-info__artist-name">도.천.빵.집</div>
												<!-- 제목 -->
												<div class="product-info__name">[더맛있어진]겉바속촉, 휘낭시에</div>
												<!-- 가격 -->
												<div class="product-info__price">
													<span class="price-origin"> 1,500<span
														style="font-size: 14px;">원</span>
													</span>
												</div>
												<div class="product-info__badge-group"
													style="margin-top: 8px">
													<div class="badge badge-food">안전식품</div>
												</div>
												<div class="product-info__review">
													<div class="review-rating">
														<span class="ui_rating fr" data-value=4.8> <i
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
														</span> <span class="review-count">(187)</span>
													</div>
													<div class="review-comment">
														<div class="review-comment__badge">후기</div>
														<div class="review-comment__contents">진짜 너무 맛있어요🥰
															6개 시켰는데 오자마자 가족들이랑 다 먹었네요 곧 재구매할거에요👍🤎</div>
													</div>
												</div>
											</div>
										</a>
									</div>
								</li>
								<li class="ui_grid__item">
									<div class="base-card card--vertical product">
										<a href="/w/product/" target="_blank">
											<div class="card-thumb-cover">
												<div class="product-thumb-img"
													style="background-image: url('https://image.idus.com/image/files/94c4cee4fea34a4595ad546cbd8deb1e_512.jpg')"></div>
												<div class="product-bookmark">
													<button class="full-button">
														<button type="button" class="sp-icon icon-favorite"></button>
													</button>
												</div>
											</div>
											<div class="card-info product-info">
												<!-- 작가 이름 -->
												<div class="product-info__artist-name">디디얌</div>
												<!-- 제목 -->
												<div class="product-info__name">13일출고 추석선물🎁❣휘낭시에 11종
												</div>
												<!-- 가격 -->
												<div class="product-info__price">
													<span class="sale-rate"> 25% </span> <span
														class="price-sale"> 1,500<span
														style="font-size: 14px;">원</span>
													</span>
													<div class="price-origin--before-sale">
														<del>2,000원</del>
													</div>
												</div>
												<div class="product-info__badge-group"
													style="margin-top: 12px">
													<div class="badge badge-food">안전식품</div>
												</div>
												<div class="product-info__review">
													<div class="review-rating">
														<span class="ui_rating fr" data-value=4.7> <i
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
														</span> <span class="review-count">(495)</span>
													</div>
													<div class="review-comment">
														<div class="review-comment__badge">후기</div>
														<div class="review-comment__contents">생각보다 크기는 작았는데
															얼먹하니까 꾸덕하니 진짜 맛있었어요ㅜㅜㅜ!!! 생각날때마다 시킬게요💛</div>
													</div>
												</div>
											</div>
										</a>
									</div>
								</li>
								<li class="ui_grid__item">
									<div class="base-card card--vertical product">
										<a href="/w/product/" target="_blank">
											<div class="card-thumb-cover">
												<div class="product-thumb-img"
													style="background-image: url('https://image.idus.com/image/files/b498906e98354a9abbadd6f3008c625f_512.jpg')"></div>
												<div class="product-bookmark">
													<button class="full-button">
														<button type="button" class="sp-icon icon-favorite"></button>
													</button>
												</div>
											</div>
											<div class="card-info product-info">
												<!-- 작가 이름 -->
												<div class="product-info__artist-name">wetica</div>
												<!-- 제목 -->
												<div class="product-info__name">✨곰돌이 3중 블랭킷✨거즈 담요</div>
												<!-- 가격 -->
												<div class="product-info__price">
													<span class="price-origin"> 19,800<span
														style="font-size: 14px;">원</span>
													</span>
												</div>
												<div class="product-info__badge-group"
													style="margin-top: 8px"></div>
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
														</span> <span class="review-count">(14)</span>
													</div>
													<div class="review-comment">
														<div class="review-comment__badge">후기</div>
														<div class="review-comment__contents">진ㅁ자 너무 부들부들
															좋아요… 맨날 끌어안고 잡니다,,,</div>
													</div>
												</div>
											</div>
										</a>
									</div>
								</li>
							</ul>
							<ul class="ui_grid__cols--4">
								<li class="ui_grid__item">
									<div class="base-card card--vertical product">
										<a href="/w/product/" target="_blank">
											<div class="card-thumb-cover">
												<div class="product-thumb-img"
													style="background-image: url('https://image.idus.com/image/files/7ebe95f039c041298181294b5bd4cc8e_512.jpg')"></div>
												<div class="product-bookmark">
													<button class="full-button">
														<button type="button" class="sp-icon icon-favorite"></button>
													</button>
												</div>
											</div>
											<div class="card-info product-info">
												<!-- 작가 이름 -->
												<div class="product-info__artist-name">소소한 양과자점</div>
												<!-- 제목 -->
												<div class="product-info__name">⭐️입점 쫀득쫀득 진-한 유기농재료
													휘낭시에 8종 🧈</div>
												<!-- 가격 -->
												<div class="product-info__price">
													<span class="price-origin"> 2,000<span
														style="font-size: 14px;">원</span>
													</span>
												</div>
												<div class="product-info__badge-group"
													style="margin-top: 8px">
													<div class="badge badge-food">안전식품</div>
												</div>
												<div class="product-info__review">
													<div class="review-rating">
														<span class="ui_rating fr" data-value=5> <i
															style="font-size: 11px"
															class="ui_icon--star idus-icon-star-fill"
															data-state="active"></i> <i style="font-size: 11px"
															class="ui_icon--star idus-icon-star-fill"
															data-state="active"></i> <i style="font-size: 11px"
															class="ui_icon--star idus-icon-star-fill"
															data-state="active"></i> <i style="font-size: 11px"
															class="ui_icon--star idus-icon-star-fill"
															data-state="active"></i> <i style="font-size: 11px"
															class="ui_icon--star idus-icon-star-fill"
															data-state="active"></i>
														</span> <span class="review-count">(5)</span>
													</div>
													<div class="review-comment">
														<div class="review-comment__badge">후기</div>
														<div class="review-comment__contents">산지 1주?2주?만에
															부모님이랑 같이 얌얌 먹어버렸네용 ㅎㅎ 너무 맛있고 부모님도 넘 달지 않고 좋다고 어디서샀냐고 하실
															정도 였어요 ㅎㅎ 다음에 또 맛있는 빵 나오면 구매할렵니당~~</div>
													</div>
												</div>
											</div>
										</a>
									</div>
								</li>
								<li class="ui_grid__item">
									<div class="base-card card--vertical product">
										<a href="/w/product/" target="_blank">
											<div class="card-thumb-cover">
												<div class="product-thumb-img"
													style="background-image: url('https://image.idus.com/image/files/825f8f0dfa514cbcbb9d9520d5bc9905_512.png')"></div>
												<div class="product-bookmark">
													<button class="full-button">
														<button type="button" class="sp-icon icon-favorite"></button>
													</button>
												</div>
											</div>
											<div class="card-info product-info">
												<!-- 작가 이름 -->
												<div class="product-info__artist-name">도.천.빵.집</div>
												<!-- 제목 -->
												<div class="product-info__name">[더맛있어진]겉바속촉, 휘낭시에</div>
												<!-- 가격 -->
												<div class="product-info__price">
													<span class="price-origin"> 1,500<span
														style="font-size: 14px;">원</span>
													</span>
												</div>
												<div class="product-info__badge-group"
													style="margin-top: 8px">
													<div class="badge badge-food">안전식품</div>
												</div>
												<div class="product-info__review">
													<div class="review-rating">
														<span class="ui_rating fr" data-value=4.8> <i
															style="font-size: 11px"
															class="ui_icon--star idus-icon-star-fill"
															data-state="active"></i> <i style="font-size: 11px"
															class="ui_icon--star idus-icon-star-fill"
															data-state="active"></i> <i style="font-size: 11px"
															class="ui_icon--star idus-icon-star-fill"
															data-state="active"></i> <i style="font-size: 11px"
															class="ui_icon--star idus-icon-star-fill"
															data-state="active"></i> <i style="font-size: 11px"
															class="ui_icon--star idus-icon-star-fill"
															data-state="active"></i>
														</span> <span class="review-count">(187)</span>
													</div>
													<div class="review-comment">
														<div class="review-comment__badge">후기</div>
														<div class="review-comment__contents">진짜 너무 맛있어요🥰
															6개 시켰는데 오자마자 가족들이랑 다 먹었네요 곧 재구매할거에요👍🤎</div>
													</div>
												</div>
											</div>
										</a>
									</div>
								</li>
								<li class="ui_grid__item">
									<div class="base-card card--vertical product">
										<a href="/w/product/" target="_blank">
											<div class="card-thumb-cover">
												<div class="product-thumb-img"
													style="background-image: url('https://image.idus.com/image/files/94c4cee4fea34a4595ad546cbd8deb1e_512.jpg')"></div>
												<div class="product-bookmark">
													<button class="full-button">
														<button type="button" class="sp-icon icon-favorite"></button>
													</button>
												</div>
											</div>
											<div class="card-info product-info">
												<!-- 작가 이름 -->
												<div class="product-info__artist-name">디디얌</div>
												<!-- 제목 -->
												<div class="product-info__name">13일출고 추석선물🎁❣휘낭시에 11종
												</div>
												<!-- 가격 -->
												<div class="product-info__price">
													<span class="sale-rate"> 25% </span> <span
														class="price-sale"> 1,500<span
														style="font-size: 14px;">원</span>
													</span>
													<div class="price-origin--before-sale">
														<del>2,000원</del>
													</div>
												</div>
												<div class="product-info__badge-group"
													style="margin-top: 12px">
													<div class="badge badge-food">안전식품</div>
												</div>
												<div class="product-info__review">
													<div class="review-rating">
														<span class="ui_rating fr" data-value=4.7> <i
															style="font-size: 11px"
															class="ui_icon--star idus-icon-star-fill"
															data-state="active"></i> <i style="font-size: 11px"
															class="ui_icon--star idus-icon-star-fill"
															data-state="active"></i> <i style="font-size: 11px"
															class="ui_icon--star idus-icon-star-fill"
															data-state="active"></i> <i style="font-size: 11px"
															class="ui_icon--star idus-icon-star-fill"
															data-state="active"></i> <i style="font-size: 11px"
															class="ui_icon--star idus-icon-star-fill"
															data-state="active"></i>
														</span> <span class="review-count">(495)</span>
													</div>
													<div class="review-comment">
														<div class="review-comment__badge">후기</div>
														<div class="review-comment__contents">생각보다 크기는 작았는데
															얼먹하니까 꾸덕하니 진짜 맛있었어요ㅜㅜㅜ!!! 생각날때마다 시킬게요💛</div>
													</div>
												</div>
											</div>
										</a>
									</div>
								</li>
								<li class="ui_grid__item">
									<div class="base-card card--vertical product">
										<a href="/w/product/" target="_blank">
											<div class="card-thumb-cover">
												<div class="product-thumb-img"
													style="background-image: url('https://image.idus.com/image/files/b498906e98354a9abbadd6f3008c625f_512.jpg')"></div>
												<div class="product-bookmark">
													<button class="full-button">
														<button type="button" class="sp-icon icon-favorite"></button>
													</button>
												</div>
											</div>
											<div class="card-info product-info">
												<!-- 작가 이름 -->
												<div class="product-info__artist-name">wetica</div>
												<!-- 제목 -->
												<div class="product-info__name">✨곰돌이 3중 블랭킷✨거즈 담요</div>
												<!-- 가격 -->
												<div class="product-info__price">
													<span class="price-origin"> 19,800<span
														style="font-size: 14px;">원</span>
													</span>
												</div>
												<div class="product-info__badge-group"
													style="margin-top: 8px"></div>
												<div class="product-info__review">
													<div class="review-rating">
														<span class="ui_rating fr" data-value=5> <i
															style="font-size: 11px"
															class="ui_icon--star idus-icon-star-fill"
															data-state="active"></i> <i style="font-size: 11px"
															class="ui_icon--star idus-icon-star-fill"
															data-state="active"></i> <i style="font-size: 11px"
															class="ui_icon--star idus-icon-star-fill"
															data-state="active"></i> <i style="font-size: 11px"
															class="ui_icon--star idus-icon-star-fill"
															data-state="active"></i> <i style="font-size: 11px"
															class="ui_icon--star idus-icon-star-fill"
															data-state="active"></i>
														</span> <span class="review-count">(14)</span>
													</div>
													<div class="review-comment">
														<div class="review-comment__badge">후기</div>
														<div class="review-comment__contents">진ㅁ자 너무 부들부들
															좋아요… 맨날 끌어안고 잡니다,,,</div>
													</div>
												</div>
											</div>
										</a>
									</div>
								</li>
							</ul>
						</div>
					</div>
					<p class="txt-bg recent">최근 본 작품은 60개까지 저장됩니다.</p>
				</section>
			</div>
		</div>

		<script>
let vueComponents = [];
vueComponents.push({
    selector: '[data-vue="product-list"]',
    component: 'ProductList',
    props: {
        productList: [{"uuid":"85688add-1d2a-4a0f-99ae-3c08400fd6a3","name":"\u2b50\ufe0f\uc785\uc810 \ucac0\ub4dd\ucac0\ub4dd \uc9c4-\ud55c \uc720\uae30\ub18d\uc7ac\ub8cc \ud718\ub0ad\uc2dc\uc5d0 8\uc885 \ud83e\uddc8","category_uuid":"5c6bc7d4-7760-4702-b63f-7f29eca479e3","artist_uuid":"66b76d8c-95c5-4e0c-bf7b-522d7a8bdb1a","artist_name":"\uc18c\uc18c\ud55c \uc591\uacfc\uc790\uc810","is_sale":false,"sale_rate":0,"price_origin":2000,"price_sale":2000,"thumb_image_url":"https:\/\/image.idus.com\/image\/files\/7ebe95f039c041298181294b5bd4cc8e_1080.jpg","is_favorite":false,"review":{"count":5,"rate":5,"contents":"\uc0b0\uc9c0 1\uc8fc?2\uc8fc?\ub9cc\uc5d0 \ubd80\ubaa8\ub2d8\uc774\ub791 \uac19\uc774 \uc58c\uc58c \uba39\uc5b4\ubc84\ub838\ub124\uc6a9 \u314e\u314e \ub108\ubb34 \ub9db\uc788\uace0 \ubd80\ubaa8\ub2d8\ub3c4 \ub118  \ub2ec\uc9c0 \uc54a\uace0 \uc88b\ub2e4\uace0 \uc5b4\ub514\uc11c\uc0c0\ub0d0\uace0 \ud558\uc2e4 \uc815\ub3c4 \uc600\uc5b4\uc694 \u314e\u314e \ub2e4\uc74c\uc5d0 \ub610 \ub9db\uc788\ub294 \ube75 \ub098\uc624\uba74 \uad6c\ub9e4\ud560\ub835\ub2c8\ub2f9~~"},"badges":[{"type":"FOOD","label":"\uc548\uc804\uc2dd\ud488"}]},{"uuid":"854c3f48-cb4c-4e0b-8a71-cdc0e993b2a5","name":"[\ub354\ub9db\uc788\uc5b4\uc9c4]\uac89\ubc14\uc18d\ucd09, \ud718\ub0ad\uc2dc\uc5d0","category_uuid":"5c6bc7d4-7760-4702-b63f-7f29eca479e3","artist_uuid":"056739d6-2013-4030-aa19-8c30e51061b8","artist_name":"\ub3c4.\ucc9c.\ube75.\uc9d1","is_sale":false,"sale_rate":0,"price_origin":1500,"price_sale":1500,"thumb_image_url":"https:\/\/image.idus.com\/image\/files\/825f8f0dfa514cbcbb9d9520d5bc9905_1080.png","is_favorite":false,"review":{"count":187,"rate":4.8,"contents":"\uc9c4\uc9dc \ub108\ubb34 \ub9db\uc788\uc5b4\uc694\ud83e\udd70 6\uac1c \uc2dc\ucf30\ub294\ub370 \uc624\uc790\ub9c8\uc790 \uac00\uc871\ub4e4\uc774\ub791 \ub2e4 \uba39\uc5c8\ub124\uc694 \uace7 \uc7ac\uad6c\ub9e4\ud560\uac70\uc5d0\uc694\ud83d\udc4d\ud83e\udd0e"},"badges":[{"type":"FOOD","label":"\uc548\uc804\uc2dd\ud488"}]},{"uuid":"f156831e-7182-4761-ad8a-31868ddea800","name":"13\uc77c\ucd9c\uace0 \ucd94\uc11d\uc120\ubb3c\ud83c\udf81\u2763\ud718\ub0ad\uc2dc\uc5d0 11\uc885","category_uuid":"5c6bc7d4-7760-4702-b63f-7f29eca479e3","artist_uuid":"6c50c76e-d7df-437c-acd6-a95aaba517a1","artist_name":"\ub514\ub514\uc58c","is_sale":true,"sale_rate":25,"price_origin":2000,"price_sale":1500,"thumb_image_url":"https:\/\/image.idus.com\/image\/files\/94c4cee4fea34a4595ad546cbd8deb1e_1080.jpg","is_favorite":false,"review":{"count":495,"rate":4.7,"contents":"\uc0dd\uac01\ubcf4\ub2e4 \ud06c\uae30\ub294 \uc791\uc558\ub294\ub370 \uc5bc\uba39\ud558\ub2c8\uae4c \uafb8\ub355\ud558\ub2c8 \uc9c4\uc9dc \ub9db\uc788\uc5c8\uc5b4\uc694\u315c\u315c\u315c!!! \uc0dd\uac01\ub0a0\ub54c\ub9c8\ub2e4 \uc2dc\ud0ac\uac8c\uc694\ud83d\udc9b"},"badges":[{"type":"FOOD","label":"\uc548\uc804\uc2dd\ud488"}]},{"uuid":"663f0625-685c-4740-a15c-1d9c741b61e9","name":"\u2728\uacf0\ub3cc\uc774 3\uc911 \ube14\ub7ad\ud0b7\u2728\uac70\uc988 \ub2f4\uc694","category_uuid":"66299878-c6bc-11e3-8577-06f4fe0000b5","artist_uuid":"0efbf468-aab0-46d3-9672-1e31e4405f28","artist_name":"wetica","is_sale":false,"sale_rate":0,"price_origin":19800,"price_sale":19800,"thumb_image_url":"https:\/\/image.idus.com\/image\/files\/b498906e98354a9abbadd6f3008c625f_1080.jpg","is_favorite":false,"review":{"count":14,"rate":5,"contents":"\uc9c4\u3141\uc790 \ub108\ubb34 \ubd80\ub4e4\ubd80\ub4e4 \uc88b\uc544\uc694\u2026 \ub9e8\ub0a0 \ub04c\uc5b4\uc548\uace0 \uc7a1\ub2c8\ub2e4,,,"},"badges":[]},{"uuid":"59b49e80-dfba-4fd5-8b49-e3c7f16e9901","name":"[\ub9ac\ubdf0\ucd5c\uace0\ud83e\udde1] \ucc28\ub7c9\uc6a9 \ud3ec\ud1a0\uc561\uc790 \ud83d\ude97","category_uuid":"66299878-c6bc-11e3-8577-06f4fe0000b5","artist_uuid":"ca3abcc4-0680-4368-8db8-bb6b5a1f84cd","artist_name":"\ud3ec\ud1a0\uadf8\ub7a8","is_sale":true,"sale_rate":31,"price_origin":8000,"price_sale":5500,"thumb_image_url":"https:\/\/image.idus.com\/image\/files\/3964dafce42049de8ef4a8f8f3843f44_1080.jpg","is_favorite":false,"review":{"count":1158,"rate":4.9,"contents":"\uc0ac\uc774\uc988\ub3c4 \ub531\uc778 \uac83 \uac19\uace0, \ud384\uc774 \ub4e4\uc5b4\uac00\uc11c \ud655\uc2e4\ud788 \uc880 \ub354 \uace0\uae09\uc838 \ubcf4\uc774\ub124\uc694\n\ub108\ubb34 \uc608\ubed0\uc11c \uacc4\uc18d \ubcf4\uac8c \ub418\ub124\uc694!\n\uc791\uac00\ub2d8 \uce5c\uc808\ud558\uac8c \uc751\ub300\ub3c4 \uc798\ud574\uc8fc\uc2dc\uace0\u3160\u3160\n\ub2e4\uc74c\ubc88\uc5d0\ub3c4 \uc5ec\uae30\uc11c \uc7ac\uad6c\ub9e4 \ud560 \uc0dd\uac01 \uc788\uc2b5\ub2c8\ub2e4!"},"badges":[]},{"uuid":"2fd675ca-3e45-487a-9ccf-95765300cb65","name":"\u2665\ufe0f \uc120\ubb3c \uae30\ub150\uc77c \ub808\ud130\ub9c1 3\ub2e8\ub9c8\uce74\ub871\ucf00\uc774\ud06c \u2665\ufe0f","category_uuid":"5c6bc7d4-7760-4702-b63f-7f29eca479e3","artist_uuid":"9a46f482-9a60-4fe9-9091-5c3722971c65","artist_name":"\uc2ac\ub871 \ub9c8\uce74\ub871","is_sale":true,"sale_rate":32,"price_origin":25000,"price_sale":17000,"thumb_image_url":"https:\/\/image.idus.com\/image\/files\/3a58b2ee122f4415bb0537cabdca08be_1080.jpg","is_favorite":false,"review":{"count":17,"rate":4.6,"contents":"\uce5c\uad6c\uac00 \ub108\ubb34 \uc88b\uc544\ud588\uc2b5\ub2c8\ub2e4~^^~\n\ub108\ubb34 \uc608\uc058\ub3c4 \uadc0\uc5fd\uace0 \ub9db\ub3c4 \ub108\ubb34 \ub2ec\uc9c0 \uc54a\uc544\uc11c \uc815\ub9d0 \uc88b\uc558\ub2e4\uace0 \ud588\uc5b4\uc694!!! \ub355\ubd84\uc5d0 \uce5c\uad6c \uc0dd\uc77c\uc5d0 \uc78a\uc9c0 \ubabb\ud560 \ucd94\uc5b5 \ub0a8\uaca8\uc8fc\uc5c8\ub124\uc694 \u314e\u314e \uc791\uac00\ub2d8 \ubc88\ucc3d\ud558\uc2dc\uae38 \ubc14\ub78d\ub2c8\ub2e4\ud83e\udd70"},"badges":[{"type":"FOOD","label":"\uc548\uc804\uc2dd\ud488"}]},{"uuid":"0247ace8-0bae-4569-b7f9-6e5777932516","name":"\ub9c8\uce74\ub871\ubbf8\ub2c8\ucf00\uc774\ud06c","category_uuid":"5c6bc7d4-7760-4702-b63f-7f29eca479e3","artist_uuid":"33eb22b6-df20-479d-831c-90a8d0ce24ab","artist_name":"\ub7ec\ube14\ub9ac\uc19c\uc19c","is_sale":false,"sale_rate":0,"price_origin":10000,"price_sale":10000,"thumb_image_url":"https:\/\/image.idus.com\/image\/files\/4257687fe0bf4caebbf13d0207925ba6_1080.jpg","is_favorite":false,"review":{"count":794,"rate":4.9,"contents":"\uc544\uc774\uac00 \uc88b\uc544\ud588\uc5b4\uc694^^\n\uc880\uae68\uc9c4 \ubd80\uc704\uac00 \uc788\uc5b4\uc11c \uc544\uc27d\uae34\ud588\ub294\ub370\n\uc798\uc548\ubcf4\uc5ec\uc11c  \uad1c\ucc2e\uc558\uc5b4\uc694~~\n\uc544\uce68\uc774\ub77c \uc11c\ube44\uc2a4\uc628 \ub9c8\uce74\ub871\ub9cc \uba39\uace0 \ud559\uad50\uac14\ub294\ub370\n\ub9db\uc788\ub2e4\uace0 \uc6a9\ub3c8\ubaa8\uc544 \uc0ac\uba39\uc5b4\uc57c\uaca0\ub2e4\uace0 \ud558\ub354\ub77c\uad6c\uc694\u314b\u314b\n\uc804 \ubabb\uba39\uc5b4\ubd24\uc9c0\ub9cc \uc9c4\uc9dc\ub9db\uc788\ub098\ubd10\uc694^^"},"badges":[{"type":"FOOD","label":"\uc548\uc804\uc2dd\ud488"}]},{"uuid":"deb71594-aa50-4c23-ae0c-22f7f3e287b4","name":"\ud83d\udc9a\ucd94\uc11d\uc124\ube54\ud83d\udc9c\uae30\ubaa8\ub9e8\ud22c\ub9e8\uacc4\ub7c9\ud55c\ubcf5\ud83c\uddf0\ud83c\uddf7(13\uc77c\uc8fc\ubb38\uae4c\uc9c0)","category_uuid":"f6335574-c6bb-11e3-83fc-06530c0000b4","artist_uuid":"62f24b76-9fa0-4e66-9faa-e747b2b5b39a","artist_name":"\ub9dd\uace0\ubca0\ubca0","is_sale":true,"sale_rate":14,"price_origin":29000,"price_sale":24800,"thumb_image_url":"https:\/\/image.idus.com\/image\/files\/135482b8f01d49b7bc5a0211f59aa185_1080.jpg","is_favorite":false,"review":{"count":15,"rate":5,"contents":"\ub108\ubb34 \uadc0\uc5ec\uc6cc\uc694\u3160\u3160\u3160\u3160\u3160\u3160\u3160\uc2e0\ucd95\uc131\uc774 \uc5c6\uc5b4\uc11c \uc560\ub9e4\ud558\uc2dc\uba74 \ucabc\ub054\uc740 \ub099\ub099\ud558\uac8c \uc8fc\ubb38\ud558\uc154\ub3c4 \ub420\uac83\uac19\uc544\uc694\u314b\u314b\u314b\u314b\uc800\ud76c\uc9d1 \uc544\uac00\ub294 \uc544\uc9c1 \uaf2c\ub9dd\uc774\ub77c\u314b\u314b\u314b\u314b\uc5bc\ub9c8\ub098 \ub354 \uc785\uc744 \uc218 \uc787\uc744\uc9c0\ub294 \ubaa8\ub974\uac9f\uc5b4\uc6ac\u314b\u314b\u314b\u314b\u314b\uac13 \uc4f0\uae30 \uc2eb\uc5b4\uc11c \ubc1c\uc545\ud569\ub2c8\ub2e4\u314b\u314b\u314b\u314b\u314b\u314b\u314b\u314b\u314b\u314b\u314b\u314b\u314b\u314b\u314b"},"badges":[]},{"uuid":"da1bf737-7475-4daa-b3db-52574b949241","name":"\u2764\ufe0f\ucd94\uc11d\uc120\ubb3c\u2764\uae30\uc6b4 \ud55c \ubaa8\uae08, \ud64d\uc0bc\uba85\uc8fc 500ml*2\ud83c\udf76","category_uuid":"fa340e0b-f4b1-4aba-8d9c-a29086d5a8a4","artist_uuid":"fdbe8a51-1513-4d9f-aa9c-4cbd8a393b79","artist_name":"\ud64d\uc0bc\uba85\uc8fc","is_sale":true,"sale_rate":8,"price_origin":41000,"price_sale":37720,"thumb_image_url":"https:\/\/image.idus.com\/image\/files\/b7681b18e82f482d92192bf5769c1c73_1080.jpg","is_favorite":false,"review":{"count":906,"rate":4.9,"contents":"\uc9c8\ubb38 \ub9ce\uc774\ud574\uc11c \uadc0\ucc2e\uc73c\uc168\uc744\ud150\ub370\ub3c4 \uce5c\uc808\ud558\uac8c \ub300\ub2f5\ud574\uc8fc\uc168\uc5b4\uc694!! \uac10\uc0ac\ud574\uc694! \ud3ec\uc7a5\ub3c4 \uaf3c\uaf3c\ud558\uac8c \ud574\uc8fc\uc168\uc5b4\uc694~ \ubc1b\uc740\ubd84\uaed8 \uc5f0\ub77d\ubc1b\uc554\u3145\ub294\ub370 \ub9db\uc788\ub2e4\uace0 \ud558\uc2dc\ub354\ub77c\uad6c\uc694! \uc801\uac8c \uc77c\ud558\uace0 \ub3c8 \ub9ce\uc774\ubc84\uc138\uc694\ud83d\ude00"},"badges":[{"type":"DELIVERY","label":"\ubb34\ub8cc\ubc30\uc1a1"},{"type":"FOOD","label":"\uc548\uc804\uc2dd\ud488"}]},{"uuid":"ecba1b57-5d51-467b-aef5-914fa6369dab","name":"\ubb34\ubc30 [1+1]\uc368\uc9c0\uceec 3mm \ubca0\uc774\uc9c1 \uac01\uc778\ubc18\uc9c0 5-11\ud638","category_uuid":"387867a4-0da4-11e4-873e-06f4fe0000b5","artist_uuid":"9568078c-9025-11e4-a475-06a6fa0000b9","artist_name":"\ubcf4\uc544\uc774 Beau;i \uac01\uc778","is_sale":true,"sale_rate":37,"price_origin":15900,"price_sale":10000,"thumb_image_url":"https:\/\/image.idus.com\/image\/files\/937e0856cbd049d3a14fe910b78ca9ca_1080.jpg","is_favorite":false,"review":{"count":81,"rate":4.9,"contents":"\uce5c\uad6c\uc5d0\uac8c \uc0dd\uc77c\uc120\ubb3c\ub85c \ubaa9\uac78\uc774\ub791 \ubc18\uc9c0\ud574\uc11c \uc92c\ub294\ub370 \uc644\uc804 \ub9cc\uc871\ud558\ub2e4\uace0 \uadf8\ub9ac\uace0 \uc800\ud55c\ud14c \ucc98\uc74c\uc73c\ub85c \uace0\ub9d9\ub2e4\uace0 \ud558\ub354\ub77c\uace0\uc694 \uadf8\ub9ac\uace0 \uc791\uac00\ub2d8\uc774 \ubaa8\ub974\ub294\uac70 \ud558\ub098\ud558\ub098 \uc798 \uc54c\ub824\ub450\uc154\uc11c \ud3b8\ud558\uac8c \uad6c\ub9e4\ud588\uc2b5\ub2c8\ub2e4!"},"badges":[{"type":"DELIVERY","label":"\ubb34\ub8cc\ubc30\uc1a1"}]},{"uuid":"787b5805-d170-4b4d-885b-7510cf940a0a","name":"\u2764\uc591\uac31 \uc120\ubb3c \uc138\ud2b8\u2764 \ucd94\uc11d\uba85\uc808\/\ubd80\ubaa8\ub2d8\/\uc0c1\uacac\ub840\/\uc9d1\ub4e4\uc774\uc120\ubb3c","category_uuid":"5c6bc7d4-7760-4702-b63f-7f29eca479e3","artist_uuid":"bb734dfc-a51a-4eb0-b141-6e13cbde13cc","artist_name":"\ucc3b\uc9d1\ub179\uc6d0","is_sale":false,"sale_rate":0,"price_origin":19000,"price_sale":19000,"thumb_image_url":"https:\/\/image.idus.com\/image\/files\/1f155fc60e664bc892f6de285a4dcecb_1080.jpg","is_favorite":false,"review":{"count":15,"rate":4.7,"contents":"\ubc1b\uc740 \ubd84\uc774 \uace0\uae09\uc9c4 \ub9db\uc774\ub77c\uace0, \uc644\uc804 \ub9cc\uc871\ud558\uc168\uc2b5\ub2c8\ub2e4~\ud83d\udc4d \n\ubb3c\uac74 \ubc1b\uc558\uc744\ub54c \ud06c\uae30\uac00 \uc791\uc544\uc11c \ub2f9\ud669\ud588\ub294\ub370...\ub450\uaed8\uac00 \uc788\uc5b4\uc11c \ucee4\ud53c \ud55c \uc794\uc5d0 \uc591\uac31 \ud55c \uac1c\uc529~\ucda9\ubd84\ud55c \uc591 \uc785\ub2c8\ub2e4!\ud83d\ude0a"},"badges":[{"type":"FOOD","label":"\uc548\uc804\uc2dd\ud488"}]},{"uuid":"c68d6471-76f0-4ee9-92a3-4e864e18abca","name":"\uc6d0\ud615\uc720\ub9ac\ub3d4 \ucee4\uc2a4\ud140 \ud53c\uaddc\uc5b4","category_uuid":"4094e656-c6bf-11e3-83fc-06530c0000b4","artist_uuid":"0789c15c-bfde-443a-b98e-b9221b99e81b","artist_name":"\uc774\ub124\uc2a4\uc57c","is_sale":false,"sale_rate":0,"price_origin":68000,"price_sale":68000,"thumb_image_url":"https:\/\/image.idus.com\/image\/files\/d5580cb0fdf94b448cdf0fef00a13ae8_1080.jpg","is_favorite":false,"review":{"count":23,"rate":5,"contents":"\ub300\ubc15 \ub9d8\uc5d0 \ub4e4\uc5b4\uc694 \uac10\uc0ac\ud569\ub2c8\ub2e4"},"badges":[]},{"uuid":"650e8d9b-2660-4575-8d6d-5555dbb82fce","name":"\ucd94\uc11d\ud560\uc778\ud83c\udf81 \uc4f8\uc218\ub85d\uc560\uc815\ud558\ub294) \uc544\ubcf4\uce74\ub3c4\ud074\ub80c\uc9d5\ubc00\ud06c\ud83e\udd51","category_uuid":"c468e7db-ea75-11e4-b903-06f4fe0000b5","artist_uuid":"3fc393c9-c608-4f1a-8668-dcb99fc6bd8b","artist_name":"\uc220\ub78c\ubbf8\ub124\uc774\ucc98","is_sale":true,"sale_rate":14,"price_origin":18000,"price_sale":15450,"thumb_image_url":"https:\/\/image.idus.com\/image\/files\/da70b2a493c44689b65542f60d5e05db_1080.jpg","is_favorite":false,"review":{"count":109,"rate":4.9,"contents":"\ucd08\ub4f1\uc0dd \uc560\ub4e4\uc774\ub791 \uac19\uc774 \uc4f0\uace0 \uc788\uc5b4\uc694. \n\uc544\uce68\uc5d0 \ub9e8 \uc5bc\uad74 \uc138\uc548\ud560\ub54c \uae30\uc874 \ud074\ub80c\uc9d5\ud3fc\uc740\n\uc4f0\uace0\ub098\uba74 \uc5bc\uad74\uc0c1\ud0dc\uc5d0 \ube44\ud574 \uc880 \uacfc\ud558\uac8c \uc53b\ub294 \ub290\ub08c\uc774 \uc788\uc5c8\ub294\ub370\n\uc774 \uc81c\ud488\uc740 \uac00\ubccd\uace0 \uc4f0\uace0\ub098\uba74 \ucd09\ucd09\ud574\uc694. "},"badges":[]},{"uuid":"f8fbf8be-efcb-49cd-84db-ac421373a3ad","name":"\u2728\uba85\uc808\uc120\ubb3c\uc138\ud2b8 : \ud0d1\ucd08\uc774\uc2a4\uae09 LA\uac08\ube44\ud83c\udf81\u2728 ","category_uuid":"4a8cbc36-3af8-4b75-af01-8795782df80d","artist_uuid":"ba501bb2-6529-4f5b-8276-390d1c935d81","artist_name":"\ubbf8\ubbf8\uc0c1\ud68c","is_sale":true,"sale_rate":32,"price_origin":150000,"price_sale":102000,"thumb_image_url":"https:\/\/image.idus.com\/image\/files\/1821be63108442a98e05bec27168b17c_1080.jpg","is_favorite":false,"review":{"count":2,"rate":5,"contents":"10000% \uce04\ucc9c\uce04\ucc9c\n\uc774\ub7f0 \uadc0\ud55c\uc120\ubb3c \ub108\ubb34 \ub9cc\uc871\ud569\ub2c8\ub2e4"},"badges":[{"type":"FOOD","label":"\uc548\uc804\uc2dd\ud488"}]},{"uuid":"69f878a2-5bf7-4735-b1cb-2c112b1406ab","name":"\ud83d\udd25\ud6c4\uae30\uc774\ubca4\ud2b8\ud83d\udd25\ub9c8\uc774\ud3ab\uc758 \uc774\uc911\uc0dd\ud65c\/\ubc18\ub824\ub3d9\ubb3c \uc77c\ub7ec\uc2a4\ud2b8","category_uuid":"e3ba45b3-c165-11e3-8788-06fd000000c2","artist_uuid":"5991902c-26a1-4fd1-a134-23b11f70cb77","artist_name":"meaning","is_sale":false,"sale_rate":0,"price_origin":10000,"price_sale":10000,"thumb_image_url":"https:\/\/image.idus.com\/image\/files\/ecfa82b2b64c49c5ae892114e89e69db_1080.jpg","is_favorite":false,"review":{"count":52,"rate":5,"contents":"\ud83d\udc9b\ud83e\udd0e\uc0c9\uac10\ucc9c\uc7ac \uc791\uac00\ub2d8 \uc791\ud488\uc5d0 \uac10\ub3d9 \ud83e\udd0e\ud83d\udc9b\n\n\uc2e4\uc81c \uc0dd\uc77c\uc5d0 \uc4f0\uc774\ub294 \uc6a9\ud488\ub4e4\ub85c \uc9c1\uc811 \uad6c\uc0c1\uc744 \ud574\uc11c\n\uc791\uac00\ub2d8\ud55c\ud14c \ub3c4\uc548(?)\uc744 \uba3c\uc800 \ubcf4\ub0b4\ub4dc\ub838\ub294\ub370\n\uc81c\uac00 \ub4dc\ub9b0 \ub3c4\uc548 \ub611\uac19\uc774 \ub69d\ub531! \ub69d\ub531! \ud574\uc8fc\uc2dc\uace0\n\ud30c\ud2f0\uc6a9\ud488\ub4e4(?)\ub3c4 \uc12c\uc138\ud558\uac8c \uadf8\ub824\uc8fc\uc2dc\uace0\u2026\ud83d\ude2d\ud83d\udca6\n\uac10\ub3d9\uac10\ub3d9\uc785\ub2c8\ub2e4. \ub315\ub315\uc774\ub4e4 \ud2b9\uc9d5\ub3c4 \uc798 \uc0b4\ub824\uc8fc\uc2dc\uace0\n\ub204\uac00\ubd10\ub3c4 \uc800\ud76c\uc9d1 \ub315\ub315\uc774\ub4e4\uc774\ub124\uc694 \u314e\u314e\u314e\ud83d\udc95\n\ub530\ub85c \ucd94\uac00 \ud574\ub2ec\ub77c\uace0 \uc694\uccad\ub4dc\ub9b0 \uac83\ub4e4\ub3c4 \ud754\ucf8c\ud788\n\ub4e4\uc5b4\uc8fc\uc2dc\uace0 \ud83d\udc4f\ud83c\udffb \uc81c\uac00 \uc6d0\ud558\ub294 \uc0c9\uac10\uc73c\ub85c \ub108\ubb34\ub098\n\uc798 \ub9de\ucdb0\uc8fc\uc168\uc5b4\uc6a9\u2026 \ub108\ubb34 \uac10\uc0ac\ud574\uc6a5\u2026\ud83c\udf3f \uc81c \uc778\uc2a4\ud0c0\n\ud53c\ub4dc\uac00 \uc804\uccb4\uc801\uc73c\ub85c \ubca0\uc774\uc9c0\ud1a4\/\ub204\ub7f0\ud1a4 \uc778\ub370\u2026\n\ub108\ubb34 \uc798 \ub9de\uc744\uac83 \uac19\ub124\uc694 \u314b\u314b\u314b\ud83d\udc9b\ud83e\udd70 \n\ucfe4\uc774 3\uc0b4 \uc0dd\uc77c\ub54c\ub3c4 \ucee8\uc149\uad6c\uc0c1\ud574\uc11c \ubd80\ud0c1\ub4dc\ub9b4\uac8c\uc6a9\n\uae30\ud68c\uac00 \ub41c\ub2e4\uba74\uc694\ud83d\ude0a \ub108\ubb34 \ub9d8\uc5d0 \ub4e4\uc5b4\uc694!!! \n\uc5ec\ub7ec \uc791\uac00\ub2d8\ub4e4 \uc911\uc5d0\uc11c \uace0\uc2ec\ub05d\uc5d0 \ucd08\uc774\uc2a4\ud55c\n\uc791\uac00\ub2d8\uc774\uc2e0\ub370. \ud6c4\ud68c\uc5c6\ub294 \uacb0\uc815\uc785\ub2c8\ub2e4 \ud83d\udc4d\ud83c\udffb\ud83d\udcab\n\uc0c9\uac10+\ub514\ud14c\uc77c+\uc815\uc131+\uc54c\ucc2c\ubc30\uacbd \ubaa8\ub4e0\uac8c \uc870\ud654\ub86d\uac8c\n\uadf8\ub824\uc8fc\uc2dc\ub294 \ubd84\uc740. \uc694\uae30 \uc694 \uc791\uac00\ub2d8 \ubfd0\uc774\ub124\uc694\ud83c\udf3c\n\ub098\uc911\uc5d0 \ud06c\uac8c \ud504\ub9b0\ud305\ud574\uc11c \uc561\uc790\uc5d0\ub3c4 \ub123\uc5b4\uc57c\uaca0\uc5b4\uc6a5\n\ub108\ubb34 \uc88b\uc740 \uadf8\ub9bc \uac10\uc0ac\ud569\ub2c8\ub2e4 \u314e\u314e\u314e \uc791\uac00\ub2d8 \uc778\uc2a4\ud0c0\n\uc788\uc73c\uc2dc\uba74 \ud0dc\uadf8\ud558\uace0\uc2f6\uc740\ub370 \u3160\u3160 \ucc3e\uc544\ub450 \uc548\ub098\uc624\ub124\uc6a9\ud83d\udca7\n\uc694\ubc88\uc5d0 \ucfe4\uc774 \uc0dd\uc77c\ud30c\ud2f0\ub97c \ub2a6\uac8c\ud558\ub294 \ubc14\ub78c\uc5d0\n\uadf8\ub9bc\uc774\ub77c\ub3c4 \uc81c\uc791\ud574\uc11c \uba3c\uc800 \ucd95\ud558\ub97c \ud558\uace0\uc11c\n\ub098\uc911\uc5d0 \ud30c\ud2f0\ub97c \ud574\uc8fc\uace0 \ub530\ub85c \uc0ac\uc9c4\uc744 \uc62c\ub824\uc57c\uaca0\ub2e4 \ud588\ub294\ub370\n\ub355\ubd84\uc5d0 \ub108\ubb34\ub098 \ub9cc\uc871\uc2a4\ub7ec\uc6b4 \uc0dd\uc77c\ub0a0\uc774 \ub418\uaca0\ub124\uc6a5 \u314e\u314e\ud83c\udf82\n\ucfe4\uc774 \uc0dd\uc77c\ub54c \uc5bc\ub978 \uc791\ud488 \uacf5\uac1c\ud558\uace0\uc2f6\ub124\uc6a5 \u314e\u314e\n\ub108\ubb34\ub098 \uac10\uc0ac\ud569\ub2c8\ub2f9 \ud83e\udd70 \ub2a6\uc740 \uc2dc\uac04\uc5d0\ub3c4 \uc218\uc815\ud574\uc8fc\uc2dc\uace0\n\uc560\ucc29\uc778\ud615\ub3c4 \uadf8\ub824\uc8fc\uc2dc\uace0 \uac10\uc0ac\ud569\ub2c8\ub2e4 \u3160\u3160\ud83d\udc4f\ud83c\udffb\ud83d\udcab\n\uc791\ud488 \ubc1b\uc790\ub9c8\uc790 \ubc14\ub85c \ud3f0\ubc30\uacbd \uba3c\uc800 \ub4f1\ub85d\ud588\ub124\uc6a9 \u314e\u314e\u314e"},"badges":[{"type":"DELIVERY","label":"\ubb34\ub8cc\ubc30\uc1a1"}]},{"uuid":"76024848-c11d-4af4-955d-76df5d515be9","name":"(\uc218\uc81c\uce94\ub514)\uacfc\uc77c\ub9db\ubbf9\uc2a4 \ud558\ud2b8\uc0ac\ud0d516\uac1c\u2764\ufe0f","category_uuid":"5c6bc7d4-7760-4702-b63f-7f29eca479e3","artist_uuid":"a109d474-1121-4f53-9edf-392ef35a4b09","artist_name":"\uc2a4\uc717\ud30c\ud30c","is_sale":false,"sale_rate":0,"price_origin":6900,"price_sale":6900,"thumb_image_url":"https:\/\/image.idus.com\/image\/files\/ded587367a96421ab1e20b85db280cfc_1080.jpg","is_favorite":false,"review":{"count":41,"rate":5,"contents":"\uc120\ubb3c\ubc1b\uc740 \uc0ac\ub78c\uc774 \ub418\uac8c \uc88b\uc544\ud588\uc5b4\uc694"},"badges":[{"type":"FOOD","label":"\uc548\uc804\uc2dd\ud488"}]},{"uuid":"c8fb4560-a12e-4e64-bce0-a0ac1d8ad567","name":"\u26a1\ufe0f\ucd94\uc11d\ubc30\uc1a1\ub9c8\uac10\u26a1\ufe0f\uc785\uccb4 \uc7a5\ubbf8 \uc790\uc218 \ub9b0\ub128 \uc2a4\uce74\ud504","category_uuid":"8b4bf95d-c6bc-11e3-8577-06f4fe0000b5","artist_uuid":"ce2eabd6-fa8b-11e3-83fc-06530c0000b4","artist_name":"\uace0\uc591\uc774\uac00 \ub178\ub294 \uc815\uc6d0","is_sale":false,"sale_rate":0,"price_origin":53000,"price_sale":53000,"thumb_image_url":"https:\/\/image.idus.com\/image\/files\/5215af517cc14c6c8170ea985fbb1768_1080.jpg","is_favorite":false,"review":{"count":5,"rate":5,"contents":"\uc798\uc4f8\uac8c\uc694. \ub2a6\uac8c \ud6c4\uae30 \ub0a8\uaca8\uc11c \uc8c4\uc1a1\ud574\uc694."},"badges":[]},{"uuid":"44c66a0c-060b-4c5d-9d12-31c4b5f1bea3","name":"\uc2ec\ucff5\u2764\ucee4\uc2a4\ud140\uac00\uc8fd\ud3f0\ucf00\uc774\uc2a4","category_uuid":"b3b31a1b-ea75-11e4-8a46-06fd000000c2","artist_uuid":"d48a552f-ce11-4944-a17e-edf007ebc06d","artist_name":"\uc81c\uc774\uc5b4\uc2a4\uac00\uc8fd\uacf5\ubc29","is_sale":true,"sale_rate":28,"price_origin":36000,"price_sale":26000,"thumb_image_url":"https:\/\/image.idus.com\/image\/files\/41741fc53450479185de690b5ea37b2f_1080.jpg","is_favorite":false,"review":{"count":1014,"rate":4.7,"contents":"\ub108\ubb34\ub108\ubb34 \ub9d8\uc5d0 \ub4ed\ub2c8\ub2e4 \ub2e4\uc74c\ubc88\uc5d0\ub3c4 \ub610 \uc8fc\ubb38\ud560\ub4ef"},"badges":[]},{"uuid":"3790fc9c-7bef-44a5-92a2-a093da4d1fb8","name":"\ud83d\udd25\uad6d\uc0b029%\ud560\uc778\ud83d\udd35\ub18d\ubd80 \ubb34\uc0dd\ucc44\ud83d\udd35(\ube44\ube54\ubc25\ub41c\uc7a5\uc120\ud0dd)\ubc18\ucc2c","category_uuid":"b3f853b9-333d-4eec-ad04-e4604d9d501b","artist_uuid":"6858e82a-c560-436c-b4cb-27459d85849d","artist_name":"3\ub300\ub97c\uc774\uc5b4\uc628\ub18d\uc7a5(\uc758\uc131\ubd80\uc790\ub18d\uc7a5)","is_sale":true,"sale_rate":29,"price_origin":6900,"price_sale":4900,"thumb_image_url":"https:\/\/image.idus.com\/image\/files\/569b37df5f8b4dfd91033638410bf14e_1080.jpg","is_favorite":false,"review":{"count":119,"rate":4.7,"contents":"\uc640 \uc774\uac70 \ubbf8\ucce4\uc5b4\uc694 \ubb34\uc0dd\ucc44\uc5d0 \uacc4\ub780\ud6c4\ub77c\uc774 \ub123\uace0 \ubc25 \ube44\ube48\ub2f4\uc5d0 \n\ub41c\ucc0c \ube44\ubcbc\uc11c \uba39\uc73c\ub2c8\uae50 \ubbf8\ucce4\uc5b4\uc694 \ub108\ubb34 \ub9db\uc788\uc5b4\uc694 \uc9d1\ubc25 \ub290\ub08c \u3160\u3160"},"badges":[{"type":"FOOD","label":"\uc548\uc804\uc2dd\ud488"}]},{"uuid":"c2cdef1c-0e1c-4286-ad8f-81e8d66d34ec","name":"\ud83d\udd2528%\ud560\uc778\ud83d\udd25\ud83d\udd35\ub18d\ubd80 \uace0\ucd94\uc7a5\uc544\ucc0c\ubb34\uce68\ud83d\udd35\ub18d\ubd80 \ubc18\ucc2c!","category_uuid":"b3f853b9-333d-4eec-ad04-e4604d9d501b","artist_uuid":"6858e82a-c560-436c-b4cb-27459d85849d","artist_name":"3\ub300\ub97c\uc774\uc5b4\uc628\ub18d\uc7a5(\uc758\uc131\ubd80\uc790\ub18d\uc7a5)","is_sale":true,"sale_rate":28,"price_origin":10900,"price_sale":7900,"thumb_image_url":"https:\/\/image.idus.com\/image\/files\/31ef1802b5d840ff88397ac2e2fe71f8_1080.jpg","is_favorite":false,"review":{"count":1428,"rate":4.7,"contents":"\ub9e4\uc6cc~~~~~~~\uac00 \uc544\ub2c8\uace0 \ub9e4\ucf64\ud55c\uac83\ub3c4 \uc548\ub9e4\ucf64\ud55c\uac83\ub3c4 \uc788\uc5b4\uc694 \n\ub9e4\uc6b4\uac70 \uc798 \ubabb\uba39\ub294 \ubd84\ub4e4\ub3c4 \ubc25\uc774\ub791 \uba39\uae30 \uc88b\uc544\uc694 \n\uccab\uc8fc\ubb38\uc778\ub370 \ub9cc\uc871\ud569\ub2c8\ub2e4 \n\uc8fc\ubb38\uc2e4\uc218\ub85c \ubb38\uc758\ud588\uc5c8\ub294\ub370 \uce5c\uc808\ud788 \uc798 \uc54c\ub824\uc8fc\uc2dc\uace0 \ucc98\ub9ac\ub3c4 \ube68\ub9ac \ud574\uc8fc\uc2dc\uace0 \uc88b\uc558\uc5b4\uc694 ^^"},"badges":[{"type":"FOOD","label":"\uc548\uc804\uc2dd\ud488"}]},{"uuid":"e4514458-1270-48e2-9b2f-d578bb34380b","name":"\ube14\ub791\ud558\ud2b8 \uadc0\uac78\uc774 \/\uadc0\ucc0c","category_uuid":"ac599662-0cdf-11e4-85f1-06fd000000c2","artist_uuid":"d4c4a630-6478-4b6c-83fc-de3d0da13469","artist_name":"Cha-belle \uc0e4\ubca8\ub974","is_sale":false,"sale_rate":0,"price_origin":14900,"price_sale":14900,"thumb_image_url":"https:\/\/image.idus.com\/image\/files\/fb863acac2a14202817738688a2c8d60_1080.png","is_favorite":false,"review":{"count":1,"rate":5,"contents":"\ubcf4\uc790\ub9c8\uc790 \uc608\ubed0\uc11c \uad6c\ub9e4\ud588\ub294\ub370 \ucc29\uc6a9\ud558\ub2c8 \ub354 \uc608\uc058\ub124\uc694\ud83d\ude0d\ud83d\ude0d \ud3ec\uc7a5\ub3c4 \uae54\ub054\ud558\uace0 \ubc30\uc1a1\ub3c4 \ubc14\ub85c \ucc29 \ubcf4\ub0b4\uc8fc\uc154\uc11c \uc694\uc998 \ucd5c\uc560 \uadc0\uac78\uc774\uc785\ub2c8\ub2e4\u2764\ufe0f"},"badges":[]},{"uuid":"ea66b053-2f0e-43b7-bc70-83de0a0bc581","name":"[\ub9c8\ub4dc\ub77c\uc2a4] \uc560\ud50c\uc6cc\uce58\/\uac24\ub7ed\uc2dc\uc6cc\uce58 \uacf1\ucc3d\ubc34\ub4dc \uc2a4\ud2b8\ub7a9","category_uuid":"1616d42d-ea77-11e4-88d5-06530c0000b4","artist_uuid":"9f670245-5dd0-483e-9c2e-4060753215ca","artist_name":"\uc2a4\ud2b8\ub7a9\ud3ec\uc720\/STRAP FOR YOU","is_sale":false,"sale_rate":0,"price_origin":12800,"price_sale":12800,"thumb_image_url":"https:\/\/image.idus.com\/image\/files\/2601caf929714da5ac49170fb1fc9b64_1080.jpg","is_favorite":false,"review":{"count":191,"rate":4.9,"contents":"\uc608\ubed0\uc694!! \uc0ac\uc774\uc988\ub3c4 \uc88b\ub124\uc694~~"},"badges":[]},{"uuid":"918fe623-1571-4f37-833e-8e58ffc6315f","name":"\ub9e8\ub4e4\ubcf4\ub4e4\ud83c\udf31\ud584\ud504\uc528\ub4dc\ud074\ub80c\uc838","category_uuid":"be3cf842-ea74-11e4-8878-06a6fa0000b9","artist_uuid":"98469db2-0809-11e4-98ba-06f4fe0000b5","artist_name":"\uc3d8\ud53c\uc9c0\ub2c8","is_sale":true,"sale_rate":20,"price_origin":15000,"price_sale":12000,"thumb_image_url":"https:\/\/image.idus.com\/image\/files\/87af800593874dea8669f6c3701dcaf8_1080.jpg","is_favorite":false,"review":{"count":1,"rate":4,"contents":"\n\uad6c\ub9e4\ud55c \uc138\uac1c\uc911..\uc824 \uc77c\ucc0d \uae60\ub294\ub370 \uc544\uc9c1\ub3c4 \uc368\uc694..\n\uc791\uac00\ub2d8\uc774 \uc4f0\uc2e4\ub77c\uace0 \ub9cc\ub4e0 \ube44\ub204 \uac19\uc544\uc694\n\uc624\uc77c\ub3c4 \uc544\ub08c\uc5c6\uc774 \ub123\uc73c\uc2e0\uac70 \uac19\uc740\ub370 \ud5a5\uc740 \uadf8\ub2e5\uc774\uc5d0\uc694\u3160\n\uc81c\uac00 \ub9c9 \ubb34\ud5a5.\uc544\uae30\ub4e4 \ube44\ub204 \uc774\ub7f0\uac74 \uc120\ud638 \ud558\uc9c4 \uc54a\uc544\uc694\n\uc5b4\ub514\uae4c\uc9c0\ub098 \uac1c\uc778\uc801 \ucde8\ud5a5\uc784..\n\n\uc9d1\uc5d0 \uc5b4\ub9b0\uc774 \ub450\uba85\ub3c4 \ud30c\uc6cc\uc9c0\uc131\uac19\uc740\ub370\n\uc18d\ub2f9\uae40\uc788\ub294 \ub0a8\uc544\ub4e4\uc774\ub77c..\n\uc694\uc998 \ub0a0\uc528\uc5d0 \ub540\ub0c4\uc0c8\uc640 \ub9cc\ub098\ub2c8..\ub09c\ub9ac\uc5d0\uc694..\n\n\uc791\uac00\ub2d8 \ube44\ub204\ub294 \uc219\uc131\uc774 \uc5c4\uccad \uc798\ub41c\uac70 \uac19\uc544\uc694!!\n\uc798\ub77c\uc11c \uc4f0\ub294\ub370 \uc798 \uc904\uc9c0\ub3c4 \uc54a\uace0 \ub531\ub531\ud574\uc694^^\n\ube44\ub204\ub9dd\uc5d0\uc11c \uc870\ucc28\ub3c4 \ub179\ub294\ub290\ub08c\uc5c6\uc5b4\uc694\ud83e\udd2d"},"badges":[]},{"uuid":"9723ac2d-63a4-4956-ac19-96ca3ad6758e","name":"\ud2f0\ud2b8\ub9ac\ub85c\uc988\ub9c8\ub9ac\uc219\uc131\ube44\ub204","category_uuid":"be3cf842-ea74-11e4-8878-06a6fa0000b9","artist_uuid":"98469db2-0809-11e4-98ba-06f4fe0000b5","artist_name":"\uc3d8\ud53c\uc9c0\ub2c8","is_sale":true,"sale_rate":20,"price_origin":15000,"price_sale":12000,"thumb_image_url":"https:\/\/image.idus.com\/image\/files\/b88d08339d4547ad9aa055a51706b497_1080.jpg","is_favorite":false,"review":{"count":22,"rate":5,"contents":"\ud5a5\uc774 \ub108\ubb34 \uc88b\uc544\uc694\n\ud2b8\ub7ec\ube14 \ud53c\ubd80\uc778\ub370 \uba70\uce60 \uc368\ubd24\ub294\ub370\n\ub290\ub08c\uc740 \uc21c\ud558\uace0 \uc88b\uc544\uc694\n\ub2e4 \uc4f0\uace0 \ub610 \uc8fc\ubb38\ud560\uac8c\uc694^^"},"badges":[]},{"uuid":"3b0f111d-0989-4f62-ab19-c515b431bc2c","name":"\uc911 \uac74\uc131, \ud0c8\ubaa8 \uc7a1\ub294 14\uc885\ud5c8\ube0c, 100% \uc21c~\ucd94\ucd9c\ubb3c","category_uuid":"c468e7db-ea75-11e4-b903-06f4fe0000b5","artist_uuid":"b469d40c-cb88-444a-b463-ab675665c70a","artist_name":"\uc38c\ub808\ubaa8(SeleMo)","is_sale":true,"sale_rate":20,"price_origin":32000,"price_sale":25600,"thumb_image_url":"https:\/\/image.idus.com\/image\/files\/5e4d37945fde47cb8cf50f79b8657255_1080.png","is_favorite":false,"review":{"count":7,"rate":4.9,"contents":"\ubb3c\uc81c\ud615\uc73c\ub85c \ub048\uc801\uac70\ub9ac\uace0 \ubb34\uac81\uc9c0 \uc54a\uc544\uc694.\n\uac70\ud488\ub3c4 \uc798\ub098\uace0 \uac00\ubcbc\uc6cc\uc694\n\uc0f4\ud478\ub9cc\ud574\ub3c4 \uba38\ub9ac \uc5c9\ud0b4\uc5c6\uc774 \ucc28\ubd84\ud574\uc694\n\uc815\ub9d0 \uc88b\uc740 \uc0c1\ud488\uc778\uac00\ubd10\uc694~ \uc2e0\uae30\ud558\uac8c \uba38\ub9ac\uce74\ub77d\ub3c4 \ub35c \ube60\uc838\uc694. \uba38\ub9ac\uac10\uace0\ub098\uba74 \ud55c\uc6c5\ud07c\ube60\uc838\uc788\uc5b4\uc57c\ud558\ub294\ub370 \ub208\uc5d0 \ub744\uac8c \ub2ec\ub77c\uc84c\uc5b4\uc694.\n\ucd94\ucc9c\ud569\ub2c8\ub2e4 "},"badges":[]},{"uuid":"2e07b18d-eb94-4e9a-84e8-b522a3ffbd7a","name":"\ub9ac\uc5bc \ube48\ud2f0\uc9c0 \ud558\ud2b8 \ubaa9\uac78\uc774_\ubbf8\ub2c8(925 silver)","category_uuid":"aef50134-0cdf-11e4-8182-06530c0000b4","artist_uuid":"6ce57581-7e0b-437b-89b0-8005548cc0de","artist_name":"\uc138\ucee8\ub4dc\ucef4\ud50c\ub809\uc2a4","is_sale":false,"sale_rate":0,"price_origin":56000,"price_sale":56000,"thumb_image_url":"https:\/\/image.idus.com\/image\/files\/cd3d0493fdc04c7794e91dae2bfcbe5d_1080.jpg","is_favorite":false,"review":{"count":2,"rate":5,"contents":"\ud050\ube45 \uc0c9\uc0c1 \ub54c\ubb38\uc5d0 \ubb38\uc758 \ub4dc\ub838\uc5c8\ub294\ub370 \uce5c\uc808\ud558\uac8c \ub2f5\ubcc0\ud574\uc8fc\uc168\uace0, \n\uc9c0\ubc29\uc5d0 \uc788\uc5b4\uc11c \uc624\ub298\uc5d0\uc11c\uc57c \ubaa9\uac78\uc774 \uc218\ub839\uc744 \ud588\ub294\ub370... \uc815\ub9d0 \uc2e4\ubb3c\uc774 \uc608\ubed0\uc694\ud83e\udd0d\ud83d\udc99 \uc544\ucfe0\uc544\ub9c8\ub9b0\ud558\uace0 \uc2e4\ubc84 \uc870\ud569\uc73c\ub85c \ud558\uae38 \uc798\ud55c \uac83\uac19\uad6c, \ubca8\ubcb3 \ud0c0\uc785\uc774\ub77c \uc815\ub9d0 \ub9c8\uc74c\uc5d0 \ub4e4\uc5b4\uc694\ud83c\udf80 \uc791\uac00\ub2d8 \ubc88\ucc3d\ud558\uc138\uc6a9\u263a\ufe0f\u2728\u2755"},"badges":[]},{"uuid":"86fe09f8-5616-4d0d-a572-48744b1bf0a1","name":"\uc5bc\ub5a8\uacb0\uc5d0 \uc2a4\ud30c\ud074\ub9c1\ub9c9\uac78\ub9ac(920ml x 3\ubcd1) \ubbfc\ud2b8\uceec\ub7ec","category_uuid":"fa340e0b-f4b1-4aba-8d9c-a29086d5a8a4","artist_uuid":"5e06194e-2388-47a9-b7ce-f802086b5aed","artist_name":"\ub3d9\uac15\uc8fc\uc870","is_sale":true,"sale_rate":5,"price_origin":22000,"price_sale":21000,"thumb_image_url":"https:\/\/image.idus.com\/image\/files\/4a0145da9f354eb28867112137137216_1080.jpg","is_favorite":false,"review":{"count":51,"rate":4.9,"contents":"\ud0c4\uc0b0\ub3c4\uc138\uace0 \ub9db\uc788\uc5b4\uc11c\uc804\ub118\uc88b\uc558\ub124\uc694^^ \ub9c9\uac78\ub9ac\uc88b\uc544\ud574\uc11c\uc790\uc8fc\uba39\ub294\ub370 \ub2e4\ub978\uac70\ub9c8\uc2dc\uba74 \uba38\ub9ac\uac00\uc880\uc544\ud508\ub370 \uc5bc\ub5a8\uacb0\uc5d0\ub294 \uc219\ucde8\ub3c4 \uc5c6\uace0 \uba38\ub9ac\ub3c4\uc548\uc544\ud504\ub354\ub77c\uad6c\uc694~~\n\ub2e4\ub9cc \uac00\uaca9\uc774\uc880 \ubd80\ub2f4\uc2a4\ub7fd\uae34\ud55c\uac70\uac19\uc544\uc694\u314e\u314e \uc880 \uc800\ub834\ud558\uac8c\ud574\uc8fc\uc2dc\uba74 \uc7c1\uc5ec\ub193\uace0 \uba39\uc744\ub4ef\uc694\u2764\u2764\u2764\u2764\u2764"},"badges":[{"type":"FOOD","label":"\uc548\uc804\uc2dd\ud488"}]},{"uuid":"557ced87-2a6c-4036-ab62-fb7b684f95c1","name":"\ud83c\udf3a\ucd94\uc11d\uc804\ubc30\uc1a1 \uc2e0\uba54\ub274\uac8c\ub9b4\ub77c\u203c\ufe0f\ud83c\udf3a \ubf40\ub610\ud06c\uce58\ubc45,\ud398\ub808\ub85c\ubc45","category_uuid":"5c6bc7d4-7760-4702-b63f-7f29eca479e3","artist_uuid":"598fb7c4-6674-47de-ad02-95673d738a99","artist_name":"\ub2e4\uc564\ud558(danha)","is_sale":true,"sale_rate":5,"price_origin":3800,"price_sale":3600,"thumb_image_url":"https:\/\/image.idus.com\/image\/files\/280eb388cdf44f93a46837334f9853de_1080.jpg","is_favorite":false,"review":{"count":1762,"rate":4.8,"contents":"\uc81c\uac00 \ub610, \ud06c\ub9bc\uce58\uc988\ub97c \ub108\ubb34 \uc88b\uc544\ud574\uc11c....\/\/\n\ud06c\uce58\ubc45\uc740 \ub3c4\uc800\ud788!! \ub118\uc5b4\uac08 \uc218\uac00 \uc5c6\uc5c8\uc2b5\ub2c8\ub2e4..;;\n\ud751\uc784\uc790\uc758 \uace0\uc18c\ud568\uacfc \ud06c\ub9bc\uce58\uc988\uc758 \ub2ec\ub2ec\uace0\uc18c\ud568\uc774\u3160\u3160\n\uc5b4\ucf00 \uc870\ud569\uc774 \uc548\ub420 \uc218\uac00 \uc788\uaca0\uc2b5\ub2c8\uaebc..\u3160\u3160\n\ub2e4\ub978 \uac83\ub450 \ub118 \ub9db\uc788\uc9c0\ub9cc!! \ud06c\uce58\ubc45 \uc2dc\ub9ac\uc988\ub294 \uc808\ub300\ub85c! \ub354 \uc2e4\ud328\uac00 \uc5c6\ub294 \uac83 \uac19\uc544\uc6a9..\u2606\n\uce74\uce74\uc624\ub3c4 \uc800\ubc88\uc5d0 \uba39\uc5b4\ubd24\uc5c8\uc9c0\ub9cc, \ucd08\ucf54 \ub355\ud6c4\ub77c\uba74 \uac15\ucd94!!\n\ub2e4\uc564\ud558 \ubc45\ucfe0\ud0a4\ub294 \ub610 \uc5bc\uba39\uc774 \ucd5c\uace0\uc774\uc9c0 \uc54a\uc2b5\ub2c8\uae5f..\u2606\n\ube75\uc774\ub098 \ucfe0\ud0a4..\uadf8\ub9cc \uba39\uc5b4\uc57c\ud558\ub294\ub370,,,,\ub108\ubb34 \ub9db\uc788\uc5b4\uc11c \ub04a\uc9c0\ub97c \ubabb\ud558\uaca0\uc5b4\uc6a9..\u3160\u3160\u3160\u3160\n\ucd5c\uace0 \uc785\ub2c8\ub2e4..\u2606\u2606"},"badges":[{"type":"FOOD","label":"\uc548\uc804\uc2dd\ud488"}]},{"uuid":"1e1015f6-b73d-4413-a27a-276bd67a8caf","name":"[925\uc2e4\ubc84-14k] \ub3cc\uace0\ub798 \uaf2c\ub9ac \ud314\ucc0c","category_uuid":"b12b42eb-0cdf-11e4-85f1-06fd000000c2","artist_uuid":"e53b45b0-3338-47e8-a91d-2a8eaa7a28e3","artist_name":"\uc194\ud2b8\uc720","is_sale":false,"sale_rate":0,"price_origin":38000,"price_sale":38000,"thumb_image_url":"https:\/\/image.idus.com\/image\/files\/84c6e05b639c4f28b0b2a4d67accac41_1080.png","is_favorite":false,"review":{"count":6,"rate":4.8,"contents":"\ub108\ubb34 \uc608\uc058\uace0 \ubc30\uc1a1\ub3c4 \uc9f1 \ube68\ub77c\uc11c \uc88b\uc740\ub370 \uc190\ubaa9\uc5d0 \ucc28\uace0 \ube7c\ub294\uac8c \ud63c\uc790\ub294 \ub108\ubb34 \ud798\ub4dc\ub124\uc694 \u3160 \uadf8\ub798\ub3c4 \ub118 \uc774\ubed0\uc694 \ud551\ud06c\uace8\ub4dc\ub3c4 \uc788\uc5c8\uc73c\uba74 \uc88b\uaca0\uc5b4\uc694!"},"badges":[]},{"uuid":"bb006435-c9f8-482f-9e49-528ae05897a4","name":"[\ucd94\uc11d\uc120\ubb3c\ucd94\ucc9c\u2764\ufe0f\u200d\ud83d\udd25]\ud658\uc808\uae30 \ucd5c\uace0\u2728 \ud55c\ubc29\uccad\u2615\ufe0f","category_uuid":"613ac4c3-df73-4a0f-b3dd-362849dabb2a","artist_uuid":"b09b58ca-daf1-4bf1-92f9-72ed632eef02","artist_name":"\uacc4\uc808,\ud55c\ubaa8\uae08","is_sale":true,"sale_rate":17,"price_origin":15000,"price_sale":12500,"thumb_image_url":"https:\/\/image.idus.com\/image\/files\/943480afdb99423ba7d65300ce4c9cdb_1080.jpg","is_favorite":false,"review":{"count":72,"rate":4.8,"contents":"\uc774\ubed0\uc694.\n300g\uc5d0 5~6\ubc88 \uba39\uc744\uc218\uc788\ub300\uc11c\n\uc791\ub2e4\uace4 \uc0dd\uac01\ud588\uc9c0\ub9cc \uadf8\ub798\ub3c4 \uac00\ubccd\uac8c \ubab8\uc5d0 \uc88b\uc740\uac70\n\uc120\ubb3c\ud560\uc218\uc788\uc5b4\uc11c \uc88b\uc544\uc694.\n\uc120\ubb3c\uc6a9\uc774\ub77c \uc9c1\uc811 \uba39\uc5b4\ubcf4\uc9c0\ub294 \ubabb\ud588\uc9c0\ub9cc\n\uc88b\uc740\uc81c\ud488 \uc88b\uc740\ubd84\ub4e4\uaed8 \uc120\ubb3c\ud560\uac8c\uc694.\n\uc218\uace0\ud558\uc138\uc694.\n"},"badges":[{"type":"FOOD","label":"\uc548\uc804\uc2dd\ud488"}]},{"uuid":"762c1e97-2997-41fb-aafe-980ea995a9eb","name":"\u26a1\ufe0f\uce68\ud5a5\uc6d0 \uc2e4\uc18d\ud615 (5ea\/10ea)\ucd94\uc11d\ud560\uc778","category_uuid":"8daa0fc3-d370-46c5-a58b-9a0c71a6ae08","artist_uuid":"bedf0fc3-97ec-467b-8201-8c098366ad5a","artist_name":"\uc628\uc790\ub2f4","is_sale":true,"sale_rate":22,"price_origin":45900,"price_sale":36000,"thumb_image_url":"https:\/\/image.idus.com\/image\/files\/4d7c9d1dcca941aebed543efb6f83528_1080.jpg","is_favorite":false,"review":{"count":20,"rate":5,"contents":"\uc2e4\uc18d\ud615\ub3c4 \ud3ec\uc7a5 \uc5c4\uccad \uae54\ub054\ud558\uace0 \uace0\uae09\uc9c0\ub354\ub77c\uad6c\uc694! \uc774\ubc88\uc5d0\ub294 \uc81c\uac00 \uba39\uc73c\ub824\uace0 \uc0b0\uac74\ub370 \uace7 \uc5c4\ub9c8 \uc0dd\uc2e0\uc774\ub77c \uc625\uc9c4\uace0 \ub2e8\uc9c0\ud615\ub3c4 \ud55c\ubc88 \uc0ac\ubcf4\ub824\uad6c\uc694!\u314e\u314e"},"badges":[{"type":"FOOD","label":"\uc548\uc804\uc2dd\ud488"}]},{"uuid":"45c6bafd-2bfc-47be-988b-cc19353ce0a8","name":"[\ucd94\uc11d\uc120\ubb3c][\ucd94\uc11d\ud560\uc778]\uac10\uc0ac\uc758 \ub9c8\uc74c\uc744 \ub2f4\uc740 \ucc9c\uc5f0\uafc0 A\uc138\ud2b8","category_uuid":"4a8cbc36-3af8-4b75-af01-8795782df80d","artist_uuid":"194a9462-5a9c-4067-83da-b4fe449025c8","artist_name":"\ub77c\uc774\ud50c\ub77c\uc6cc","is_sale":true,"sale_rate":14,"price_origin":69000,"price_sale":59000,"thumb_image_url":"https:\/\/image.idus.com\/image\/files\/d77b6cfabd544fe790017584b264ce7a_1080.png","is_favorite":false,"review":{"count":13,"rate":4.9,"contents":"\uad6c\uc131\ub3c4 \uc88b\uace0 \uace0\uae09\uc838\ubcf4\uc5ec\uc11c \uc815\ub9d0 \uc88b\uc740 \uc120\ubb3c \ub42c\uc2b5\ub2c8\ub2e4.\n\ub2f4\uc5d0 \uc800\ud76c \uc9d1 \uc9c0\uae08 \uc788\ub294 \uafc0 \ub5a8\uc5b4\uc9c0\uba74 \ud29c\ube0c\ud615\uc73c\ub85c \uc800\ub3c4 \uad6c\ub9e4\ud560\ub824\uad6c\uc694. \u314e\u314e\u314e\n\uc88b\uc740 \uc81c\ud488 \uac10\uc0ac\ud558\uace0, \ubc88\ucc3d\ud558\uc138\uc694! (--)(__)(--)"},"badges":[{"type":"DELIVERY","label":"\ubb34\ub8cc\ubc30\uc1a1"},{"type":"FRESH","label":"\uc2e0\uc120\uc2dd\ud488"}]}],
        pageType: 'recent',
    }
});
vuepack.create(vueComponents);

(function () {
    var Logger = vuepack.externals.IdusLog.Logger;
    var PageName = vuepack.externals.IdusLog.PageName;
    Logger.sendPageView(PageName.RecentViewed);
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
		<!-- 푸터 -->
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
	<jsp:include page="footer.jsp"></jsp:include>
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
