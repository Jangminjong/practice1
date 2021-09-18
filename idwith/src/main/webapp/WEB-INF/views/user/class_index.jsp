<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String emailSplit = (String)session.getAttribute("emailSplit");
%>

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
<title>아이디어스 | 클래스</title>
<meta name="theme-color" content="#ffffff" />

<!-- css -->
<link rel="stylesheet" href="resources/css/content.css" />
<link rel="stylesheet" href="resources/css/vendor.client.min.css" />
<link rel="stylesheet" href="resources/css/idus.web.min.css" />
<link rel="stylesheet" href="resources/css/sp-icon.css" />

<!-- js -->
<script type="text/javascript" src="resources/js/index.js"></script>
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="resources/js/idus.web.min.js"></script>
<script type="text/javascript" src="resources/js/vendor.client.min.js"></script>
<script type="text/javascript" src="resources/js/vuepack.js"></script>

<!-- 파비콘 이미지 설정 -->
<link rel="shortcut icon" type="image/x-icon"
	href="resources/images/title/icon_300.PNG">

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
<meta property="og:url" content="http://idus.com/c" />
<meta property="og:image"
	content="http://idus.com/resources/dist/images/ogimg-idus.png?ver=2.0" />
<link rel="canonical" href="http://idus.com/c" />
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
	href="/resources/dist/css/idus.web.min.css?__v=1631255393">
<link rel="stylesheet"
	href="/resources/dist/css/vendor.client.min.css?__v=1631255393">
