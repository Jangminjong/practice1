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
<title>아이디어스 | 인기 작품</title>
<meta name="theme-color" content="#ffffff" />
<link rel="apple-touch-icon" sizes="384x384"
	href="resources/images/app-icon/icon_300.png">
<link rel="manifest" href="/manifest.json">
<script>
            if ('serviceWorker' in navigator) {
                window.addEventListener('load', function () {
                    navigator
                        .serviceWorker
                        .register('/sw.js')
                        .then(function (registration) {
                            // Registration was successful
                            console.log(
                                'ServiceWorker registration successful with scope: ',
                                registration.scope
                            );
                        }, function (err) {
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
	content="http://www.idus.com/w/main/popular-category" />
<meta property="og:image"
	content="http://www.idus.com/resources/dist/images/ogimg-idus.png?ver=2.0" />
<link rel="canonical" href="http://www.idus.com/w/main/popular-category" />
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
                console.log(
                    '%cidus',
                    'background-size: contain; background-repeat: no-repeat; background-position: c' +
                            'enter; background-image: url("https://www.idus.com/resources/dist/images/logo.' +
                            'svg"); width: 300px; height: auto; font-size: 90px; color: transparent; backgr' +
                            'ound-color: white;'
                );
                console.log(
                    '%cUnique Lifestyle Guide',
                    'font-weight: bold; color: white; font-size: 15px;'
                );
                console.log(
                    '%cWant to join %cidus%c? 👉 https://www.notion.so/idus/Join-idus-61e7ca6d4b6d4' +
                            '211a7506e8773cc78fd',
                    'font-size: 10px; color: white;',
                    'background-size: contain; background-repeat: no-repeat; background-position: c' +
                            'enter; background-image: url("https://www.idus.com/resources/dist/images/logo.' +
                            'svg"); width: 300px; height: auto; font-size: 10px; color: transparent; backgr' +
                            'ound-color: white;',
                    'font-size: 10px; color: white;'
                );
            } else {
                // 아닐경우
                console.log(
                    '%cidus',
                    'background-size: contain; background-repeat: no-repeat; background-position: c' +
                            'enter; background-image: url("https://www.idus.com/resources/dist/images/logo.' +
                            'svg"); width: 300px; height: auto; font-size: 90px; color: transparent; backgr' +
                            'ound-color: #515151;'
                );
                console.log(
                    '%cUnique Lifestyle Guide',
                    'font-weight: bold; color: #515151; font-size: 15px;'
                );
                console.log(
                    '%cWant to join %cidus%c? 👉 https://www.notion.so/idus/Join-idus-61e7ca6d4b6d4' +
                            '211a7506e8773cc78fd',
                    'font-size: 10px; color: #515151;',
                    'background-size: contain; background-repeat: no-repeat; background-position: c' +
                            'enter; background-image: url("https://www.idus.com/resources/dist/images/logo.' +
                            'svg"); width: 300px; height: auto; font-size: 10px; color: transparent; backgr' +
                            'ound-color: #515151;',
                    'font-size: 10px; color: #515151;'
                );
            }
        </script>
<link href="resources/css/content.css" rel="stylesheet" />
<link rel="stylesheet" href="resources/css/idus.web.min.css">
<link rel="stylesheet" href="resources/css/vendor.client.min.css">

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
<!-- <script
        src="//cdn.flowplayer.com/releases/native/stable/plugins/cuepoints.min.js"></script>
        -->

<!-- Kakao web SDK -->
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<!-- Signin With Apple -->
<script type="text/javascript"
	src="https://appleid.cdn-apple.com/appleauth/static/jsapi/appleid/1/en_US/appleid.auth.js"></script>

<!-- tracker vendors -->
<script async="async"
	src="https://www.googletagmanager.com/gtag/js?id=AW-775263643"></script>
<script type="text/javascript" charset="UTF-8"
	src="//t1.daumcdn.net/adfit/static/kp.js"></script>
<script type="text/javascript" src="//static.criteo.net/js/ld/ld.js"
	async="true"></script>
<script src="//wcs.naver.net/wcslog.js"></script>

<!-- trackers -->
<script>
            vuepack
                .externals
                .VendorLogger
                .sendLog([
                    {
                        vendorName: 'google_analytics',
                        eventName: 'pageview'
                    }, {
                        vendorName: 'google_ads',
                        eventName: 'page_view'
                    }, {
                        vendorName: 'facebook',
                        eventName: 'PageView'
                    }, {
                        vendorName: 'kakao',
                        eventName: 'pageView'
                    }
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
                window
                    .localStorage
                    .setItem('idus-product-card-img-only', 'false');
            }
            vuepack.createResizeHandler('[data-vue="resizeHandler"]');
            vuepack.createUser('[data-vue="globalUser"]', {
                id: 8001937,
                thumb: 'https://image.idus.com/image/files/d247655ca3e545e89a48a43aa9318b3f.jpg',
                age: 25,
                gender: 'female',
                grade: 1,
                uuid: 'e47f44d5-3f79-42dd-9c1b-1772866c0371',
                isVip: false
            });
            vuepack.createToken('[data-vue="token"]', {
                token: {
                    "token_type": "Bearer",
                    "access_token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6ODAwMTkzNywicGVybWlzc2lvbiI6IlVTR" +
                            "VIiLCJ0eXBlIjoiY2xpZW50IiwidG9rZW5fdHlwZSI6ImFjY2VzcyIsImV4cCI6MTYzOTM5NDQ1Niw" +
                            "ic2FsdCI6IjQ1ZTJlYmRhLTIzNmYtNGEwYS1iZGZjLTQyMTQ3NmYwNjkzMSIsImNyZWF0ZWQiOiIyM" +
                            "DIxLTA5LTEzVDIwOjIwOjU2KzA5OjAwIn0.trDdjo1gUCsi1JIRZCPRiavaw8_niMd6JvUtX2V2VaM",
                    "refresh_token": "$2y$10$dUb5vVWE36FfNV6eWwWNTO0VJsno5gKplAJE8Mag3MhOstcAduHfy",
                    "expired_access_token": "2021-12-13 20:20:56+09:00",
                    "expired_refresh_token": "2022-03-13 20:20:56+09:00"
                },
                userId: 8001937
            });

            /* Idus Log V2 */
            vuepack
                .externals
                .IdusLog
                .Logger
                .setIdentityId('ap-northeast-2:f4e7cf2c-2c34-49ab-95cd-8b054b9e32ea');
            vuepack
                .externals
                .IdusLog
                .Logger
                .initialize({
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
                        appVersion: '1631255393'
                    }
                });
        </script>

	<div class="wrap">
		<jsp:include page="header_goods.jsp"/>
		<div class="dimmed-background"></div>
		<div id="content" class="content" data-gnb-show="true">
			<section class="banner-title" data-image="type1" data-theme="orange">
				<h1>인기작품</h1>
				<p>아이디어스에서 가장 인기있는 작품들이에요.</p>
			</section>

			<div class="inner-w">
				<div class="ui_title--bg">
					<a
						href="/w/main/popular-category/a9970f75-ea75-11e4-8a46-06fd000000c2"
						data-category-uuid="a9970f75-ea75-11e4-8a46-06fd000000c2"
						class="ui_title__txt">디저트</a> <a
						href="/w/main/popular-category/a9970f75-ea75-11e4-8a46-06fd000000c2"
						data-category-uuid="a9970f75-ea75-11e4-8a46-06fd000000c2"
						class="ui_title__txtright">더보기<i class="idus-icon-arrow-right"></i>
					</a>
				</div>
				<div class="ui_grid">
					<ul class="ui_grid__cols--5 ui_grid__cols--m2">
						<li class="ui_grid__item">
							<div class="card-add-icon">
								<em class="icon-num" data-ranking="1">1</em>
								<div class="ui_card">
									<button type="button"
										class="ui_card__overlay btn-ico sp-icon icon-favorite"
										data-name="starred-toolbar" data-starred-type="product"
										data-init="" data-starred=""
										data-target-id="c2681596-227f-4b06-a558-296e711cf910"></button>

									<div class="ui_card__imgcover">
										<a href="/w/product/c2681596-227f-4b06-a558-296e711cf910"
											target="_blank" aria-label="♥추석막차♥ 각인 가죽 용돈봉투 용돈박스 장지갑"
											class="ui_card__img lazy "
											data-product-id="c2681596-227f-4b06-a558-296e711cf910"
											style="background-image: url('https://image.idus.com/image/files/27f8c65fd16947b292f01e7d548c5008_512.jpg')"></a>
									</div>

									<div class="ui_card__info">
										<a href="/w/artist/f0775b5a-35ff-4396-9e6a-2b7084a40210"
											class="ui_card__label" target="_blank">퍼니메이드</a> <a
											href="/w/product/c2681596-227f-4b06-a558-296e711cf910"
											class="ui_card__title"
											data-product-id="c2681596-227f-4b06-a558-296e711cf910"
											target="_blank">♥추석막차♥ 각인 가죽 용돈봉투 용돈박스 장지갑</a>
									</div>

									<div class="ui_card__rating">
										<div class="ui_card__vcenter">
											<div class="ui_rating" data-ui="rating" data-value="5">
												<i class="idus-icon-star-fill"></i> <i
													class="idus-icon-star-fill"></i> <i
													class="idus-icon-star-fill"></i> <i
													class="idus-icon-star-fill"></i> <i
													class="idus-icon-star-fill"></i>
											</div>
										</div>

										<span class="ui_card__comment">색상도 가격도 너무
											마음에들어요~~용돈드릴용도와 주얼리 선물넣는용도로 구매한건데 만족합니다~~다만 배송은 좀 기다려야해요ㅎㅎ</span>
									</div>
								</div>
							</div>
						</li>
						<li class="ui_grid__item">
							<div class="card-add-icon">
								<em class="icon-num" data-ranking="2">2</em>
								<div class="ui_card">
									<button type="button"
										class="ui_card__overlay btn-ico sp-icon icon-favorite"
										data-name="starred-toolbar" data-starred-type="product"
										data-init="" data-starred=""
										data-target-id="47a6c11a-3729-47da-8bce-e3f1be8ddbf9"></button>

									<div class="ui_card__imgcover">
										<a href="/w/product/47a6c11a-3729-47da-8bce-e3f1be8ddbf9"
											target="_blank" aria-label="♥추석막차♥ 각인 애쉬 클래식 머니클립 지갑"
											class="ui_card__img lazy "
											data-product-id="47a6c11a-3729-47da-8bce-e3f1be8ddbf9"
											style="background-image: url('https://image.idus.com/image/files/21a5979b3c144647a34c0cd87d5591d0_512.jpg')"></a>
									</div>

									<div class="ui_card__info">
										<a href="/w/artist/f0775b5a-35ff-4396-9e6a-2b7084a40210"
											class="ui_card__label" target="_blank">퍼니메이드</a> <a
											href="/w/product/47a6c11a-3729-47da-8bce-e3f1be8ddbf9"
											class="ui_card__title"
											data-product-id="47a6c11a-3729-47da-8bce-e3f1be8ddbf9"
											target="_blank">♥추석막차♥ 각인 애쉬 클래식 머니클립 지갑</a>
									</div>

									<div class="ui_card__rating">
										<div class="ui_card__vcenter">
											<div class="ui_rating" data-ui="rating" data-value="5">
												<i class="idus-icon-star-fill"></i> <i
													class="idus-icon-star-fill"></i> <i
													class="idus-icon-star-fill"></i> <i
													class="idus-icon-star-fill"></i> <i
													class="idus-icon-star-fill"></i>
											</div>
										</div>

										<span class="ui_card__comment">만족스럽 마감 디자인 너무 좋습니다</span>
									</div>
								</div>
							</div>
						</li>
						<li class="ui_grid__item">
							<div class="card-add-icon">
								<em class="icon-num" data-ranking="3">3</em>
								<div class="ui_card">
									<button type="button"
										class="ui_card__overlay btn-ico sp-icon icon-favorite"
										data-name="starred-toolbar" data-starred-type="product"
										data-init="" data-starred=""
										data-target-id="2275a743-18ec-4c25-a562-cb9600edeb31"></button>

									<div class="ui_card__imgcover">
										<a href="/w/product/2275a743-18ec-4c25-a562-cb9600edeb31"
											target="_blank" aria-label="♥추석막차♥ 각인 가죽 카드포켓 용돈봉투 골프지갑"
											class="ui_card__img lazy "
											data-product-id="2275a743-18ec-4c25-a562-cb9600edeb31"
											style="background-image: url('https://image.idus.com/image/files/087b0853952a40c9b95b215e3f2fcd24_512.jpg')"></a>
									</div>

									<div class="ui_card__info">
										<a href="/w/artist/f0775b5a-35ff-4396-9e6a-2b7084a40210"
											class="ui_card__label" target="_blank">퍼니메이드</a> <a
											href="/w/product/2275a743-18ec-4c25-a562-cb9600edeb31"
											class="ui_card__title"
											data-product-id="2275a743-18ec-4c25-a562-cb9600edeb31"
											target="_blank">♥추석막차♥ 각인 가죽 카드포켓 용돈봉투 골프지갑</a>
									</div>

									<div class="ui_card__rating">
										<div class="ui_card__vcenter">
											<div class="ui_rating" data-ui="rating" data-value="5">
												<i class="idus-icon-star-fill"></i> <i
													class="idus-icon-star-fill"></i> <i
													class="idus-icon-star-fill"></i> <i
													class="idus-icon-star-fill"></i> <i
													class="idus-icon-star-fill"></i>
											</div>
										</div>

										<span class="ui_card__comment">간단하고 예뻐요!!! 이번 추석에 부모님
											용돈담기에 완전 적당해요!!!!</span>
									</div>
								</div>
							</div>
						</li>
						<li class="ui_grid__item">
							<div class="card-add-icon">
								<em class="icon-num" data-ranking="4">4</em>
								<div class="ui_card">
									<button type="button"
										class="ui_card__overlay btn-ico sp-icon icon-favorite"
										data-name="starred-toolbar" data-starred-type="product"
										data-init="" data-starred=""
										data-target-id="ebe7b82c-0408-4a6e-addd-c6f1c77e44c9"></button>

									<div class="ui_card__imgcover">
										<a href="/w/product/ebe7b82c-0408-4a6e-addd-c6f1c77e44c9"
											target="_blank" aria-label="❤️추석할인❤️마음만은 1억 용돈박스💵추석선물"
											class="ui_card__img lazy "
											data-product-id="ebe7b82c-0408-4a6e-addd-c6f1c77e44c9"
											style="background-image: url('https://image.idus.com/image/files/a52b89bf3a7f4a2b8a53c865faf620b3_512.jpg')"></a>
									</div>

									<div class="ui_card__info">
										<a href="/w/artist/5e9480f2-728b-4972-97d9-f16e4dc064c6"
											class="ui_card__label" target="_blank">졔졔공간</a> <a
											href="/w/product/ebe7b82c-0408-4a6e-addd-c6f1c77e44c9"
											class="ui_card__title"
											data-product-id="ebe7b82c-0408-4a6e-addd-c6f1c77e44c9"
											target="_blank">❤️추석할인❤️마음만은 1억 용돈박스💵추석선물</a>
									</div>

									<div class="ui_card__rating">
										<div class="ui_card__vcenter">
											<div class="ui_rating" data-ui="rating" data-value="5">
												<i class="idus-icon-star-fill"></i> <i
													class="idus-icon-star-fill"></i> <i
													class="idus-icon-star-fill"></i> <i
													class="idus-icon-star-fill"></i> <i
													class="idus-icon-star-fill"></i>
											</div>
										</div>

										<span class="ui_card__comment">추석에 친정 아부지한테 갈수 있을지 없을지
											몰라서 미리 전해드렸는데 엄청 좋아하셔서 잘구매했구나 싶어요 ^^ 덕분에 특별한 추석 선물이 된것같네요 ^^</span>
									</div>
								</div>
							</div>
						</li>
						<li class="ui_grid__item">
							<div class="card-add-icon">
								<em class="icon-num" data-ranking="5">5</em>
								<div class="ui_card">
									<button type="button"
										class="ui_card__overlay btn-ico sp-icon icon-favorite"
										data-name="starred-toolbar" data-starred-type="product"
										data-init="" data-starred=""
										data-target-id="6f3125f0-79dc-4ae9-9b2d-4b0e28eb6dce"></button>

									<div class="ui_card__imgcover">
										<a href="/w/product/6f3125f0-79dc-4ae9-9b2d-4b0e28eb6dce"
											target="_blank" aria-label="😁이니셜 각인 심플 반지갑"
											class="ui_card__img lazy "
											data-product-id="6f3125f0-79dc-4ae9-9b2d-4b0e28eb6dce"
											style="background-image: url('https://image.idus.com/image/files/6fae236c9dd34312bbdd6e387d511550_512.png')"></a>
									</div>

									<div class="ui_card__info">
										<a href="/w/artist/8b9f6148-9ee8-49c9-9bdd-e9d03f79cd96"
											class="ui_card__label" target="_blank">렌토공방</a> <a
											href="/w/product/6f3125f0-79dc-4ae9-9b2d-4b0e28eb6dce"
											class="ui_card__title"
											data-product-id="6f3125f0-79dc-4ae9-9b2d-4b0e28eb6dce"
											target="_blank">😁이니셜 각인 심플 반지갑</a>
									</div>

									<div class="ui_card__rating">
										<div class="ui_card__vcenter">
											<div class="ui_rating" data-ui="rating" data-value="5">
												<i class="idus-icon-star-fill"></i> <i
													class="idus-icon-star-fill"></i> <i
													class="idus-icon-star-fill"></i> <i
													class="idus-icon-star-fill"></i> <i
													class="idus-icon-star-fill"></i>
											</div>
										</div>

										<span class="ui_card__comment">주문하고 거의 하루만에 받았어요! 꼼꼼하게
											하시는지 번거로울텐데 전화주셔서 부정확한거 확인도 해주셔서 ㅜㅜ ... 지갑은 기대했던것보다 너무 예쁜거
											같아요 아버지 생신선물로 산건데 좋아하시더라구요! 촉감도 좋아서 계속 만지게 되네요..</span>
									</div>
								</div>
							</div>
						</li>
						<li class="ui_grid__item">
							<div class="card-add-icon">
								<em class="icon-num" data-ranking="6">6</em>
								<div class="ui_card">
									<button type="button"
										class="ui_card__overlay btn-ico sp-icon icon-favorite"
										data-name="starred-toolbar" data-starred-type="product"
										data-init="" data-starred=""
										data-target-id="eb7e3fc1-3839-46df-9315-0b484395a74d"></button>

									<div class="ui_card__imgcover">
										<a href="/w/product/eb7e3fc1-3839-46df-9315-0b484395a74d"
											target="_blank" aria-label="추석💝무료각인 취업 선물  메탈 스킨 명함카드💌"
											class="ui_card__img lazy "
											data-product-id="eb7e3fc1-3839-46df-9315-0b484395a74d"
											style="background-image: url('https://image.idus.com/image/files/08e7a5b9838544a4be1173bd3929b784_512.jpg')"></a>
									</div>

									<div class="ui_card__info">
										<a href="/w/artist/18411694-6556-4b73-a89e-c9a0ed5cf6b7"
											class="ui_card__label" target="_blank">트렌즈</a> <a
											href="/w/product/eb7e3fc1-3839-46df-9315-0b484395a74d"
											class="ui_card__title"
											data-product-id="eb7e3fc1-3839-46df-9315-0b484395a74d"
											target="_blank">추석💝무료각인 취업 선물 메탈 스킨 명함카드💌</a>
									</div>

									<div class="ui_card__rating">
										<div class="ui_card__vcenter">
											<div class="ui_rating" data-ui="rating" data-value="5">
												<i class="idus-icon-star-fill"></i> <i
													class="idus-icon-star-fill"></i> <i
													class="idus-icon-star-fill"></i> <i
													class="idus-icon-star-fill"></i> <i
													class="idus-icon-star-fill"></i>
											</div>
										</div>

										<span class="ui_card__comment">색상 생각한 그대로 예쁩니다~ 이니셜도~
											맘에 드네요</span>
									</div>
								</div>
							</div>
						</li>
						<li class="ui_grid__item">
							<div class="card-add-icon">
								<em class="icon-num" data-ranking="7">7</em>
								<div class="ui_card">
									<button type="button"
										class="ui_card__overlay btn-ico sp-icon icon-favorite"
										data-name="starred-toolbar" data-starred-type="product"
										data-init="" data-starred=""
										data-target-id="c02eadfc-4417-4f62-a7c0-8a664fd3c7b7"></button>

									<div class="ui_card__imgcover">
										<a href="/w/product/c02eadfc-4417-4f62-a7c0-8a664fd3c7b7"
											target="_blank" aria-label="[무료배송] 손뜨개 튤립 카드지갑"
											class="ui_card__img lazy "
											data-product-id="c02eadfc-4417-4f62-a7c0-8a664fd3c7b7"
											style="background-image: url('https://image.idus.com/image/files/9cfa0c44fcf64809883a8e3dc5c32568_512.jpg')"></a>
									</div>

									<div class="ui_card__info">
										<a href="/w/artist/bb866d12-638b-415b-acba-97c67f88c050"
											class="ui_card__label" target="_blank">니팅앤유</a> <a
											href="/w/product/c02eadfc-4417-4f62-a7c0-8a664fd3c7b7"
											class="ui_card__title"
											data-product-id="c02eadfc-4417-4f62-a7c0-8a664fd3c7b7"
											target="_blank">[무료배송] 손뜨개 튤립 카드지갑</a>
									</div>

									<div class="ui_card__rating">
										<div class="ui_card__vcenter">
											<div class="ui_rating" data-ui="rating" data-value="5">
												<i class="idus-icon-star-fill"></i> <i
													class="idus-icon-star-fill"></i> <i
													class="idus-icon-star-fill"></i> <i
													class="idus-icon-star-fill"></i> <i
													class="idus-icon-star-fill"></i>
											</div>
										</div>

										<span class="ui_card__comment">왜안사나요? 고민하지마세요 완전
											고퀄리티에요❤️ 잘쓸게요 작가님~~ 오링 추가 추천드립니다</span>
									</div>
								</div>
							</div>
						</li>
						<li class="ui_grid__item">
							<div class="card-add-icon">
								<em class="icon-num" data-ranking="8">8</em>
								<div class="ui_card">
									<button type="button"
										class="ui_card__overlay btn-ico sp-icon icon-favorite"
										data-name="starred-toolbar" data-starred-type="product"
										data-init="" data-starred=""
										data-target-id="b1f5c622-416d-4efc-a650-10df349717bc"></button>

									<div class="ui_card__imgcover">
										<a href="/w/product/b1f5c622-416d-4efc-a650-10df349717bc"
											target="_blank" aria-label="생일 선물!!!💕카드지갑"
											class="ui_card__img lazy "
											data-product-id="b1f5c622-416d-4efc-a650-10df349717bc"
											style="background-image: url('https://image.idus.com/image/files/cc142e610c5847418de19ae95afb030d_512.jpg')"></a>
									</div>

									<div class="ui_card__info">
										<a href="/w/artist/c688b4e3-c9f4-49e6-bc9b-8867ac43f778"
											class="ui_card__label" target="_blank">촘촘</a> <a
											href="/w/product/b1f5c622-416d-4efc-a650-10df349717bc"
											class="ui_card__title"
											data-product-id="b1f5c622-416d-4efc-a650-10df349717bc"
											target="_blank">생일 선물!!!💕카드지갑</a>
									</div>

									<div class="ui_card__rating">
										<div class="ui_card__vcenter">
											<div class="ui_rating" data-ui="rating" data-value="5">
												<i class="idus-icon-star-fill"></i> <i
													class="idus-icon-star-fill"></i> <i
													class="idus-icon-star-fill"></i> <i
													class="idus-icon-star-fill"></i> <i
													class="idus-icon-star-fill"></i>
											</div>
										</div>

										<span class="ui_card__comment">정말 너무 귀여워요 ㅠ 친구 생일선물로 줄
											지갑 찾다가 친구 이미지랑 너무 딱 맞아서 바로 주문했습니다! 배송이 정말 빨리와서 놀랬어요!! 그리구 실물은
											뭐...말할것두 없네요 bb 사이즈는 생각보다 조그마했지만 한손에 쏙 들어오는 크기고 작고 귀여운 지갑안에
											포켓이 오밀조밀 다 들어가 있어서 너무 좋네요 ㅠㅠ 친구가 정말 좋아했어요! ㅎㅎ 너무 뿌듯하네요♡ </span>
									</div>
								</div>
							</div>
						</li>
						<li class="ui_grid__item">
							<div class="card-add-icon">
								<em class="icon-num" data-ranking="9">9</em>
								<div class="ui_card">
									<button type="button"
										class="ui_card__overlay btn-ico sp-icon icon-favorite"
										data-name="starred-toolbar" data-starred-type="product"
										data-init="" data-starred=""
										data-target-id="750369bc-0ea2-402b-b054-4a460dd9c219"></button>

									<div class="ui_card__imgcover">
										<a href="/w/product/750369bc-0ea2-402b-b054-4a460dd9c219"
											target="_blank" aria-label="프롬유 이니셜 카드지갑+스트랩set (리뉴얼)"
											class="ui_card__img lazy "
											data-product-id="750369bc-0ea2-402b-b054-4a460dd9c219"
											style="background-image: url('https://image.idus.com/image/files/5f0989ee6fa44d6f843edcc54dafb401_512.jpg')"></a>
									</div>

									<div class="ui_card__info">
										<a href="/w/artist/573f285a-d9c9-460c-970a-896e5785f8c0"
											class="ui_card__label" target="_blank">유센디</a> <a
											href="/w/product/750369bc-0ea2-402b-b054-4a460dd9c219"
											class="ui_card__title"
											data-product-id="750369bc-0ea2-402b-b054-4a460dd9c219"
											target="_blank">프롬유 이니셜 카드지갑+스트랩set (리뉴얼)</a>
									</div>

									<div class="ui_card__rating">
										<div class="ui_card__vcenter">
											<div class="ui_rating" data-ui="rating" data-value="5">
												<i class="idus-icon-star-fill"></i> <i
													class="idus-icon-star-fill"></i> <i
													class="idus-icon-star-fill"></i> <i
													class="idus-icon-star-fill"></i> <i
													class="idus-icon-star-fill"></i>
											</div>
										</div>

										<span class="ui_card__comment">기대했던만큼 정말 고급스럽고 예뻐서
											만족해요! 내부도 적당히 넉넉해서 활용도가 높을 것 같네용 ㅎㅎ 저렴한 가격에 질 좋은 제품 감사합니다
											!!💜</span>
									</div>
								</div>
							</div>
						</li>
						<li class="ui_grid__item">
							<div class="card-add-icon">
								<em class="icon-num" data-ranking="10">10</em>
								<div class="ui_card">
									<button type="button"
										class="ui_card__overlay btn-ico sp-icon icon-favorite"
										data-name="starred-toolbar" data-starred-type="product"
										data-init="" data-starred=""
										data-target-id="261f21f4-54e5-4533-a92e-aebe4a726a1e"></button>

									<div class="ui_card__imgcover">
										<a href="/w/product/261f21f4-54e5-4533-a92e-aebe4a726a1e"
											target="_blank" aria-label="반달 가죽 지갑"
											class="ui_card__img lazy "
											data-product-id="261f21f4-54e5-4533-a92e-aebe4a726a1e"
											style="background-image: url('https://image.idus.com/image/files/dd686bdb577f4c30943bf83cb905c507_512.jpg')"></a>
									</div>

									<div class="ui_card__info">
										<a href="/w/artist/07251ba9-a008-4833-820f-297e213c7f2e"
											class="ui_card__label" target="_blank">comelyblush</a> <a
											href="/w/product/261f21f4-54e5-4533-a92e-aebe4a726a1e"
											class="ui_card__title"
											data-product-id="261f21f4-54e5-4533-a92e-aebe4a726a1e"
											target="_blank">반달 가죽 지갑</a>
									</div>

									<div class="ui_card__rating">
										<div class="ui_card__vcenter">
											<div class="ui_rating" data-ui="rating" data-value="5">
												<i class="idus-icon-star-fill"></i> <i
													class="idus-icon-star-fill"></i> <i
													class="idus-icon-star-fill"></i> <i
													class="idus-icon-star-fill"></i> <i
													class="idus-icon-star-fill"></i>
											</div>
										</div>

										<span class="ui_card__comment">우연히 인스타에서 보고 한 눈에 반해서
											사이트를 둘러보는데 브라운 컬러도 너무 예쁘고 블랙 컬러도 너무 예뻐서 지금 사용하는 지갑이 브라운 컬러라
											고민 끝에 블랙 컬러를 구매 했습니다 배송이 오래 걸린다고 했는데 저는 막 오래 걸리지 않은 것 같아요 제품도
											너무 예쁘고 무난하지 않고 지폐와 동전을 잘 들고 다닐 것 같아요 그리고 서비스로 엽서와 스티커도 주셨어요..
											감동 🥺 감사합니다 번창하세요 ☺️</span>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<div class="ui_title--bg">
					<a
						href="/w/main/popular-category/a9970f75-ea75-11e4-8a46-06fd000000c2"
						data-category-uuid="a9970f75-ea75-11e4-8a46-06fd000000c2"
						class="ui_title__txt">그 외 먹거리</a> <a
						href="/w/main/popular-category/a9970f75-ea75-11e4-8a46-06fd000000c2"
						data-category-uuid="a9970f75-ea75-11e4-8a46-06fd000000c2"
						class="ui_title__txtright">더보기<i class="idus-icon-arrow-right"></i>
					</a>
				</div>
				<div class="ui_grid">
					<ul class="ui_grid__cols--5 ui_grid__cols--m2">

					</ul>
				</div>
				<div class="ui_title--bg">
					<a
						href="/w/main/popular-category/a9970f75-ea75-11e4-8a46-06fd000000c2"
						data-category-uuid="a9970f75-ea75-11e4-8a46-06fd000000c2"
						class="ui_title__txt">의류</a> <a
						href="/w/main/popular-category/a9970f75-ea75-11e4-8a46-06fd000000c2"
						data-category-uuid="a9970f75-ea75-11e4-8a46-06fd000000c2"
						class="ui_title__txtright">더보기<i class="idus-icon-arrow-right"></i>
					</a>
				</div>
				<div class="ui_grid">
					<ul class="ui_grid__cols--5 ui_grid__cols--m2">

					</ul>
				</div>
				<div class="ui_title--bg">
					<a
						href="/w/main/popular-category/a9970f75-ea75-11e4-8a46-06fd000000c2"
						data-category-uuid="a9970f75-ea75-11e4-8a46-06fd000000c2"
						class="ui_title__txt">지갑</a> <a
						href="/w/main/popular-category/a9970f75-ea75-11e4-8a46-06fd000000c2"
						data-category-uuid="a9970f75-ea75-11e4-8a46-06fd000000c2"
						class="ui_title__txtright">더보기<i class="idus-icon-arrow-right"></i>
					</a>
				</div>
				<div class="ui_grid">
					<ul class="ui_grid__cols--5 ui_grid__cols--m2">

					</ul>
				</div>
				<div class="ui_title--bg">
					<a
						href="/w/main/popular-category/a9970f75-ea75-11e4-8a46-06fd000000c2"
						data-category-uuid="a9970f75-ea75-11e4-8a46-06fd000000c2"
						class="ui_title__txt">가방, 파우치</a> <a
						href="/w/main/popular-category/a9970f75-ea75-11e4-8a46-06fd000000c2"
						data-category-uuid="a9970f75-ea75-11e4-8a46-06fd000000c2"
						class="ui_title__txtright">더보기<i class="idus-icon-arrow-right"></i>
					</a>
				</div>
				<div class="ui_grid">
					<ul class="ui_grid__cols--5 ui_grid__cols--m2">

					</ul>
				</div>
				<div class="ui_title--bg">
					<a
						href="/w/main/popular-category/a9970f75-ea75-11e4-8a46-06fd000000c2"
						data-category-uuid="a9970f75-ea75-11e4-8a46-06fd000000c2"
						class="ui_title__txt">시계</a> <a
						href="/w/main/popular-category/a9970f75-ea75-11e4-8a46-06fd000000c2"
						data-category-uuid="a9970f75-ea75-11e4-8a46-06fd000000c2"
						class="ui_title__txtright">더보기<i class="idus-icon-arrow-right"></i>
					</a>
				</div>
				<div class="ui_grid">
					<ul class="ui_grid__cols--5 ui_grid__cols--m2">

					</ul>
				</div>
				<div class="ui_title--bg">
					<a
						href="/w/main/popular-category/a9970f75-ea75-11e4-8a46-06fd000000c2"
						data-category-uuid="a9970f75-ea75-11e4-8a46-06fd000000c2"
						class="ui_title__txt">수제화</a> <a
						href="/w/main/popular-category/a9970f75-ea75-11e4-8a46-06fd000000c2"
						data-category-uuid="a9970f75-ea75-11e4-8a46-06fd000000c2"
						class="ui_title__txtright">더보기<i class="idus-icon-arrow-right"></i>
					</a>
				</div>
				<div class="ui_grid">
					<ul class="ui_grid__cols--5 ui_grid__cols--m2">

					</ul>
				</div>
				<div class="ui_title--bg">
					<a
						href="/w/main/popular-category/a9970f75-ea75-11e4-8a46-06fd000000c2"
						data-category-uuid="a9970f75-ea75-11e4-8a46-06fd000000c2"
						class="ui_title__txt">육아, 아동</a> <a
						href="/w/main/popular-category/a9970f75-ea75-11e4-8a46-06fd000000c2"
						data-category-uuid="a9970f75-ea75-11e4-8a46-06fd000000c2"
						class="ui_title__txtright">더보기<i class="idus-icon-arrow-right"></i>
					</a>
				</div>
				<div class="ui_grid">
					<ul class="ui_grid__cols--5 ui_grid__cols--m2">

					</ul>
				</div>
				<div class="ui_title--bg">
					<a
						href="/w/main/popular-category/a9970f75-ea75-11e4-8a46-06fd000000c2"
						data-category-uuid="a9970f75-ea75-11e4-8a46-06fd000000c2"
						class="ui_title__txt">악세서리</a> <a
						href="/w/main/popular-category/a9970f75-ea75-11e4-8a46-06fd000000c2"
						data-category-uuid="a9970f75-ea75-11e4-8a46-06fd000000c2"
						class="ui_title__txtright">더보기<i class="idus-icon-arrow-right"></i>
					</a>
				</div>
				<div class="ui_grid">
					<ul class="ui_grid__cols--5 ui_grid__cols--m2">

					</ul>
				</div>
				<div class="ui_title--bg">
					<a
						href="/w/main/popular-category/a9970f75-ea75-11e4-8a46-06fd000000c2"
						data-category-uuid="a9970f75-ea75-11e4-8a46-06fd000000c2"
						class="ui_title__txt">꽃</a> <a
						href="/w/main/popular-category/a9970f75-ea75-11e4-8a46-06fd000000c2"
						data-category-uuid="a9970f75-ea75-11e4-8a46-06fd000000c2"
						class="ui_title__txtright">더보기<i class="idus-icon-arrow-right"></i>
					</a>
				</div>
				<div class="ui_grid">
					<ul class="ui_grid__cols--5 ui_grid__cols--m2">

					</ul>
				</div>
				<div class="ui_title--bg">
					<a
						href="/w/main/popular-category/a9970f75-ea75-11e4-8a46-06fd000000c2"
						data-category-uuid="a9970f75-ea75-11e4-8a46-06fd000000c2"
						class="ui_title__txt">캔들, 디퓨저, 방향제</a> <a
						href="/w/main/popular-category/a9970f75-ea75-11e4-8a46-06fd000000c2"
						data-category-uuid="a9970f75-ea75-11e4-8a46-06fd000000c2"
						class="ui_title__txtright">더보기<i class="idus-icon-arrow-right"></i>
					</a>
				</div>
				<div class="ui_grid">
					<ul class="ui_grid__cols--5 ui_grid__cols--m2">

					</ul>
				</div>
				<div class="ui_title--bg">
					<a
						href="/w/main/popular-category/a9970f75-ea75-11e4-8a46-06fd000000c2"
						data-category-uuid="a9970f75-ea75-11e4-8a46-06fd000000c2"
						class="ui_title__txt">인테리어 소품</a> <a
						href="/w/main/popular-category/a9970f75-ea75-11e4-8a46-06fd000000c2"
						data-category-uuid="a9970f75-ea75-11e4-8a46-06fd000000c2"
						class="ui_title__txtright">더보기<i class="idus-icon-arrow-right"></i>
					</a>
				</div>
				<div class="ui_grid">
					<ul class="ui_grid__cols--5 ui_grid__cols--m2">

					</ul>
				</div>
				<div class="ui_title--bg">
					<a
						href="/w/main/popular-category/a9970f75-ea75-11e4-8a46-06fd000000c2"
						data-category-uuid="a9970f75-ea75-11e4-8a46-06fd000000c2"
						class="ui_title__txt">주방, 생활</a> <a
						href="/w/main/popular-category/a9970f75-ea75-11e4-8a46-06fd000000c2"
						data-category-uuid="a9970f75-ea75-11e4-8a46-06fd000000c2"
						class="ui_title__txtright">더보기<i class="idus-icon-arrow-right"></i>
					</a>
				</div>
				<div class="ui_grid">
					<ul class="ui_grid__cols--5 ui_grid__cols--m2">

					</ul>
				</div>
				<div class="ui_title--bg">
					<a
						href="/w/main/popular-category/a9970f75-ea75-11e4-8a46-06fd000000c2"
						data-category-uuid="a9970f75-ea75-11e4-8a46-06fd000000c2"
						class="ui_title__txt">가구</a> <a
						href="/w/main/popular-category/a9970f75-ea75-11e4-8a46-06fd000000c2"
						data-category-uuid="a9970f75-ea75-11e4-8a46-06fd000000c2"
						class="ui_title__txtright">더보기<i class="idus-icon-arrow-right"></i>
					</a>
				</div>
				<div class="ui_grid">
					<ul class="ui_grid__cols--5 ui_grid__cols--m2">

					</ul>
				</div>
				<div class="ui_title--bg">
					<a
						href="/w/main/popular-category/a9970f75-ea75-11e4-8a46-06fd000000c2"
						data-category-uuid="a9970f75-ea75-11e4-8a46-06fd000000c2"
						class="ui_title__txt">반려동물 용품</a> <a
						href="/w/main/popular-category/a9970f75-ea75-11e4-8a46-06fd000000c2"
						data-category-uuid="a9970f75-ea75-11e4-8a46-06fd000000c2"
						class="ui_title__txtright">더보기<i class="idus-icon-arrow-right"></i>
					</a>
				</div>
				<div class="ui_grid">
					<ul class="ui_grid__cols--5 ui_grid__cols--m2">

					</ul>
				</div>
				<div class="ui_title--bg">
					<a
						href="/w/main/popular-category/a9970f75-ea75-11e4-8a46-06fd000000c2"
						data-category-uuid="a9970f75-ea75-11e4-8a46-06fd000000c2"
						class="ui_title__txt">공예</a> <a
						href="/w/main/popular-category/a9970f75-ea75-11e4-8a46-06fd000000c2"
						data-category-uuid="a9970f75-ea75-11e4-8a46-06fd000000c2"
						class="ui_title__txtright">더보기<i class="idus-icon-arrow-right"></i>
					</a>
				</div>
				<div class="ui_grid">
					<ul class="ui_grid__cols--5 ui_grid__cols--m2">

					</ul>
				</div>
				<div class="ui_title--bg">
					<a
						href="/w/main/popular-category/a9970f75-ea75-11e4-8a46-06fd000000c2"
						data-category-uuid="a9970f75-ea75-11e4-8a46-06fd000000c2"
						class="ui_title__txt">전자기기 관련</a> <a
						href="/w/main/popular-category/a9970f75-ea75-11e4-8a46-06fd000000c2"
						data-category-uuid="a9970f75-ea75-11e4-8a46-06fd000000c2"
						class="ui_title__txtright">더보기<i class="idus-icon-arrow-right"></i>
					</a>
				</div>
				<div class="ui_grid">
					<ul class="ui_grid__cols--5 ui_grid__cols--m2">

					</ul>
				</div>
				<div class="ui_title--bg">
					<a
						href="/w/main/popular-category/a9970f75-ea75-11e4-8a46-06fd000000c2"
						data-category-uuid="a9970f75-ea75-11e4-8a46-06fd000000c2"
						class="ui_title__txt">문구, 팬시</a> <a
						href="/w/main/popular-category/a9970f75-ea75-11e4-8a46-06fd000000c2"
						data-category-uuid="a9970f75-ea75-11e4-8a46-06fd000000c2"
						class="ui_title__txtright">더보기<i class="idus-icon-arrow-right"></i>
					</a>
				</div>
				<div class="ui_grid">
					<ul class="ui_grid__cols--5 ui_grid__cols--m2">

					</ul>
				</div>
				<div class="ui_title--bg">
					<a
						href="/w/main/popular-category/a9970f75-ea75-11e4-8a46-06fd000000c2"
						data-category-uuid="a9970f75-ea75-11e4-8a46-06fd000000c2"
						class="ui_title__txt">뷰티</a> <a
						href="/w/main/popular-category/a9970f75-ea75-11e4-8a46-06fd000000c2"
						data-category-uuid="a9970f75-ea75-11e4-8a46-06fd000000c2"
						class="ui_title__txtright">더보기<i class="idus-icon-arrow-right"></i>
					</a>
				</div>
				<div class="ui_grid">
					<ul class="ui_grid__cols--5 ui_grid__cols--m2">

					</ul>
				</div>
				<div class="ui_title--bg">
					<a
						href="/w/main/popular-category/a9970f75-ea75-11e4-8a46-06fd000000c2"
						data-category-uuid="a9970f75-ea75-11e4-8a46-06fd000000c2"
						class="ui_title__txt">기타</a> <a
						href="/w/main/popular-category/a9970f75-ea75-11e4-8a46-06fd000000c2"
						data-category-uuid="a9970f75-ea75-11e4-8a46-06fd000000c2"
						class="ui_title__txtright">더보기<i class="idus-icon-arrow-right"></i>
					</a>
				</div>
				<div class="ui_grid">
					<ul class="ui_grid__cols--5 ui_grid__cols--m2">

					</ul>
				</div>

			</div>
		</div>

		<script>
                (function () {
                    var Logger = vuepack.externals.IdusLog.Logger;
                    var PageName = vuepack.externals.IdusLog.PageName;
                    Logger.sendPageView(PageName.PopularProducts)
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
                    var newWindow = window.open(url, 'name', 'height=450,width=400');

                    if (window.focus) 
                        newWindow.focus();
                    return false;
                }

                vuepack.create([
                    {
                        selector: '[data-vue="BottomSheet"]',
                        component: 'BottomSheet'
                    }, {
                        selector: '[data-vue="WideBottomSheet"]',
                        component: 'WideBottomSheet'
                    }, {
                        selector: '[data-vue="FooterModal"]',
                        component: 'FooterModal'
                    }, {
                        selector: '[data-vue="ToastPopup"]',
                        component: 'ToastPopup'
                    }, {
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
            (function () {
                var applink = new vuepack
                    .externals
                    .Applink();
                var scheme = applink.locationToAppScheme();

                var isIOS = (
                    navigator.userAgent.match('iPhone') != null || navigator.userAgent.match('iPod') != null || navigator.userAgent.match('iPad') != null
                );

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
            vuepack
                .externals
                .VendorLogger
                .sendLog([
                    {
                        vendorName: 'naver'
                    }
                ]);
        </script>
</body>
</html>