<script src="/resources/dist/js/vendor.client.min.js?__v=1631255393"></script>
<script src="/resources/dist/js/vuepack.js?__v=1631255393"></script>

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
            id: 8004804,
            thumb: 'https://image.idus.com/image/files/d247655ca3e545e89a48a43aa9318b3f.jpg',
            age: 0,
            gender: 'none',
            grade: 1,
            uuid: 'e62e192c-a56d-4802-8300-4463a73e4d5d',
            isVip: false        });
        vuepack.createToken('[data-vue="token"]', {
            token: {"token_type":"Bearer","access_token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6ODAwNDgwNCwicGVybWlzc2lvbiI6IlVTRVIiLCJ0eXBlIjoiY2xpZW50IiwidG9rZW5fdHlwZSI6ImFjY2VzcyIsImV4cCI6MTYzOTMxMjAxNCwic2FsdCI6IjkyMzAxZDE5LTkyYTUtNDBiZS04MGQyLTVjYmE4MGYyMGUyMCIsImNyZWF0ZWQiOiIyMDIxLTA5LTEyVDIxOjI2OjU0KzA5OjAwIn0.zb4v8aJCl1l0QqAYyPV9z50pAUf635pZSsPQTuY3txk","refresh_token":"$2y$10$5TmRaDIiraFkjzISlphGguhwJ4sG8XdUZHJRDcp0wkKVTjIiScjQ.","expired_access_token":"2021-12-12 21:26:54+09:00","expired_refresh_token":"2022-03-12 21:26:54+09:00"},
            userId: 8004804        });

        /* Idus Log V2 */
                vuepack.externals.IdusLog.Logger.setIdentityId('ap-northeast-2:a23fa0a1-311b-495e-84f1-604d43fe7299');
                vuepack.externals.IdusLog.Logger.initialize({
            isApp: false,
            region: 'ap-northeast-2',
            identityPoolId: 'ap-northeast-2:f4c028af-cb84-43cc-a8e5-b047d272b323',
            accountId: '773161815152',
            userData: {
                userId: '8004804',
                userAge: '',
                userGrade: '1',
                userGender: 'none'
            },
            appData: {
                env: 'prod',
                appVersion: '1631255393'
            }
        });
        </script>

	<div class="wrap">

		<div id="skip-to-content">
			<a href="#gnb">메뉴목록으로 바로가기</a> <a href="#content">컨텐츠로 바로가기</a>
		</div>

		<jsp:include page="header_class.jsp"/>
		<div class="dimmed-background"></div>
		<script type="text/javascript"
			src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b8f8a6447c4b332f56469b63c9b7a010&libraries=services"></script>

		<div id="content" class="content" data-gnb-show="true"
			data-page="c-main">
			<!-- 메인 -->
			<section id="main_visual">
				<div class="ui-slider style-main" data-ui="slider"
					data-resize="true" data-rolling="false" data-indicator-type="label"
					tabindex="-1"
					style="touch-action: pan-y; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
					<div class="outer-frame">
						<ul class="inner-frame">
							<li class="ui-slide c-banner-mobile" id="ui_slide1"
								style="background: rgb(223, 223, 223); width: 6200px;"
								data-index="0"><a href="/c/showroom/26"> <img
									src="https://image.idus.com/image/files/ec5ec20056ab46388a9c2c1d8cf80c8c.jpg"
									alt="전국 클래스 모음집? 서울 남부 편">
							</a></li>
							<li class="ui-slide c-banner-mobile" id="ui_slide2"
								style="background: rgb(223, 223, 223); width: 6200px;"
								data-index="1"><a href="/c/showroom/44"> <img
									src="https://image.idus.com/image/files/c5eb0e177bb8407db9503ff3f5ad8e7a.jpg"
									alt="전국 클래스 모음집 ?서울 동부 편">
							</a></li>
							<li class="ui-slide c-banner-mobile" id="ui_slide3"
								style="background: rgb(223, 223, 223); width: 6200px;"
								data-index="2"><a href="/c/showroom/45"> <img
									src="https://image.idus.com/image/files/a160243837024748ba701bb76a4c9992.jpg"
									alt="전국 클래스 모음집 ?서울 서부 편">
							</a></li>
							<li class="ui-slide c-banner-mobile" id="ui_slide4"
								style="background: rgb(223, 223, 223); width: 6200px;"
								data-index="3"><a href="/c/showroom/25"> <img
									src="https://image.idus.com/image/files/c7cc4e42dfeb45af886442106bd6e570.jpg"
									alt="전국 클래스 모음집? 서울 북부 편">
							</a></li>
							<li class="ui-slide c-banner-mobile" id="ui_slide5"
								style="background: rgb(223, 223, 223); width: 1303px;"
								data-index="4"><a href="/c/showroom/29"> <img
									src="https://image.idus.com/image/files/297fca2ae5814b5dac2bf02a07c58d1e.jpg"
									alt="전국 클래스 모음집  ?부산 편">
							</a></li>
						</ul>
					</div>
					<fieldset class="ui-control" style="display: block;">
						<button type="button" class="ui-btn prev" aria-label="이전" onclick="prevSlider();">
							<i class="fa fa-chevron-left fa-2x"></i>
						</button>
						<nav class="indicator">
							<span class="ui-paging-current" id="current_page">1</span>/5
						</nav>
						<button type="button" class="ui-btn next" aria-label="다음" onclick="nextSlider();">
							<i class="fa fa-chevron-right fa-2x"></i>
						</button>
					</fieldset>
				</div>
			</section>

			<div class="inner-w">
				<nav class="nav_group">
					<a href="class_category.do" class="nav_group__link"> <img
						src="https://image.idus.com/static/edu/category_craft.png" alt="">
						<span>공예</span>
					</a> <a href="class_category.do" class="nav_group__link"> <img
						src="https://image.idus.com/static/edu/category_cook.png" alt="">
						<span>요리</span>
					</a> <a href="class_category.do" class="nav_group__link"> <img
						src="https://image.idus.com/static/edu/category_art.png" alt="">
						<span>미술</span>
					</a> <a href="class_category.do" class="nav_group__link"> <img
						src="https://image.idus.com/static/edu/category_flower.png" alt="">
						<span>플라워</span>
					</a> <a href="class_category.do" class="nav_group__link"> <img
						src="https://image.idus.com/static/edu/category_beauty.png" alt="">
						<span>뷰티</span>
					</a> <a href="class_category.do" class="nav_group__link"> <img
						src="https://image.idus.com/static/edu/category_etc.png" alt="">
						<span>체험 및 기타</span>
					</a>
				</nav>
			</div>

			<div class="inner-w page-section">
				<div class="ui_title">
					<h2 class="ui_title__txt">
						주변 클래스
						<button data-v-ca1731d8="" type="button"
							class="location-label disabled">
							<i data-v-ca1731d8="" class="idus-icon-location"></i> 서울 마포구
							<!---->
						</button>
					</h2>
					<a href="/c/nearby" class="ui_title__txtright">더보기 &gt;</a>
				</div>
				<div class="ui_grid">
					<ul class="ui_grid__cols--4 ui_grid__cols--m2">
						<li class="ui_grid__item">
							<div class="ui_card--white" data-ui="eduCard"
								data-target-id="5291" data-stats-artist="4496741"
								data-stats-category-depth1="2" data-stats-category-depth2="11"
								data-lazy-loaded="false" data-logging="edu_list_item"
								data-was-processed="true">
								<span class="ui_card__overlay--label">서울 영등포구</span>

								<button type="button"
									class="ui_card__overlay btn-ico sp-icon icon-favorite "
									aria-label="좋아하는 클래스 추가" data-ui="stats-star"
									data-starred-type="edu" data-target-id="5291"
									data-stats-artist="4496741" data-stats-category-depth1="2"
									data-stats-category-depth2="11" data-state=""></button>
								<div class="ui_card__imgcover">
									<a href="class_detail_content.do" target="_blank" class="ui_card__img"
										data-lazy-img="https://image.idus.com/image/files/f910d620bf284ffc818656e36811c1a5_320.png"
										style="background-image: url('https://image.idus.com/image/files/f910d620bf284ffc818656e36811c1a5_320.png');">
									</a>
								</div>
								<div class="ui_card__txtarea">
									<div class="ui_card__info">
										<a href="class_detail_content.do" target="_blank" class="ui_card__label">요리</a>
										<a href="class_detail_content.do" target="_blank" class="ui_card__title"><b>[당산역/선유도역
												티클래스] 밀크티, 집에서도 맛있게 즐겨요! </b></a>
									</div>
									<div class="ui_card__rating">
										<div class="ui_card__vcenter">
											<div class="ui_rating" data-ui="rating" data-value="5">
												<i class="idus-icon-star-fill" data-state="active"></i> <i
													class="idus-icon-star-fill" data-state="active"></i> <i
													class="idus-icon-star-fill" data-state="active"></i> <i
													class="idus-icon-star-fill" data-state="active"></i> <i
													class="idus-icon-star-fill" data-state="active"></i> <em
													class="ui_rating__label">(1)</em>
											</div>
										</div>
									</div>
								</div>
							</div>
						</li>
						<li class="ui_grid__item">
							<div class="ui_card--white" data-ui="eduCard"
								data-target-id="2586" data-stats-artist="4143087"
								data-stats-category-depth1="2" data-stats-category-depth2="9"
								data-lazy-loaded="false" data-logging="edu_list_item"
								data-was-processed="true">
								<span class="ui_card__overlay--label">서울 영등포구</span>

								<button type="button"
									class="ui_card__overlay btn-ico sp-icon icon-favorite "
									aria-label="좋아하는 클래스 추가" data-ui="stats-star"
									data-starred-type="edu" data-target-id="2586"
									data-stats-artist="4143087" data-stats-category-depth1="2"
									data-stats-category-depth2="9" data-state=""></button>
								<div class="ui_card__imgcover">
									<a href="/c/class/2586" target="_blank" class="ui_card__img"
										data-lazy-img="https://image.idus.com/image/files/461fbc37046b4f22a43ccf6a66d1666c_320.jpg"
										style="background-image: url('https://image.idus.com/image/files/461fbc37046b4f22a43ccf6a66d1666c_320.jpg');">
									</a>
								</div>
								<div class="ui_card__txtarea">
									<div class="ui_card__info">
										<a href="/c/class/2586" target="_blank" class="ui_card__label">요리</a>
										<a href="/c/class/2586" target="_blank" class="ui_card__title"><b>[시간협의필수]
												달콤한 향기 가득 앙금플라워 1호 떡케이크 만들기</b></a>
									</div>
									<div class="ui_card__rating">
										<div class="ui_card__vcenter">
											<div class="ui_rating" data-ui="rating" data-value="5">
												<i class="idus-icon-star-fill" data-state="active"></i> <i
													class="idus-icon-star-fill" data-state="active"></i> <i
													class="idus-icon-star-fill" data-state="active"></i> <i
													class="idus-icon-star-fill" data-state="active"></i> <i
													class="idus-icon-star-fill" data-state="active"></i> <em
													class="ui_rating__label">(9)</em>
											</div>
										</div>
									</div>
								</div>
							</div>
						</li>
						<li class="ui_grid__item">
							<div class="ui_card--white" data-ui="eduCard"
								data-target-id="6004" data-stats-artist="5131385"
								data-stats-category-depth1="3" data-stats-category-depth2="20"
								data-lazy-loaded="false" data-logging="edu_list_item"
								data-was-processed="true">
								<span class="ui_card__overlay--label">서울 서대문구</span>

								<button type="button"
									class="ui_card__overlay btn-ico sp-icon icon-favorite "
									aria-label="좋아하는 클래스 추가" data-ui="stats-star"
									data-starred-type="edu" data-target-id="6004"
									data-stats-artist="5131385" data-stats-category-depth1="3"
									data-stats-category-depth2="20" data-state=""></button>
								<div class="ui_card__imgcover">
									<a href="/c/class/6004" target="_blank" class="ui_card__img"
										data-lazy-img="https://image.idus.com/image/files/60b27d202d58440886e16c6e12755eb7_320.png"
										style="background-image: url('https://image.idus.com/image/files/60b27d202d58440886e16c6e12755eb7_320.png');">
									</a>
								</div>
								<div class="ui_card__txtarea">
									<div class="ui_card__info">
										<a href="/c/class/6004" target="_blank" class="ui_card__label">공예</a>
										<a href="/c/class/6004" target="_blank" class="ui_card__title"><b>가죽
												카드지갑 만들기 원데이클래스</b></a>
									</div>
									<div class="ui_card__rating">
										<dl class="ui_card__vcenter">
											<div></div>
										</dl>
									</div>
								</div>
							</div>
						</li>
						<li class="ui_grid__item">
							<div class="ui_card--white" data-ui="eduCard"
								data-target-id="5969" data-stats-artist="528355"
								data-stats-category-depth1="3" data-stats-category-depth2="26"
								data-lazy-loaded="false" data-logging="edu_list_item"
								data-was-processed="true">
								<span class="ui_card__overlay--label">서울 영등포구</span>

								<button type="button"
									class="ui_card__overlay btn-ico sp-icon icon-favorite "
									aria-label="좋아하는 클래스 추가" data-ui="stats-star"
									data-starred-type="edu" data-target-id="5969"
									data-stats-artist="528355" data-stats-category-depth1="3"
									data-stats-category-depth2="26" data-state=""></button>
								<div class="ui_card__imgcover">
									<a href="/c/class/5969" target="_blank" class="ui_card__img"
										data-lazy-img="https://image.idus.com/image/files/565705d0967f47bdaad0b92e538e80e7_320.png"
										style="background-image: url('https://image.idus.com/image/files/565705d0967f47bdaad0b92e538e80e7_320.png');">
									</a>
								</div>
								<div class="ui_card__txtarea">
									<div class="ui_card__info">
										<a href="/c/class/5969" target="_blank" class="ui_card__label">공예</a>
										<a href="/c/class/5969" target="_blank" class="ui_card__title"><b>[영등포]
												식물성오일로 만드는 디자인 천연비누</b></a>
									</div>
									<div class="ui_card__rating">
										<dl class="ui_card__vcenter">
											<div></div>
										</dl>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<a href="/c/nearby" class="ui_btn--large mobile-show">주변 클래스 더보기</a>
			</div>

			<script>
        /**
         * addEvent를 false로 줘서 해당 기능을 메인에서 막는 이유는 메인에서 매번 카카오맵 API 호출 시 API 사용 리미트 이슈가 있기 때문이다.
         * https://backpackr.atlassian.net/browse/ICW-1403?atlOrigin=eyJpIjoiOTQwNDY5MTgxY2Y5NDBhZTlhMjc0NjA3OTczMWE3MDAiLCJwIjoiaiJ9
         */
        vuepack.createLocationLabel('[data-vue="LocationLabel"]', {
            latitude: '37.556727',
            longitude: '126.923531',
            addEvent: false
        });
    </script>

			<div class="inner-w page-section">
				<div class="ui_title">
					<h2 class="ui_title__txt">인기 클래스</h2>
					<a href="/c/popular" class="ui_title__txtright">더보기 &gt;</a>
				</div>
				<div class="ui_grid">
					<ul class="ui_grid__cols--4 ui_grid__cols--m2">
						<li class="ui_grid__item">
							<div class="ui_card--white" data-ui="eduCard"
								data-target-id="789" data-stats-artist="1064389"
								data-stats-category-depth1="3" data-stats-category-depth2="26"
								data-lazy-loaded="false" data-logging="edu_list_item"
								data-was-processed="true">
								<span class="ui_card__overlay--label">서울 마포구</span>

								<button type="button"
									class="ui_card__overlay btn-ico sp-icon icon-favorite "
									aria-label="좋아하는 클래스 추가" data-ui="stats-star"
									data-starred-type="edu" data-target-id="789"
									data-stats-artist="1064389" data-stats-category-depth1="3"
									data-stats-category-depth2="26" data-state=""></button>
								<div class="ui_card__imgcover">
									<a href="/c/class/789" target="_blank" class="ui_card__img"
										data-lazy-img="https://image.idus.com/image/files/e3ab1d4b4fb7490ba0c92763441ccc78_320.jpg"
										style="background-image: url('https://image.idus.com/image/files/e3ab1d4b4fb7490ba0c92763441ccc78_320.jpg');">
									</a>
								</div>
								<div class="ui_card__txtarea">
									<div class="ui_card__info">
										<a href="/c/class/789" target="_blank" class="ui_card__label">공예</a>
										<a href="/c/class/789" target="_blank" class="ui_card__title"><b>나만의
												환상의 레진 유니콘 썬캐쳐 만들기</b></a>
									</div>
									<div class="ui_card__rating">
										<div class="ui_card__vcenter">
											<div class="ui_rating" data-ui="rating" data-value="5">
												<i class="idus-icon-star-fill" data-state="active"></i> <i
													class="idus-icon-star-fill" data-state="active"></i> <i
													class="idus-icon-star-fill" data-state="active"></i> <i
													class="idus-icon-star-fill" data-state="active"></i> <i
													class="idus-icon-star-fill" data-state="active"></i> <em
													class="ui_rating__label">(31)</em>
											</div>
										</div>
									</div>
								</div>
							</div>
						</li>
						<li class="ui_grid__item">
							<div class="ui_card--white" data-ui="eduCard"
								data-target-id="6026" data-stats-artist="1375074"
								data-stats-category-depth1="3" data-stats-category-depth2="26"
								data-lazy-loaded="false" data-logging="edu_list_item"
								data-was-processed="true">
								<span class="ui_card__overlay--label">서울 성북구</span>

								<button type="button"
									class="ui_card__overlay btn-ico sp-icon icon-favorite "
									aria-label="좋아하는 클래스 추가" data-ui="stats-star"
									data-starred-type="edu" data-target-id="6026"
									data-stats-artist="1375074" data-stats-category-depth1="3"
									data-stats-category-depth2="26" data-state=""></button>
								<div class="ui_card__imgcover">
									<a href="/c/class/6026" target="_blank" class="ui_card__img"
										data-lazy-img="https://image.idus.com/image/files/5672843892484a29981a912d8a2b90f3_320.png"
										style="background-image: url('https://image.idus.com/image/files/5672843892484a29981a912d8a2b90f3_320.png');">
									</a>
								</div>
								<div class="ui_card__txtarea">
									<div class="ui_card__info">
										<a href="/c/class/6026" target="_blank" class="ui_card__label">공예</a>
										<a href="/c/class/6026" target="_blank" class="ui_card__title"><b>석고
												테라고 트레이 </b></a>
									</div>
									<div class="ui_card__rating">
										<dl class="ui_card__vcenter">
											<div></div>
										</dl>
									</div>
								</div>
							</div>
						</li>
						<li class="ui_grid__item">
							<div class="ui_card--white" data-ui="eduCard"
								data-target-id="3954" data-stats-artist="2675235"
								data-stats-category-depth1="3" data-stats-category-depth2="19"
								data-lazy-loaded="false" data-logging="edu_list_item"
								data-was-processed="true">
								<span class="ui_card__overlay--label">서울 강서구</span>

								<button type="button"
									class="ui_card__overlay btn-ico sp-icon icon-favorite "
									aria-label="좋아하는 클래스 추가" data-ui="stats-star"
									data-starred-type="edu" data-target-id="3954"
									data-stats-artist="2675235" data-stats-category-depth1="3"
									data-stats-category-depth2="19" data-state=""></button>
								<div class="ui_card__imgcover">
									<a href="/c/class/3954" target="_blank" class="ui_card__img"
										data-lazy-img="https://image.idus.com/image/files/58e9a435469a4bdea66fb8531ba7f06b_320.png"
										style="background-image: url('https://image.idus.com/image/files/58e9a435469a4bdea66fb8531ba7f06b_320.png');">
									</a>
								</div>
								<div class="ui_card__txtarea">
									<div class="ui_card__info">
										<a href="/c/class/3954" target="_blank" class="ui_card__label">공예</a>
										<a href="/c/class/3954" target="_blank" class="ui_card__title"><b>마곡역
												- 마인드리움 마크라메 원데이클래스 도어벨 만들기</b></a>
									</div>
									<div class="ui_card__rating">
										<dl class="ui_card__vcenter">
											<div></div>
										</dl>
									</div>
								</div>
							</div>
						</li>
						<li class="ui_grid__item">
							<div class="ui_card--white" data-ui="eduCard"
								data-target-id="5964" data-stats-artist="1021752"
								data-stats-category-depth1="2" data-stats-category-depth2="10"
								data-lazy-loaded="false" data-logging="edu_list_item"
								data-was-processed="true">
								<span class="ui_card__overlay--label">경기 의왕시</span>

								<button type="button"
									class="ui_card__overlay btn-ico sp-icon icon-favorite "
									aria-label="좋아하는 클래스 추가" data-ui="stats-star"
									data-starred-type="edu" data-target-id="5964"
									data-stats-artist="1021752" data-stats-category-depth1="2"
									data-stats-category-depth2="10" data-state=""></button>
								<div class="ui_card__imgcover">
									<a href="/c/class/5964" target="_blank" class="ui_card__img"
										data-lazy-img="https://image.idus.com/image/files/ac89eb2b5d7541028ec2c2846a0ebf63_320.png"
										style="background-image: url('https://image.idus.com/image/files/ac89eb2b5d7541028ec2c2846a0ebf63_320.png');">
									</a>
								</div>
								<div class="ui_card__txtarea">
									<div class="ui_card__info">
										<a href="/c/class/5964" target="_blank" class="ui_card__label">요리</a>
										<a href="/c/class/5964" target="_blank" class="ui_card__title"><b>올
												추석은 직접 만든 앙금플라워 쿠키!!!</b></a>
									</div>
									<div class="ui_card__rating">
										<dl class="ui_card__vcenter">
											<div></div>
										</dl>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>

				<a href="/c/popular" class="ui_btn--large mobile-show">인기 클래스
					더보기</a>
			</div>

			<div class="inner-w page-section">
				<div class="ui_title">
					<h2 class="ui_title__txt">신규 클래스</h2>
					<a href="/c/latest" class="ui_title__txtright">더보기 &gt;</a>
				</div>
				<div class="ui_grid">
					<ul class="ui_grid__cols--4 ui_grid__cols--m2">
						<li class="ui_grid__item">
							<div class="ui_card--white" data-ui="eduCard"
								data-target-id="6103" data-stats-artist="1047348"
								data-stats-category-depth1="2" data-stats-category-depth2="10"
								data-lazy-loaded="false" data-logging="edu_list_item"
								data-was-processed="true">
								<span class="ui_card__overlay--label">경기 안산시</span>

								<button type="button"
									class="ui_card__overlay btn-ico sp-icon icon-favorite "
									aria-label="좋아하는 클래스 추가" data-ui="stats-star"
									data-starred-type="edu" data-target-id="6103"
									data-stats-artist="1047348" data-stats-category-depth1="2"
									data-stats-category-depth2="10" data-state=""></button>
								<div class="ui_card__imgcover">
									<a href="/c/class/6103" target="_blank" class="ui_card__img"
										data-lazy-img="https://image.idus.com/image/files/0dab998dd4fa440cbb22dbaa0feb3350_320.jpg"
										style="background-image: url('https://image.idus.com/image/files/0dab998dd4fa440cbb22dbaa0feb3350_320.jpg');">
									</a>
								</div>
								<div class="ui_card__txtarea">
									<div class="ui_card__info">
										<a href="/c/class/6103" target="_blank" class="ui_card__label">요리</a>
										<a href="/c/class/6103" target="_blank" class="ui_card__title"><b>마카롱
												체험 ㅣ 부담없이 만들 수 있는 원데이 클래스 </b></a>
									</div>
									<div class="ui_card__rating">
										<dl class="ui_card__vcenter">
											<div></div>
										</dl>
									</div>
								</div>
							</div>
						</li>
						<li class="ui_grid__item">
							<div class="ui_card--white" data-ui="eduCard"
								data-target-id="6117" data-stats-artist="4323606"
								data-stats-category-depth1="3" data-stats-category-depth2="25"
								data-lazy-loaded="false" data-logging="edu_list_item"
								data-was-processed="true">
								<span class="ui_card__overlay--label">서울 송파구</span>

								<button type="button"
									class="ui_card__overlay btn-ico sp-icon icon-favorite "
									aria-label="좋아하는 클래스 추가" data-ui="stats-star"
									data-starred-type="edu" data-target-id="6117"
									data-stats-artist="4323606" data-stats-category-depth1="3"
									data-stats-category-depth2="25" data-state=""></button>
								<div class="ui_card__imgcover">
									<a href="/c/class/6117" target="_blank" class="ui_card__img"
										data-lazy-img="https://image.idus.com/image/files/14b362c379a64853baa43327e785d5d6_320.jpg"
										style="background-image: url('https://image.idus.com/image/files/14b362c379a64853baa43327e785d5d6_320.jpg');">
									</a>
								</div>
								<div class="ui_card__txtarea">
									<div class="ui_card__info">
										<a href="/c/class/6117" target="_blank" class="ui_card__label">공예</a>
										<a href="/c/class/6117" target="_blank" class="ui_card__title"><b>티타임의
												계절, 로맨틱한 찻잔 만들기</b></a>
									</div>
									<div class="ui_card__rating">
										<dl class="ui_card__vcenter">
											<div></div>
										</dl>
									</div>
								</div>
							</div>
						</li>
						<li class="ui_grid__item">
							<div class="ui_card--white" data-ui="eduCard"
								data-target-id="6115" data-stats-artist="535368"
								data-stats-category-depth1="3" data-stats-category-depth2="23"
								data-lazy-loaded="false" data-logging="edu_list_item"
								data-was-processed="true">
								<span class="ui_card__overlay--label">대전 중구</span>

								<button type="button"
									class="ui_card__overlay btn-ico sp-icon icon-favorite "
									aria-label="좋아하는 클래스 추가" data-ui="stats-star"
									data-starred-type="edu" data-target-id="6115"
									data-stats-artist="535368" data-stats-category-depth1="3"
									data-stats-category-depth2="23" data-state=""></button>
								<div class="ui_card__imgcover">
									<a href="/c/class/6115" target="_blank" class="ui_card__img"
										data-lazy-img="https://image.idus.com/image/files/b72131ef3db646aba30f1008ebd70ee6_320.png"
										style="background-image: url('https://image.idus.com/image/files/b72131ef3db646aba30f1008ebd70ee6_320.png');">
									</a>
								</div>
								<div class="ui_card__txtarea">
									<div class="ui_card__info">
										<a href="/c/class/6115" target="_blank" class="ui_card__label">공예</a>
										<a href="/c/class/6115" target="_blank" class="ui_card__title"><b>대전
												유리공예 스테인드글라스 인센스홀더 만들기</b></a>
									</div>
									<div class="ui_card__rating">
										<dl class="ui_card__vcenter">
											<div></div>
										</dl>
									</div>
								</div>
							</div>
						</li>
						<li class="ui_grid__item">
							<div class="ui_card--white" data-ui="eduCard"
								data-target-id="6116" data-stats-artist="535368"
								data-stats-category-depth1="3" data-stats-category-depth2="23"
								data-lazy-loaded="false" data-logging="edu_list_item"
								data-was-processed="true">
								<span class="ui_card__overlay--label">대전 중구</span>

								<button type="button"
									class="ui_card__overlay btn-ico sp-icon icon-favorite "
									aria-label="좋아하는 클래스 추가" data-ui="stats-star"
									data-starred-type="edu" data-target-id="6116"
									data-stats-artist="535368" data-stats-category-depth1="3"
									data-stats-category-depth2="23" data-state=""></button>
								<div class="ui_card__imgcover">
									<a href="/c/class/6116" target="_blank" class="ui_card__img"
										data-lazy-img="https://image.idus.com/image/files/952e98e76dd84530992556e5158ce150_320.png"
										style="background-image: url('https://image.idus.com/image/files/952e98e76dd84530992556e5158ce150_320.png');">
									</a>
								</div>
								<div class="ui_card__txtarea">
									<div class="ui_card__info">
										<a href="/c/class/6116" target="_blank" class="ui_card__label">공예</a>
										<a href="/c/class/6116" target="_blank" class="ui_card__title"><b>대전
												유리공예 스테인드글라스 썬캐쳐 만들기</b></a>
									</div>
									<div class="ui_card__rating">
										<dl class="ui_card__vcenter">
											<div></div>
										</dl>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<a href="/c/latest" class="ui_btn--large mobile-show">신규 클래스 더보기</a>
			</div>
		</div>

		<script>
    (function () {
        var Logger = vuepack.externals.IdusLog.Logger;
        var PageName = vuepack.externals.IdusLog.PageName;
        var LogLabel = vuepack.externals.IdusLog.LogLabel;
        Logger.sendPageView(PageName.ClassHome, {
            logLabel: LogLabel.EduOff
        })
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
		<jsp:include page="footer.jsp"/>
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
