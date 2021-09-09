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

<link rel="stylesheet" href="resources/css/search.css" />
<link rel="shortcut icon" type="image/x-icon"
	href="resources/images/title/icon_300.PNG">

<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="naver-site-verification"
	content="a8c6e5633b597db7b48d05e4a7d247011f6794ec" />
<meta name="google-site-verification"
	content="NnaPRa-jWBb5SnBiwjEZkMqm1pFS2Y8mVdUG0nJqO4c" />
<title>'추석선물' | 아이디어스 - 핸드메이드, 수공예, 수제 먹거리</title>
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
<meta name="keywords" content="핸드메이드, 수공예, 수제 먹거리, 추석선물" />
<meta property="fb:app_id" content="1410666675867984" />
<meta name="description"
	content="[추석선물] 작품이 검색되었습니다. 더 많은 핸드메이드, 수공예 작품, 수제 먹거리등을 아이디어스에 확인하세요." />
<meta property="og:title" content="핸드메이드 라이프스타일 플랫폼, 아이디어스" />
<meta property="og:type" content="website" />
<meta property="og:description"
	content="[추석선물] 작품이 검색되었습니다. 더 많은 핸드메이드, 수공예 작품, 수제 먹거리등을 아이디어스에 확인하세요." />
<meta property="og:url"
	content="http://www.idus.com/search?word=%EC%B6%94%EC%84%9D%EC%84%A0%EB%AC%BC&keyword_channel=placeholder" />
<meta property="og:image"
	content="http://www.idus.com/resources/dist/images/ogimg-idus.png?ver=2.0" />
<link rel="canonical"
	href="http://www.idus.com/search?word=%EC%B6%94%EC%84%9D%EC%84%A0%EB%AC%BC&keyword_channel=placeholder" />
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
				.setIdentityId('ap-northeast-2:054d0102-6b2b-4a2e-9ebf-8770f099fbb4');
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
						appVersion : '1631078629'
					}
				});
	</script>

	<div class="wrap">

		<div class="dimmed-background"></div>
		<div data-vue="search-detail">
			<div class="content" id="content" page-data="2dep-list"
				sticky-container class="SearchDetail content">
				<div data-v-52b422fc="" class="inner-w mobile-full hide-gnb">
					<div data-v-343e6b1c="" data-v-52b422fc=""
						class="RelatedKeywordList">
						<div data-v-974e102a="" data-v-343e6b1c=""
							class="KeywordSuggestion">
							<div data-v-974e102a="" class="KeywordSuggestion__title">연관</div>
							<div data-v-974e102a="" class="KeywordSuggestion__divider"></div>
							<div data-v-974e102a="" class="KeywordSuggestion__suggestion">
								<a data-v-343e6b1c="" data-v-974e102a=""
									href="/search?word=%EC%B6%94%EC%84%9D%EC%84%A0%EB%AC%BC%EC%84%B8%ED%8A%B8&amp;keyword_channel=relate"
									class="RelatedKeywordList__keyword"> 추석선물세트 </a><a
									data-v-343e6b1c="" data-v-974e102a=""
									href="/search?word=%EC%96%B4%EB%A6%B0%EC%9D%B4%EC%A7%91%20%EC%B6%94%EC%84%9D%EC%84%A0%EB%AC%BC&amp;keyword_channel=relate"
									class="RelatedKeywordList__keyword"> 어린이집 추석선물 </a><a
									data-v-343e6b1c="" data-v-974e102a=""
									href="/search?word=%EB%AA%85%EC%A0%88%20%EC%84%A0%EB%AC%BC&amp;keyword_channel=relate"
									class="RelatedKeywordList__keyword"> 명절 선물 </a><a
									data-v-343e6b1c="" data-v-974e102a=""
									href="/search?word=%EC%B6%94%EC%84%9D%EC%9A%A9%EB%8F%88%EB%B4%89%ED%88%AC&amp;keyword_channel=relate"
									class="RelatedKeywordList__keyword"> 추석용돈봉투 </a><a
									data-v-343e6b1c="" data-v-974e102a=""
									href="/search?word=z%ED%94%8C%EB%A6%BD3%20%EC%BC%80%EC%9D%B4%EC%8A%A4&amp;keyword_channel=relate"
									class="RelatedKeywordList__keyword"> z플립3 케이스 </a><a
									data-v-343e6b1c="" data-v-974e102a=""
									href="/search?word=%EB%B6%80%EB%AA%A8%EB%8B%98%20%EC%B6%94%EC%84%9D%EC%84%A0%EB%AC%BC&amp;keyword_channel=relate"
									class="RelatedKeywordList__keyword"> 부모님 추석선물 </a><a
									data-v-343e6b1c="" data-v-974e102a=""
									href="/search?word=%EC%88%98%EC%A0%9C%EC%B2%AD&amp;keyword_channel=relate"
									class="RelatedKeywordList__keyword"> 수제청 </a><a
									data-v-343e6b1c="" data-v-974e102a=""
									href="/search?word=%EC%B6%94%EC%84%9D%EB%B4%89%ED%88%AC&amp;keyword_channel=relate"
									class="RelatedKeywordList__keyword"> 추석봉투 </a><a
									data-v-343e6b1c="" data-v-974e102a=""
									href="/search?word=%EC%84%A0%EC%83%9D%EB%8B%98%EC%B6%94%EC%84%9D%EC%84%A0%EB%AC%BC&amp;keyword_channel=relate"
									class="RelatedKeywordList__keyword"> 선생님추석선물 </a><a
									data-v-343e6b1c="" data-v-974e102a=""
									href="/search?word=%EA%B2%AC%EA%B3%BC%EB%A5%98%EB%B0%94&amp;keyword_channel=relate"
									class="RelatedKeywordList__keyword"> 견과류바 </a>
							</div>
						</div>
					</div>
					<!---->
					<nav data-v-52b422fc="" class="ui_tab_group">
						<span href="/search?word=추석선물&amp;keyword_channel=placeholder"
							class="ui_tab_group__tab active"><span class="txt-desktop"><em>"추석선물"</em>
								에 대한 작품 검색결과 </span> </span> <a
							href="/c/search?word=추석선물&amp;keyword_channel=placeholder"
							class="ui_tab_group__tab"><span class="txt-desktop"><em>"추석선물"</em>
								에 대한 클래스 검색결과 </span></a>
					</nav>
					<div data-v-52b422fc="" class="SearchFilter">
						<div class="ProductFilter">
							<div data-v-6d7c9b5f="" class="DesktopProductFilter">
								<div data-v-6d7c9b5f=""
									class="DesktopProductFilter__filterGroup">
									<div data-v-6d7c9b5f=""
										class="DesktopProductFilter__filterColumn">
										<!---->
										<div data-v-17b4f712="" data-v-6d7c9b5f=""
											class="DesktopRadioFilterRow">
											<div data-v-17b4f712="" class="DesktopRadioFilterRow__head">
												배송비
												<!---->
											</div>
											<div data-v-17b4f712="" class="DesktopRadioFilterRow__body">
												<div data-v-17b4f712="" class="DesktopRadioFilterRow__item">
													<label data-v-8af738a8="" data-v-17b4f712="" type="radio"
														class="BaseRadio"><input data-v-8af738a8=""
														type="radio" name="" autocomplete="off"
														class="BaseRadio__button idus-icon-radio"> <span
														data-v-8af738a8="" class="BaseRadio__label"> </span></label>
													<!---->
													<span data-v-17b4f712=""
														class="DesktopRadioFilterRow__label">전체</span>
												</div>
												<div data-v-17b4f712="" class="DesktopRadioFilterRow__item">
													<label data-v-8af738a8="" data-v-17b4f712="" type="radio"
														class="BaseRadio"><input data-v-8af738a8=""
														type="radio" name="is_delivery_free=1" autocomplete="off"
														class="BaseRadio__button idus-icon-radio"> <span
														data-v-8af738a8="" class="BaseRadio__label"> </span></label>
													<div data-v-cac2c13c="" data-v-17b4f712=""
														class="FilterBadge">
														<div data-v-2f2bc7d4="" data-v-cac2c13c=""
															class="badge badge-delivery">무료배송</div>
													</div>
													<span data-v-17b4f712=""
														class="DesktopRadioFilterRow__label">만 보기</span>
												</div>
												<div data-v-17b4f712="" class="DesktopRadioFilterRow__item">
													<label data-v-8af738a8="" data-v-17b4f712="" type="radio"
														class="BaseRadio"><input data-v-8af738a8=""
														type="radio"
														name="artist_delivery_style=0&amp;artist_delivery_fee__lte=2500"
														autocomplete="off"
														class="BaseRadio__button idus-icon-radio"> <span
														data-v-8af738a8="" class="BaseRadio__label"> </span></label>
													<!---->
													<span data-v-17b4f712=""
														class="DesktopRadioFilterRow__label">2,500원 이하만 보기</span>
												</div>
												<div data-v-17b4f712="" class="DesktopRadioFilterRow__item">
													<label data-v-8af738a8="" data-v-17b4f712="" type="radio"
														class="BaseRadio"><input data-v-8af738a8=""
														type="radio"
														name="artist_delivery_style=0&amp;artist_delivery_fee__lte=3000"
														autocomplete="off"
														class="BaseRadio__button idus-icon-radio"> <span
														data-v-8af738a8="" class="BaseRadio__label"> </span></label>
													<!---->
													<span data-v-17b4f712=""
														class="DesktopRadioFilterRow__label">3,000원 이하만 보기</span>
												</div>
											</div>
										</div>
										<!---->
										<div data-v-17b4f712="" data-v-6d7c9b5f=""
											class="DesktopRadioFilterRow">
											<div data-v-17b4f712="" class="DesktopRadioFilterRow__head">
												할인율
												<!---->
											</div>
											<div data-v-17b4f712="" class="DesktopRadioFilterRow__body">
												<div data-v-17b4f712="" class="DesktopRadioFilterRow__item">
													<label data-v-8af738a8="" data-v-17b4f712="" type="radio"
														class="BaseRadio"><input data-v-8af738a8=""
														type="radio" name="" autocomplete="off"
														class="BaseRadio__button idus-icon-radio"> <span
														data-v-8af738a8="" class="BaseRadio__label"> </span></label>
													<!---->
													<span data-v-17b4f712=""
														class="DesktopRadioFilterRow__label">전체</span>
												</div>
												<div data-v-17b4f712="" class="DesktopRadioFilterRow__item">
													<label data-v-8af738a8="" data-v-17b4f712="" type="radio"
														class="BaseRadio"><input data-v-8af738a8=""
														type="radio" name="sale_state=1&amp;sale_rate__gte=50"
														autocomplete="off"
														class="BaseRadio__button idus-icon-radio"> <span
														data-v-8af738a8="" class="BaseRadio__label"> </span></label>
													<!---->
													<span data-v-17b4f712=""
														class="DesktopRadioFilterRow__label">50% 이상 할인</span>
												</div>
												<div data-v-17b4f712="" class="DesktopRadioFilterRow__item">
													<label data-v-8af738a8="" data-v-17b4f712="" type="radio"
														class="BaseRadio"><input data-v-8af738a8=""
														type="radio" name="sale_state=1&amp;sale_rate__gte=30"
														autocomplete="off"
														class="BaseRadio__button idus-icon-radio"> <span
														data-v-8af738a8="" class="BaseRadio__label"> </span></label>
													<!---->
													<span data-v-17b4f712=""
														class="DesktopRadioFilterRow__label">30% 이상 할인</span>
												</div>
												<div data-v-17b4f712="" class="DesktopRadioFilterRow__item">
													<label data-v-8af738a8="" data-v-17b4f712="" type="radio"
														class="BaseRadio"><input data-v-8af738a8=""
														type="radio" name="sale_state=1&amp;sale_rate__gte=20"
														autocomplete="off"
														class="BaseRadio__button idus-icon-radio"> <span
														data-v-8af738a8="" class="BaseRadio__label"> </span></label>
													<!---->
													<span data-v-17b4f712=""
														class="DesktopRadioFilterRow__label">20% 이상 할인</span>
												</div>
												<div data-v-17b4f712="" class="DesktopRadioFilterRow__item">
													<label data-v-8af738a8="" data-v-17b4f712="" type="radio"
														class="BaseRadio"><input data-v-8af738a8=""
														type="radio" name="sale_state=1&amp;sale_rate__gte=10"
														autocomplete="off"
														class="BaseRadio__button idus-icon-radio"> <span
														data-v-8af738a8="" class="BaseRadio__label"> </span></label>
													<!---->
													<span data-v-17b4f712=""
														class="DesktopRadioFilterRow__label">10% 이상 할인</span>
												</div>
											</div>
										</div>
										<div data-v-238ccfae="" data-v-6d7c9b5f=""
											class="DesktopCheckboxFilterRow">
											<div data-v-238ccfae=""
												class="DesktopCheckboxFilterRow__head">
												가격대
												<!---->
											</div>
											<div data-v-238ccfae=""
												class="DesktopCheckboxFilterRow__body">
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp" value="price__lte=15000">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">1만
																5천원 이하</span>
														</div>
													</div>
												</div>
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp"
																	value="price__gte=15000&amp;price__lte=30000">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">1만
																5천원 ~ 3만원</span>
														</div>
													</div>
												</div>
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp"
																	value="price__gte=30000&amp;price__lte=45000">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">3만원
																~ 4만 5천원</span>
														</div>
													</div>
												</div>
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp"
																	value="price__gte=45000&amp;price__lte=60000">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">4만
																5천원 ~ 6만원</span>
														</div>
													</div>
												</div>
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp" value="price__gte=60000">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">6만원
																이상</span>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!---->
										<div data-v-238ccfae="" data-v-6d7c9b5f=""
											class="DesktopCheckboxFilterRow">
											<div data-v-238ccfae=""
												class="DesktopCheckboxFilterRow__head">
												카테고리
												<button data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__extend_button">+
												</button>
											</div>
											<div data-v-238ccfae=""
												class="DesktopCheckboxFilterRow__body">
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp"
																	value="category_uuid=5c6bc7d4-7760-4702-b63f-7f29eca479e3">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">디저트,
																베이커리, 떡</span>
														</div>
													</div>
												</div>
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp"
																	value="category_uuid=613ac4c3-df73-4a0f-b3dd-362849dabb2a">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">음료
																(커피, 차 등)</span>
														</div>
													</div>
												</div>
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp"
																	value="category_uuid=fa340e0b-f4b1-4aba-8d9c-a29086d5a8a4">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">전통주</span>
														</div>
													</div>
												</div>
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp"
																	value="category_uuid=b3f853b9-333d-4eec-ad04-e4604d9d501b">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">수제
																반찬</span>
														</div>
													</div>
												</div>
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp"
																	value="category_uuid=8daa0fc3-d370-46c5-a58b-9a0c71a6ae08">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">그
																외 수제먹거리</span>
														</div>
													</div>
												</div>
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp"
																	value="category_uuid=4a8cbc36-3af8-4b75-af01-8795782df80d">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">농축수산물</span>
														</div>
													</div>
												</div>
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp"
																	value="category_uuid=d9e8a56d-ae4c-4020-b043-9417fe26fbec">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">의류,
																홈웨어</span>
														</div>
													</div>
												</div>
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp"
																	value="category_uuid=1616d42d-ea77-11e4-88d5-06530c0000b4">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">패션잡화</span>
														</div>
													</div>
												</div>
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp"
																	value="category_uuid=a9970f75-ea75-11e4-8a46-06fd000000c2">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">지갑
																(지폐,카드,동전,명함)</span>
														</div>
													</div>
												</div>
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp"
																	value="category_uuid=bc5f4be5-c6bc-11e3-8b03-06fd000000c2">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">가방,
																파우치</span>
														</div>
													</div>
												</div>
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp"
																	value="category_uuid=bc6a17ba-ea75-11e4-8878-06a6fa0000b9">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">시계</span>
														</div>
													</div>
												</div>
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp"
																	value="category_uuid=8b4bf95d-c6bc-11e3-8577-06f4fe0000b5">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">섬유,
																퀼트</span>
														</div>
													</div>
												</div>
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp"
																	value="category_uuid=1fc3c71a-88d6-4333-a09e-178e85bb742f">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">남성
																수제화</span>
														</div>
													</div>
												</div>
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp"
																	value="category_uuid=65477a55-7f4f-4a0f-9b05-dcaa271a8385">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">여성
																수제화</span>
														</div>
													</div>
												</div>
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp"
																	value="category_uuid=0556009b-f9c6-11e3-8363-06fd000000c2">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">육아,
																아동</span>
														</div>
													</div>
												</div>
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp"
																	value="category_uuid=387867a4-0da4-11e4-873e-06f4fe0000b5">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">반지</span>
														</div>
													</div>
												</div>
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp"
																	value="category_uuid=ac599662-0cdf-11e4-85f1-06fd000000c2">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">귀걸이</span>
														</div>
													</div>
												</div>
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp"
																	value="category_uuid=aef50134-0cdf-11e4-8182-06530c0000b4">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">목걸이</span>
														</div>
													</div>
												</div>
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp"
																	value="category_uuid=b12b42eb-0cdf-11e4-85f1-06fd000000c2">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">팔찌</span>
														</div>
													</div>
												</div>
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp"
																	value="category_uuid=f0475fb1-c6bb-11e3-954e-06a6fa0000b9">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">그
																외 액세서리</span>
														</div>
													</div>
												</div>
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp"
																	value="category_uuid=bec56c93-ea75-11e4-8a46-06fd000000c2">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">꽃
																(생화, 드라이, 다육 등)</span>
														</div>
													</div>
												</div>
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp"
																	value="category_uuid=976cfb97-c6bc-11e3-83fc-06530c0000b4">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">캔들,
																디퓨저, 방향제</span>
														</div>
													</div>
												</div>
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp"
																	value="category_uuid=66299878-c6bc-11e3-8577-06f4fe0000b5">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">인테리어
																소품</span>
														</div>
													</div>
												</div>
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp"
																	value="category_uuid=c5010d79-e666-11e3-9874-06fd000000c2">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">도자기</span>
														</div>
													</div>
												</div>
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp"
																	value="category_uuid=30b3ae0f-c6bc-11e3-8577-06f4fe0000b5">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">주방,
																생활</span>
														</div>
													</div>
												</div>
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp"
																	value="category_uuid=e866743b-0a33-4030-80c1-3a1ec943b0e4">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">가구</span>
														</div>
													</div>
												</div>
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp"
																	value="category_uuid=fa8c9d8e-c6bb-11e3-8577-06f4fe0000b5">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">인형,
																장난감</span>
														</div>
													</div>
												</div>
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp"
																	value="category_uuid=f6335574-c6bb-11e3-83fc-06530c0000b4">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">반려동물
																용품</span>
														</div>
													</div>
												</div>
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp"
																	value="category_uuid=002e6aef-c6bc-11e3-8b03-06fd000000c2">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">파인아트</span>
														</div>
													</div>
												</div>
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp"
																	value="category_uuid=9f4b9a69-c6bc-11e3-954e-06a6fa0000b9">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">공예</span>
														</div>
													</div>
												</div>
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp"
																	value="category_uuid=b3b31a1b-ea75-11e4-8a46-06fd000000c2">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">휴대폰
																케이스</span>
														</div>
													</div>
												</div>
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp"
																	value="category_uuid=a923ab08-0643-11e4-98ba-06f4fe0000b5">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">전자기기
																관련</span>
														</div>
													</div>
												</div>
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp"
																	value="category_uuid=b00844bc-c6bc-11e3-8577-06f4fe0000b5">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">문구,
																팬시</span>
														</div>
													</div>
												</div>
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp"
																	value="category_uuid=e3ba45b3-c165-11e3-8788-06fd000000c2">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">페인팅,
																캐리커쳐, 캘리</span>
														</div>
													</div>
												</div>
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp"
																	value="category_uuid=c468e7db-ea75-11e4-b903-06f4fe0000b5">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">향수,
																화장품, 뷰티</span>
														</div>
													</div>
												</div>
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp"
																	value="category_uuid=be3cf842-ea74-11e4-8878-06a6fa0000b9">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">비누,
																천연비누</span>
														</div>
													</div>
												</div>
												<div data-v-238ccfae=""
													class="DesktopCheckboxFilterRow__item">
													<div data-v-1a8254c6="" data-v-238ccfae=""
														class="filter_item">
														<div data-v-5e27c696="" data-v-1a8254c6=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp"
																	value="category_uuid=4094e656-c6bf-11e3-83fc-06530c0000b4">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">기타</span>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!---->
									</div>
									<!---->
								</div>
								<div data-v-6d7c9b5f=""
									class="DesktopProductFilter__filterBottom">
									<button data-v-08fc3558="" data-v-6d7c9b5f=""
										class="only-img-button">
										<div data-v-08fc3558="" class="only-img-button-box">
											<div data-v-5e27c696="" data-v-08fc3558="" class="checkbox">
												<div data-v-5e27c696="" class="input-checkbox">
													<input data-v-5e27c696="" id="" type="checkbox"
														autocomplete="off" class="bp" value="false">
												</div>
												<!---->
											</div>
											<p data-v-08fc3558=""
												class="only-img-button-text margin-left ">이미지만 볼래요</p>
										</div>
									</button>
									<!---->
									<div data-v-6d7c9b5f=""
										class="DesktopProductFilter__sortSelector">
										<div data-v-4dfbe33c="" data-v-6d7c9b5f=""
											class="SingleSelector">
											<div data-v-4b6162e7="" data-v-4dfbe33c=""
												class="BaseSelector">
												<select data-v-4b6162e7="" class="BaseSelector__selector"></select>
												<button data-v-4b6162e7="" type="button"
													class="BaseSelector__triggerButton BaseSelector__triggerButton--active">
													<span data-v-4b6162e7="" class="BaseSelector__selectedItem">인기순</span>
													<i data-v-4b6162e7="" class="ui-icon fa fa-chevron-down"></i>
												</button>
												<ul data-v-4b6162e7=""
													class="BaseSelector__optionItemList BaseSelector__optionItemList--active">
													<li data-v-4b6162e7="" value="sort=-POPULAR"
														class="BaseSelector__optionItem">인기순</li>
													<li data-v-4b6162e7="" value="sort=-CREATED_AT"
														class="BaseSelector__optionItem">최신순 (NEW)</li>
													<li data-v-4b6162e7="" value="sort=-FAVORITE"
														class="BaseSelector__optionItem">찜 많은 순</li>
													<li data-v-4b6162e7="" value="sort=-REVIEW"
														class="BaseSelector__optionItem">구매후기가 많은 순</li>
													<li data-v-4b6162e7="" value="sort=-PURCHASE"
														class="BaseSelector__optionItem">판매수가 많은 순</li>
													<li data-v-4b6162e7="" value="sort=-SALE_RATE"
														class="BaseSelector__optionItem">할인 높은순</li>
													<li data-v-4b6162e7="" value="sort=PRICE"
														class="BaseSelector__optionItem">낮은 가격순</li>
													<li data-v-4b6162e7="" value="sort=-PRICE"
														class="BaseSelector__optionItem">높은 가격순</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>




				<div class="inner-w">
					<div data-v-d3c44402="" class="search-result-list">
						<div data-v-d3c44402="" class="search-result-list__item--grid">
							<div data-v-d3c44402="" class="search-product-card">
								<div data-v-796f1feb="" data-v-74fd357a=""
									class="base-card card--vertical product">
									<a data-v-796f1feb=""
										href="/w/product/ebfbb51c-9048-40af-9409-7a09807a5a3a?keyword_channel=placeholder&amp;search_word=추석선물"
										target="_blank"><div data-v-796f1feb=""
											class="card-thumb-cover">
											<div data-v-74fd357a="" data-v-796f1feb=""
												id="thumb-ebfbb51c-9048-40af-9409-7a09807a5a3a"
												class="product-thumb-img"
												style="background-image: url(resources/images/detail/artist01.PNG);"></div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-bookmark">
												<button data-v-488f5f82="" data-v-74fd357a=""
													aria-label="찜하기" class="full-button" data-v-796f1feb=""
													style="width: 24px; height: 24px;">
													<i data-v-74fd357a="" data-v-488f5f82=""
														class="sp-icon icon-favorite"></i>
												</button>
											</div>
										</div>
										<div data-v-796f1feb="" class="card-info product-info">
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__artist-name">달달한놀이터</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__name">추석선물❤ 정성을 담은 고급디저트 ♥구움찰떡♥</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__price">
												<span data-v-74fd357a="" data-v-796f1feb=""
													class="sale-rate"> 20% </span> <span data-v-74fd357a=""
													data-v-796f1feb="" class="price-sale"> 14,400 <span
													data-v-74fd357a="" data-v-796f1feb=""
													style="font-size: 14px;">원</span></span>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="price-origin--before-sale">
													<del data-v-74fd357a="" data-v-796f1feb="">18,000원</del>
												</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__badge-group" style="margin-top: 12px;">
												<div data-v-2f2bc7d4="" data-v-74fd357a=""
													class="badge badge-food" data-v-796f1feb="">안전식품</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__review">
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-rating">
													<span data-v-ef94db98="" data-v-74fd357a=""
														data-value="4.8" class="ui_rating fr" data-v-796f1feb=""><i
														data-v-ef94db98="" data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i></span> <span data-v-74fd357a=""
														data-v-796f1feb="" class="review-count"> (223) </span>
												</div>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-comment">
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__badge">후기</div>
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__contents">너무 이쁘고 맛은 아직 모르지만
														감사히 잘받았습니당 배송 빨라서 정말 놀랐구요ㅎㅎ 많이 파세요~~</div>
												</div>
											</div>
										</div></a>
								</div>
							</div>
						</div>
						<div data-v-d3c44402="" class="search-result-list__item--grid">
							<div data-v-d3c44402="" class="search-product-card">
								<div data-v-796f1feb="" data-v-74fd357a=""
									class="base-card card--vertical product">
									<a data-v-796f1feb=""
										href="/w/product/d88d7f29-a5df-456b-9521-3ed2445e7ce7?keyword_channel=placeholder&amp;search_word=추석선물"
										target="_blank"><div data-v-796f1feb=""
											class="card-thumb-cover">
											<div data-v-74fd357a="" data-v-796f1feb=""
												id="thumb-d88d7f29-a5df-456b-9521-3ed2445e7ce7"
												class="product-thumb-img"
												style="background-image: url(&quot;https://image.idus.com/image/files/41653ed9c66f48f8964deeed6175bcae_512.jpg&quot;);"></div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-bookmark">
												<button data-v-488f5f82="" data-v-74fd357a=""
													aria-label="찜하기" class="full-button" data-v-796f1feb=""
													style="width: 24px; height: 24px;">
													<i data-v-74fd357a="" data-v-488f5f82=""
														class="sp-icon icon-favorite"></i>
												</button>
											</div>
										</div>
										<div data-v-796f1feb="" class="card-info product-info">
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__artist-name">후후케이크</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__name">🌸추석선물🌸플라워+견과타르트</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__price">
												<span data-v-74fd357a="" data-v-796f1feb=""
													class="sale-rate"> 3% </span> <span data-v-74fd357a=""
													data-v-796f1feb="" class="price-sale"> 29,000 <span
													data-v-74fd357a="" data-v-796f1feb=""
													style="font-size: 14px;">원</span></span>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="price-origin--before-sale">
													<del data-v-74fd357a="" data-v-796f1feb="">30,000원</del>
												</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__badge-group" style="margin-top: 12px;">
												<div data-v-2f2bc7d4="" data-v-74fd357a=""
													class="badge badge-food" data-v-796f1feb="">안전식품</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__review">
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-rating">
													<span data-v-ef94db98="" data-v-74fd357a=""
														data-value="4.9" class="ui_rating fr" data-v-796f1feb=""><i
														data-v-ef94db98="" data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i></span> <span data-v-74fd357a=""
														data-v-796f1feb="" class="review-count"> (117) </span>
												</div>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-comment">
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__badge">후기</div>
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__contents">넘 맛있고 이뻤어요♡♡ 다만 카드가
														조금 아쉽네요~ 낱장이라고 생각안했는데~ 그부분 빼곤 다 만족했답니다^^</div>
												</div>
											</div>
										</div></a>
								</div>
							</div>
						</div>
						<div data-v-d3c44402="" class="search-result-list__item--grid">
							<div data-v-d3c44402="" class="search-product-card">
								<div data-v-796f1feb="" data-v-74fd357a=""
									class="base-card card--vertical product">
									<a data-v-796f1feb=""
										href="/w/product/e4f52656-827e-4e07-aae1-1729b5d3573e?keyword_channel=placeholder&amp;search_word=추석선물"
										target="_blank"><div data-v-796f1feb=""
											class="card-thumb-cover">
											<div data-v-74fd357a="" data-v-796f1feb=""
												id="thumb-e4f52656-827e-4e07-aae1-1729b5d3573e"
												class="product-thumb-img"
												style="background-image: url(&quot;https://image.idus.com/image/files/42038760d3fa4b41aef6aa54f2094be2_512.jpg&quot;);"></div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-bookmark">
												<button data-v-488f5f82="" data-v-74fd357a=""
													aria-label="찜하기" class="full-button" data-v-796f1feb=""
													style="width: 24px; height: 24px;">
													<i data-v-74fd357a="" data-v-488f5f82=""
														class="sp-icon icon-favorite"></i>
												</button>
											</div>
										</div>
										<div data-v-796f1feb="" class="card-info product-info">
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__artist-name">디저트미닛</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__name">추석선물 머랭쿠키🥮👀🥮</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__price">
												<span data-v-74fd357a="" data-v-796f1feb=""
													class="sale-rate"> 33% </span> <span data-v-74fd357a=""
													data-v-796f1feb="" class="price-sale"> 10,000 <span
													data-v-74fd357a="" data-v-796f1feb=""
													style="font-size: 14px;">원</span></span>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="price-origin--before-sale">
													<del data-v-74fd357a="" data-v-796f1feb="">15,000원</del>
												</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__badge-group" style="margin-top: 12px;">
												<div data-v-2f2bc7d4="" data-v-74fd357a=""
													class="badge badge-food" data-v-796f1feb="">안전식품</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__review">
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-rating">
													<span data-v-ef94db98="" data-v-74fd357a=""
														data-value="4.9" class="ui_rating fr" data-v-796f1feb=""><i
														data-v-ef94db98="" data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i></span> <span data-v-74fd357a=""
														data-v-796f1feb="" class="review-count"> (97) </span>
												</div>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-comment">
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__badge">후기</div>
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__contents">너무나 예쁜 작품, 맛도 좋아요!
													</div>
												</div>
											</div>
										</div></a>
								</div>
							</div>
						</div>
						<div data-v-d3c44402="" class="search-result-list__item--grid">
							<div data-v-d3c44402="" class="search-product-card">
								<div data-v-796f1feb="" data-v-74fd357a=""
									class="base-card card--vertical product">
									<a data-v-796f1feb=""
										href="/w/product/3c224e5d-c755-4ebc-a312-16d41cf9daff?keyword_channel=placeholder&amp;search_word=추석선물"
										target="_blank"><div data-v-796f1feb=""
											class="card-thumb-cover">
											<div data-v-74fd357a="" data-v-796f1feb=""
												id="thumb-3c224e5d-c755-4ebc-a312-16d41cf9daff"
												class="product-thumb-img"
												style="background-image: url(&quot;https://image.idus.com/image/files/4faa4e834a08495db57d64590ec1f6ea_512.jpg&quot;);"></div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-bookmark">
												<button data-v-488f5f82="" data-v-74fd357a=""
													aria-label="찜하기" class="full-button" data-v-796f1feb=""
													style="width: 24px; height: 24px;">
													<i data-v-74fd357a="" data-v-488f5f82=""
														class="sp-icon icon-favorite"></i>
												</button>
											</div>
										</div>
										<div data-v-796f1feb="" class="card-info product-info">
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__artist-name">모이내츄럴</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__name">(마감)추석아이싱쿠키</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__price">
												<!---->
												<span data-v-74fd357a="" data-v-796f1feb=""
													class="price-origin"> 11,000 <span
													data-v-74fd357a="" data-v-796f1feb=""
													style="font-size: 14px;">원</span></span>
												<!---->
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__badge-group" style="margin-top: 8px;">
												<div data-v-2f2bc7d4="" data-v-74fd357a=""
													class="badge badge-food" data-v-796f1feb="">안전식품</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__review">
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-rating">
													<span data-v-ef94db98="" data-v-74fd357a=""
														data-value="4.6" class="ui_rating fr" data-v-796f1feb=""><i
														data-v-ef94db98="" data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i></span> <span data-v-74fd357a=""
														data-v-796f1feb="" class="review-count"> (30) </span>
												</div>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-comment">
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__badge">후기</div>
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__contents">선물용 아이싱쿠키로는 완전
														최고!에요!!! 블로그 글도 올렸지만 ㅎㅎㅎㅎ 정말 너무너무 예쁘고 맛있고&gt;_&lt; 늘 감사합니다
														작가님 ㅎㅎㅎ</div>
												</div>
											</div>
										</div></a>
								</div>
							</div>
						</div>
						<div data-v-d3c44402="" class="search-result-list__item--grid">
							<div data-v-d3c44402="" class="search-product-card">
								<div data-v-796f1feb="" data-v-74fd357a=""
									class="base-card card--vertical product">
									<a data-v-796f1feb=""
										href="/w/product/2ae4363a-62d6-43c9-9e15-902199d9f0d1?keyword_channel=placeholder&amp;search_word=추석선물"
										target="_blank"><div data-v-796f1feb=""
											class="card-thumb-cover">
											<div data-v-74fd357a="" data-v-796f1feb=""
												id="thumb-2ae4363a-62d6-43c9-9e15-902199d9f0d1"
												class="product-thumb-img"
												style="background-image: url(&quot;https://image.idus.com/image/files/09f86ca194f94cb9973a5283698802bd_512.jpg&quot;);"></div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-bookmark">
												<button data-v-488f5f82="" data-v-74fd357a=""
													aria-label="찜하기" class="full-button" data-v-796f1feb=""
													style="width: 24px; height: 24px;">
													<i data-v-74fd357a="" data-v-488f5f82=""
														class="sp-icon icon-favorite"></i>
												</button>
											</div>
										</div>
										<div data-v-796f1feb="" class="card-info product-info">
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__artist-name">선데이스위츠</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__name">추석❤수제 보석양갱 20구 선물세트</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__price">
												<!---->
												<span data-v-74fd357a="" data-v-796f1feb=""
													class="price-origin"> 33,000 <span
													data-v-74fd357a="" data-v-796f1feb=""
													style="font-size: 14px;">원</span></span>
												<!---->
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__badge-group" style="margin-top: 8px;">
												<div data-v-2f2bc7d4="" data-v-74fd357a=""
													class="badge badge-food" data-v-796f1feb="">안전식품</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__review">
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-rating">
													<span data-v-ef94db98="" data-v-74fd357a=""
														data-value="4.8" class="ui_rating fr" data-v-796f1feb=""><i
														data-v-ef94db98="" data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i></span> <span data-v-74fd357a=""
														data-v-796f1feb="" class="review-count"> (1146) </span>
												</div>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-comment">
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__badge">후기</div>
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__contents">할머니께서 맛있다고 좋아하셨어요~~
														감사합니다</div>
												</div>
											</div>
										</div></a>
								</div>
							</div>
						</div>
						<div data-v-d3c44402="" class="search-result-list__item--grid">
							<div data-v-d3c44402="" class="search-product-card">
								<div data-v-796f1feb="" data-v-74fd357a=""
									class="base-card card--vertical product">
									<a data-v-796f1feb=""
										href="/w/product/6bd8b6f0-b2be-43bc-8d38-052e04996b5a?keyword_channel=placeholder&amp;search_word=추석선물"
										target="_blank"><div data-v-796f1feb=""
											class="card-thumb-cover">
											<div data-v-74fd357a="" data-v-796f1feb=""
												id="thumb-6bd8b6f0-b2be-43bc-8d38-052e04996b5a"
												class="product-thumb-img"
												style="background-image: url(&quot;https://image.idus.com/image/files/3df6af53c12b447e9eeeaf9384dd2b2d_512.jpg&quot;);"></div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-bookmark">
												<button data-v-488f5f82="" data-v-74fd357a=""
													aria-label="찜하기" class="full-button" data-v-796f1feb=""
													style="width: 24px; height: 24px;">
													<i data-v-74fd357a="" data-v-488f5f82=""
														class="sp-icon icon-favorite"></i>
												</button>
											</div>
										</div>
										<div data-v-796f1feb="" class="card-info product-info">
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__artist-name">2대가함께하는 망개떡 창원생과방</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__name">[추석]쫄깃달콤❤수제 곶감망개떡❤(이벤트중)</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__price">
												<!---->
												<span data-v-74fd357a="" data-v-796f1feb=""
													class="price-origin"> 16,000 <span
													data-v-74fd357a="" data-v-796f1feb=""
													style="font-size: 14px;">원</span></span>
												<!---->
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__badge-group" style="margin-top: 8px;">
												<div data-v-2f2bc7d4="" data-v-74fd357a=""
													class="badge badge-food" data-v-796f1feb="">안전식품</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__review">
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-rating">
													<span data-v-ef94db98="" data-v-74fd357a=""
														data-value="4.7" class="ui_rating fr" data-v-796f1feb=""><i
														data-v-ef94db98="" data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i></span> <span data-v-74fd357a=""
														data-v-796f1feb="" class="review-count"> (273) </span>
												</div>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-comment">
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__badge">후기</div>
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__contents">너무 이쁘고 배송 완전 빨라요❤️
														어제 아침 주문 하구 오늘 낮에 바로 받았어요 냉동 보관이라 추석때 포장 해서 드리려고요 재구매 의사
														완전 있습니당 😊😊 감사해요</div>
												</div>
											</div>
										</div></a>
								</div>
							</div>
						</div>
						<div data-v-d3c44402="" class="search-result-list__item--grid">
							<div data-v-d3c44402="" class="search-product-card">
								<div data-v-796f1feb="" data-v-74fd357a=""
									class="base-card card--vertical product">
									<a data-v-796f1feb=""
										href="/w/product/82fb28c8-7e6a-444f-b375-19fa10f464ae?keyword_channel=placeholder&amp;search_word=추석선물"
										target="_blank"><div data-v-796f1feb=""
											class="card-thumb-cover">
											<div data-v-74fd357a="" data-v-796f1feb=""
												id="thumb-82fb28c8-7e6a-444f-b375-19fa10f464ae"
												class="product-thumb-img"
												style="background-image: url(&quot;https://image.idus.com/image/files/16923dfff30f4e42a2dd964ce3ce75f7_512.jpg&quot;);"></div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-bookmark">
												<button data-v-488f5f82="" data-v-74fd357a=""
													aria-label="찜하기" class="full-button" data-v-796f1feb=""
													style="width: 24px; height: 24px;">
													<i data-v-74fd357a="" data-v-488f5f82=""
														class="sp-icon icon-favorite"></i>
												</button>
											</div>
										</div>
										<div data-v-796f1feb="" class="card-info product-info">
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__artist-name">시루아네</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__name">[추석할인] 시루아네 카스테라앙절미(40구)</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__price">
												<span data-v-74fd357a="" data-v-796f1feb=""
													class="sale-rate"> 16% </span> <span data-v-74fd357a=""
													data-v-796f1feb="" class="price-sale"> 16,800 <span
													data-v-74fd357a="" data-v-796f1feb=""
													style="font-size: 14px;">원</span></span>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="price-origin--before-sale">
													<del data-v-74fd357a="" data-v-796f1feb="">20,000원</del>
												</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__badge-group" style="margin-top: 12px;">
												<div data-v-2f2bc7d4="" data-v-74fd357a=""
													class="badge badge-food" data-v-796f1feb="">안전식품</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__review">
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-rating">
													<span data-v-ef94db98="" data-v-74fd357a=""
														data-value="4.8" class="ui_rating fr" data-v-796f1feb=""><i
														data-v-ef94db98="" data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i></span> <span data-v-74fd357a=""
														data-v-796f1feb="" class="review-count"> (2479) </span>
												</div>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-comment">
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__badge">후기</div>
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__contents">너무너무 달아요..</div>
												</div>
											</div>
										</div></a>
								</div>
							</div>
						</div>
						<div data-v-d3c44402="" class="search-result-list__item--grid">
							<div data-v-d3c44402="" class="search-product-card">
								<div data-v-796f1feb="" data-v-74fd357a=""
									class="base-card card--vertical product">
									<a data-v-796f1feb=""
										href="/w/product/2746c188-5fdf-4d97-a89c-1e0962338d78?keyword_channel=placeholder&amp;search_word=추석선물"
										target="_blank"><div data-v-796f1feb=""
											class="card-thumb-cover">
											<div data-v-74fd357a="" data-v-796f1feb=""
												id="thumb-2746c188-5fdf-4d97-a89c-1e0962338d78"
												class="product-thumb-img"
												style="background-image: url(&quot;https://image.idus.com/image/files/f5d73465d9cd42bdbd44c882c879f28e_512.jpg&quot;);"></div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-bookmark">
												<button data-v-488f5f82="" data-v-74fd357a=""
													aria-label="찜하기" class="full-button" data-v-796f1feb=""
													style="width: 24px; height: 24px;">
													<i data-v-74fd357a="" data-v-488f5f82=""
														class="sp-icon icon-favorite"></i>
												</button>
											</div>
										</div>
										<div data-v-796f1feb="" class="card-info product-info">
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__artist-name">나비한스푼</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__name">🍁추석선물🍁 12가지 맛 수제 양갱</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__price">
												<!---->
												<span data-v-74fd357a="" data-v-796f1feb=""
													class="price-origin"> 21,500 <span
													data-v-74fd357a="" data-v-796f1feb=""
													style="font-size: 14px;">원</span></span>
												<!---->
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__badge-group" style="margin-top: 8px;">
												<div data-v-2f2bc7d4="" data-v-74fd357a=""
													class="badge badge-food" data-v-796f1feb="">안전식품</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__review">
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-rating">
													<span data-v-ef94db98="" data-v-74fd357a=""
														data-value="4.9" class="ui_rating fr" data-v-796f1feb=""><i
														data-v-ef94db98="" data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i></span> <span data-v-74fd357a=""
														data-v-796f1feb="" class="review-count"> (665) </span>
												</div>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-comment">
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__badge">후기</div>
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__contents">선물용으로 좋아요 센스있다
														칭찬들었답니다~^^</div>
												</div>
											</div>
										</div></a>
								</div>
							</div>
						</div>
						<div data-v-d3c44402="" class="search-result-list__item--full">
							<div data-v-79ef34f6="" data-v-d3c44402=""
								class="showroom-search-list">
								<div data-v-79ef34f6="" class="header">
									<a data-v-79ef34f6=""
										href="/w/showroom/1715?keyword_channel=placeholder&amp;search_word=추석선물"
										target="_blank"><h2 data-v-c9688b12="" data-v-79ef34f6=""
											class="search-title">실속 있는 추석 선물 🎁 답례용</h2></a> <a
										data-v-79ef34f6=""
										href="/w/showroom/1715?keyword_channel=placeholder&amp;search_word=추석선물"
										target="_blank" class="more-link">더 보기</a>
								</div>
								<div data-v-79ef34f6="" class="carousel-wrap">
									<div data-v-d48b6b90="" data-v-79ef34f6=""
										class="carousel-slider">
										<div data-v-25581d7d="" data-v-d48b6b90=""
											class="carousel-container">
											<div data-v-25581d7d="" class="sliding-area">
												<div data-v-25581d7d="" class="carousel"
													style="width: 100%; margin-left: 0%;">
													<!---->
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/07169e26-4f53-4aa8-8dbe-96e78e4f2c5f?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/8683d6a32343498b89079552d8e7cc2e_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">추석선물❤️콜드브루보다
																			고농축인"에스프레소"커피원액</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">29%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 16,800원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/ec375a22-41bf-4d30-87dd-5c6fe4dd2290?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/bfc163df7b434e95b24cb3f04d2f7bd2_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">[추석]💜평일당일출고💜2대가함께
																			수제 망개떡</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="price-origin">10,000원</span>
																			<!---->
																			<!---->
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/6bd8b6f0-b2be-43bc-8d38-052e04996b5a?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/3df6af53c12b447e9eeeaf9384dd2b2d_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">[추석]쫄깃달콤❤수제
																			곶감망개떡❤(이벤트중)</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="price-origin">16,000원</span>
																			<!---->
																			<!---->
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/75076f81-3f5d-46e0-b8fc-6d4bb08ab3f0?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/2f94089328434b47b713a6ff43102b1e_512.png&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">추석 명절 선물 고급
																			🌸수제꽃약과🥮 달구벌한과</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">7%</span> <span data-v-bb115d94=""
																				data-v-796f1feb="" class="price-sale"> 7,000원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/c2ac421f-3c22-4e4b-9049-904a407c1568?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/b4405feb1c1649e4891a7573b94a0391_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">[추석 선물 추천 🌝] 3가지 맛
																			믹스 쿠키 세트</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="price-origin">18,500원</span>
																			<!---->
																			<!---->
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/72bbe6bf-8ff0-4419-be90-b1e0df855cce?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/acb8c94505444396807c25e2887fdd77_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">국산 도라지정과 감사선물세트💜간편한
																			추석선물 예약🎁</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">37%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 15,900원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/8171e885-fb95-4036-9f36-abf7da1fba12?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/dfbbbdde535f481d99c95606ef8d48d0_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">[추석선물세트]버터쿠키
																			5종(3mix/4mix)</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="price-origin">13,000원</span>
																			<!---->
																			<!---->
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/47f9e1b7-8d44-49cc-ae0e-b53e733d7888?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/be2c2de3d7e743e880e65df5cdec7abc_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">[5+1] 추석선물 더치커피 6종
																			선물세트</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">49%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 10,000원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/c3d2ea5b-644b-4f80-8c6a-4a565a6624d6?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/746da5a9dc3b4e5c81c577df879fe27a_512.png&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">[예약할인]3대가 이어온 수제약과</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">20%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 15,900원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/ef7ed0f1-6b10-4fd1-8390-2a568410f0a0?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/38b96d7119d744a5a5ab816b4e38457a_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">🎁추석선물🎁요거트전용
																			샤인머스켓후르츠 수제청 생일</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">20%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 16,000원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/94ffaf23-a301-4b74-803a-742ad6201d49?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/a10d859a1f174a0895254bb938ba0638_512.png&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">궁중비법 서가 콩고물 도라지정과
																			140 추석 명절 선물</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">34%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 19,800원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/29d1a694-465a-4e7d-aa9e-7e104d476263?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/c9c48a4c58584497ac8561399fbdf3ce_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">[추석선물]
																			알록달록💕12종더치커피세트</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">20%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 17,500원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/29fb3790-e914-4564-bbe0-5e424faf00b7?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/62e6f7bf599147d3a90659b6971625e8_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">홍도라지생강진액청💜커피 대신
																			마셔요👍추석선물 예약</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">35%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 19,900원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/cbf62717-be0e-4598-84a0-b198ce3458de?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/a179a3ef791d4bbdb42bf3bddefbdd21_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">[추석]❤️앙꼬절편 4종
																			떡(흰팥,쑥팥,고구마,흑임자)</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">40%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 4,500원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/ea989439-676a-44d5-af87-e9732c0804f6?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/a14e6fa8505e4bdb9189280e57c4b6fe_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">[추석예약할인]1구3500원🎁선물포장포함🎁절편비누</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">16%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 5,900원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/2d1b84c7-3ec8-46f3-9354-3402381a0338?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/b23c5f2017724de4aeda048bdd613521_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">💛추석선물💛 찹쌀파이3종세트</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">36%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 20,500원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/b0e16540-c61c-4a64-aa34-0a4f559b2a6b?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/c50f5f7f577147f7b97d0c405a26b1e1_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">추석선물.더치커피
																			(1+1+1)생일선물</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">25%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 11,900원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/a2352a85-78ce-4d2e-a9c1-cdac07fffb47?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/ef626b92b38f460a94e3bdc0493032ea_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">9월할인❤️예뻐서 먹기
																			아까운🎁꽃쿠키 3종</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">23%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 10,000원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/286b75ab-0d76-4df5-bd22-6f84089c2649?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/d979af6c80094828bdc58e8765c20912_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">추석 선물 3+1행사❤️ 우리쌀
																			오색송편 혼합 550g</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">25%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 5,900원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/3446b295-6cca-4c00-af73-7e4fc4d2116c?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/90e102b199e344ae92aadecc424ed6e0_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">🍓여기당 수제잼 Top6 50g
																			샘플러박스🍓</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">20%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 11,760원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;"></div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;"></div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;"></div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;"></div>
													<button data-v-25581d7d="" type="button" aria-label="다음"
														class="carousel__arrow--right">
														<i data-v-25581d7d="" class="idus-icon-arrow-right"></i>
													</button>
												</div>
											</div>
										</div>
										<!---->
									</div>
								</div>
							</div>
						</div>
						<div data-v-d3c44402="" class="search-result-list__item--grid">
							<div data-v-d3c44402="" class="search-product-card">
								<div data-v-796f1feb="" data-v-74fd357a=""
									class="base-card card--vertical product">
									<a data-v-796f1feb=""
										href="/w/product/f3cf2036-1394-42f5-8dc1-94e43db5222d?keyword_channel=placeholder&amp;search_word=추석선물"
										target="_blank"><div data-v-796f1feb=""
											class="card-thumb-cover">
											<div data-v-74fd357a="" data-v-796f1feb=""
												id="thumb-f3cf2036-1394-42f5-8dc1-94e43db5222d"
												class="product-thumb-img"
												style="background-image: url(&quot;https://image.idus.com/image/files/d8e8f99077b74b9e8b4d15fb1424968b_512.jpg&quot;);"></div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-bookmark">
												<button data-v-488f5f82="" data-v-74fd357a=""
													aria-label="찜하기" class="full-button" data-v-796f1feb=""
													style="width: 24px; height: 24px;">
													<i data-v-74fd357a="" data-v-488f5f82=""
														class="sp-icon icon-favorite"></i>
												</button>
											</div>
										</div>
										<div data-v-796f1feb="" class="card-info product-info">
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__artist-name">뽀리수제쿠키 앤 수제청</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__name">
												🐤🐤🐤미니오리마들렌12개한세트🐥🐥🐣🐣</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__price">
												<!---->
												<span data-v-74fd357a="" data-v-796f1feb=""
													class="price-origin"> 12,000 <span
													data-v-74fd357a="" data-v-796f1feb=""
													style="font-size: 14px;">원</span></span>
												<!---->
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__badge-group" style="margin-top: 8px;">
												<div data-v-2f2bc7d4="" data-v-74fd357a=""
													class="badge badge-food" data-v-796f1feb="">안전식품</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__review">
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-rating">
													<span data-v-ef94db98="" data-v-74fd357a=""
														data-value="4.9" class="ui_rating fr" data-v-796f1feb=""><i
														data-v-ef94db98="" data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i></span> <span data-v-74fd357a=""
														data-v-796f1feb="" class="review-count"> (157) </span>
												</div>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-comment">
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__badge">후기</div>
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__contents">아이들이 넘 귀엽고 맛나다고
														잘먹어요</div>
												</div>
											</div>
										</div></a>
								</div>
							</div>
						</div>
						<div data-v-d3c44402="" class="search-result-list__item--grid">
							<div data-v-d3c44402="" class="search-product-card">
								<div data-v-796f1feb="" data-v-74fd357a=""
									class="base-card card--vertical product">
									<a data-v-796f1feb=""
										href="/w/product/3698b523-01c5-48b7-b731-f9fc85fd43fa?keyword_channel=placeholder&amp;search_word=추석선물"
										target="_blank"><div data-v-796f1feb=""
											class="card-thumb-cover">
											<div data-v-74fd357a="" data-v-796f1feb=""
												id="thumb-3698b523-01c5-48b7-b731-f9fc85fd43fa"
												class="product-thumb-img"
												style="background-image: url(&quot;https://image.idus.com/image/files/29b8fd2f05f1417092524af2b989477b_512.jpg&quot;);"></div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-bookmark">
												<button data-v-488f5f82="" data-v-74fd357a=""
													aria-label="찜하기" class="full-button" data-v-796f1feb=""
													style="width: 24px; height: 24px;">
													<i data-v-74fd357a="" data-v-488f5f82=""
														class="sp-icon icon-favorite"></i>
												</button>
											</div>
										</div>
										<div data-v-796f1feb="" class="card-info product-info">
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__artist-name">정성을담다</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__name">[상견례선물,명절선물]도라지정과 500g~추석선물
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__price">
												<span data-v-74fd357a="" data-v-796f1feb=""
													class="sale-rate"> 22% </span> <span data-v-74fd357a=""
													data-v-796f1feb="" class="price-sale"> 39,000 <span
													data-v-74fd357a="" data-v-796f1feb=""
													style="font-size: 14px;">원</span></span>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="price-origin--before-sale">
													<del data-v-74fd357a="" data-v-796f1feb="">50,000원</del>
												</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__badge-group" style="margin-top: 12px;">
												<div data-v-2f2bc7d4="" data-v-74fd357a=""
													class="badge badge-food" data-v-796f1feb="">안전식품</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__review">
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-rating">
													<span data-v-ef94db98="" data-v-74fd357a=""
														data-value="4.9" class="ui_rating fr" data-v-796f1feb=""><i
														data-v-ef94db98="" data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i></span> <span data-v-74fd357a=""
														data-v-796f1feb="" class="review-count"> (177) </span>
												</div>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-comment">
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__badge">후기</div>
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__contents">포장도 예쁘고 구성도 마음에 들어요
														또 주문하려고요! 기분좋은 추석선물이네요 ㅎㅎ</div>
												</div>
											</div>
										</div></a>
								</div>
							</div>
						</div>
						<div data-v-d3c44402="" class="search-result-list__item--grid">
							<div data-v-d3c44402="" class="search-product-card">
								<div data-v-796f1feb="" data-v-74fd357a=""
									class="base-card card--vertical product">
									<a data-v-796f1feb=""
										href="/w/product/880d58e7-e0b5-4664-8f73-bfaac314d0c9?keyword_channel=placeholder&amp;search_word=추석선물"
										target="_blank"><div data-v-796f1feb=""
											class="card-thumb-cover">
											<div data-v-74fd357a="" data-v-796f1feb=""
												id="thumb-880d58e7-e0b5-4664-8f73-bfaac314d0c9"
												class="product-thumb-img"
												style="background-image: url(&quot;https://image.idus.com/image/files/d76d2ae3427e451b8ccb40d7ea09f96f_512.jpg&quot;);"></div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-bookmark">
												<button data-v-488f5f82="" data-v-74fd357a=""
													aria-label="찜하기" class="full-button" data-v-796f1feb=""
													style="width: 24px; height: 24px;">
													<i data-v-74fd357a="" data-v-488f5f82=""
														class="sp-icon icon-favorite"></i>
												</button>
											</div>
										</div>
										<div data-v-796f1feb="" class="card-info product-info">
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__artist-name">마마넛(mamanut)</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__name">[추석선물] 고급스러운 견과류강정 선물세트</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__price">
												<span data-v-74fd357a="" data-v-796f1feb=""
													class="sale-rate"> 33% </span> <span data-v-74fd357a=""
													data-v-796f1feb="" class="price-sale"> 5,000 <span
													data-v-74fd357a="" data-v-796f1feb=""
													style="font-size: 14px;">원</span></span>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="price-origin--before-sale">
													<del data-v-74fd357a="" data-v-796f1feb="">7,500원</del>
												</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__badge-group" style="margin-top: 12px;">
												<div data-v-2f2bc7d4="" data-v-74fd357a=""
													class="badge badge-food" data-v-796f1feb="">안전식품</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__review">
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-rating">
													<span data-v-ef94db98="" data-v-74fd357a=""
														data-value="4.9" class="ui_rating fr" data-v-796f1feb=""><i
														data-v-ef94db98="" data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i></span> <span data-v-74fd357a=""
														data-v-796f1feb="" class="review-count"> (134) </span>
												</div>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-comment">
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__badge">후기</div>
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__contents">주문하기 전 이것저것 여쭤봤는데
														친절하게 답해주시고 배송하기 전에는 안에 내용물 사진 찍어 보내주신 작가님 ㅜㅜ 💓 명절전이라 한참
														바쁘실텐데 너무 감사합니다!! 9/7일 출고로 오늘 받았는데 택배 상자 뜯자마자 보자기 포장이 너무
														예뻐서 감탄이 절로 나왔어요! 주는 사람도 받는 사람도 모두 기분 좋은 선물이 될 수 있을 거 같아요
														◡̈ 다음에 또 선물 할 곳 있으면 재구매 의사 100% 입니다!! 작가님 번창하세요~~💓</div>
												</div>
											</div>
										</div></a>
								</div>
							</div>
						</div>
						<div data-v-d3c44402="" class="search-result-list__item--grid">
							<div data-v-d3c44402="" class="search-product-card">
								<div data-v-796f1feb="" data-v-74fd357a=""
									class="base-card card--vertical product">
									<a data-v-796f1feb=""
										href="/w/product/5f391b58-8797-4b0d-be21-801db372de27?keyword_channel=placeholder&amp;search_word=추석선물"
										target="_blank"><div data-v-796f1feb=""
											class="card-thumb-cover">
											<div data-v-74fd357a="" data-v-796f1feb=""
												id="thumb-5f391b58-8797-4b0d-be21-801db372de27"
												class="product-thumb-img"
												style="background-image: url(&quot;https://image.idus.com/image/files/8ac8b9b99af84d2085088e86467dfc75_512.jpg&quot;);"></div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-bookmark">
												<button data-v-488f5f82="" data-v-74fd357a=""
													aria-label="찜하기" class="full-button" data-v-796f1feb=""
													style="width: 24px; height: 24px;">
													<i data-v-74fd357a="" data-v-488f5f82=""
														class="sp-icon icon-favorite"></i>
												</button>
											</div>
										</div>
										<div data-v-796f1feb="" class="card-info product-info">
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__artist-name">리리롱</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__name">🤎추석선물🤎쫀득리얼 🍠 고구마빵 🥔 감자빵
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__price">
												<span data-v-74fd357a="" data-v-796f1feb=""
													class="sale-rate"> 20% </span> <span data-v-74fd357a=""
													data-v-796f1feb="" class="price-sale"> 2,000 <span
													data-v-74fd357a="" data-v-796f1feb=""
													style="font-size: 14px;">원</span></span>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="price-origin--before-sale">
													<del data-v-74fd357a="" data-v-796f1feb="">2,500원</del>
												</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__badge-group" style="margin-top: 12px;">
												<div data-v-2f2bc7d4="" data-v-74fd357a=""
													class="badge badge-food" data-v-796f1feb="">안전식품</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__review">
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-rating">
													<span data-v-ef94db98="" data-v-74fd357a=""
														data-value="4.7" class="ui_rating fr" data-v-796f1feb=""><i
														data-v-ef94db98="" data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i></span> <span data-v-74fd357a=""
														data-v-796f1feb="" class="review-count"> (473) </span>
												</div>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-comment">
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__badge">후기</div>
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__contents">엄마가 맛있다고해서 두번째
														🍠보냅니다 냉동고에 저장해서 🍠먹고 싶을때 데워 먹으니 맛있다합니다 서비스 주신 🍪랑🥔 고맙습니다
														🙂💕</div>
												</div>
											</div>
										</div></a>
								</div>
							</div>
						</div>
						<div data-v-d3c44402="" class="search-result-list__item--grid">
							<div data-v-d3c44402="" class="search-product-card">
								<div data-v-796f1feb="" data-v-74fd357a=""
									class="base-card card--vertical product">
									<a data-v-796f1feb=""
										href="/w/product/942119ff-46ed-4eae-9cf1-31e9b3a552d9?keyword_channel=placeholder&amp;search_word=추석선물"
										target="_blank"><div data-v-796f1feb=""
											class="card-thumb-cover">
											<div data-v-74fd357a="" data-v-796f1feb=""
												id="thumb-942119ff-46ed-4eae-9cf1-31e9b3a552d9"
												class="product-thumb-img"
												style="background-image: url(&quot;https://image.idus.com/image/files/d1d33bc562304a18af53f030147ed1f1_512.jpg&quot;);"></div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-bookmark">
												<button data-v-488f5f82="" data-v-74fd357a=""
													aria-label="찜하기" class="full-button" data-v-796f1feb=""
													style="width: 24px; height: 24px;">
													<i data-v-74fd357a="" data-v-488f5f82=""
														class="sp-icon icon-favorite"></i>
												</button>
											</div>
										</div>
										<div data-v-796f1feb="" class="card-info product-info">
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__artist-name">'마다'</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__name">'마다'의 미니다쿠아즈 세트♡ 9월15일(수)발송
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__price">
												<!---->
												<span data-v-74fd357a="" data-v-796f1feb=""
													class="price-origin"> 10,000 <span
													data-v-74fd357a="" data-v-796f1feb=""
													style="font-size: 14px;">원</span></span>
												<!---->
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__badge-group" style="margin-top: 8px;">
												<div data-v-2f2bc7d4="" data-v-74fd357a=""
													class="badge badge-food" data-v-796f1feb="">안전식품</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__review">
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-rating">
													<span data-v-ef94db98="" data-v-74fd357a=""
														data-value="4.9" class="ui_rating fr" data-v-796f1feb=""><i
														data-v-ef94db98="" data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i></span> <span data-v-74fd357a=""
														data-v-796f1feb="" class="review-count"> (1252) </span>
												</div>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-comment">
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__badge">후기</div>
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__contents">어머님이 좋아하셔요 😊</div>
												</div>
											</div>
										</div></a>
								</div>
							</div>
						</div>
						<div data-v-d3c44402="" class="search-result-list__item--grid">
							<div data-v-d3c44402="" class="search-product-card">
								<div data-v-796f1feb="" data-v-74fd357a=""
									class="base-card card--vertical product">
									<a data-v-796f1feb=""
										href="/w/product/ec375a22-41bf-4d30-87dd-5c6fe4dd2290?keyword_channel=placeholder&amp;search_word=추석선물"
										target="_blank"><div data-v-796f1feb=""
											class="card-thumb-cover">
											<div data-v-74fd357a="" data-v-796f1feb=""
												id="thumb-ec375a22-41bf-4d30-87dd-5c6fe4dd2290"
												class="product-thumb-img"
												style="background-image: url(&quot;https://image.idus.com/image/files/bfc163df7b434e95b24cb3f04d2f7bd2_512.jpg&quot;);"></div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-bookmark">
												<button data-v-488f5f82="" data-v-74fd357a=""
													aria-label="찜하기" class="full-button" data-v-796f1feb=""
													style="width: 24px; height: 24px;">
													<i data-v-74fd357a="" data-v-488f5f82=""
														class="sp-icon icon-favorite"></i>
												</button>
											</div>
										</div>
										<div data-v-796f1feb="" class="card-info product-info">
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__artist-name">2대가함께하는 망개떡 창원생과방</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__name">[추석]💜평일당일출고💜2대가함께 수제 망개떡
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__price">
												<!---->
												<span data-v-74fd357a="" data-v-796f1feb=""
													class="price-origin"> 10,000 <span
													data-v-74fd357a="" data-v-796f1feb=""
													style="font-size: 14px;">원</span></span>
												<!---->
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__badge-group" style="margin-top: 8px;">
												<div data-v-2f2bc7d4="" data-v-74fd357a=""
													class="badge badge-food" data-v-796f1feb="">안전식품</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__review">
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-rating">
													<span data-v-ef94db98="" data-v-74fd357a=""
														data-value="4.8" class="ui_rating fr" data-v-796f1feb=""><i
														data-v-ef94db98="" data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i></span> <span data-v-74fd357a=""
														data-v-796f1feb="" class="review-count"> (1627) </span>
												</div>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-comment">
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__badge">후기</div>
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__contents">망개떡이 쫄깃쫄깃 말랑말랑 너무
														맛있네요. 또 시켜 먹을게요.</div>
												</div>
											</div>
										</div></a>
								</div>
							</div>
						</div>
						<div data-v-d3c44402="" class="search-result-list__item--grid">
							<div data-v-d3c44402="" class="search-product-card">
								<div data-v-796f1feb="" data-v-74fd357a=""
									class="base-card card--vertical product">
									<a data-v-796f1feb=""
										href="/w/product/8171e885-fb95-4036-9f36-abf7da1fba12?keyword_channel=placeholder&amp;search_word=추석선물"
										target="_blank"><div data-v-796f1feb=""
											class="card-thumb-cover">
											<div data-v-74fd357a="" data-v-796f1feb=""
												id="thumb-8171e885-fb95-4036-9f36-abf7da1fba12"
												class="product-thumb-img"
												style="background-image: url(&quot;https://image.idus.com/image/files/dfbbbdde535f481d99c95606ef8d48d0_512.jpg&quot;);"></div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-bookmark">
												<button data-v-488f5f82="" data-v-74fd357a=""
													aria-label="찜하기" class="full-button" data-v-796f1feb=""
													style="width: 24px; height: 24px;">
													<i data-v-74fd357a="" data-v-488f5f82=""
														class="sp-icon icon-favorite"></i>
												</button>
											</div>
										</div>
										<div data-v-796f1feb="" class="card-info product-info">
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__artist-name">153베이커리</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__name">[추석선물세트]버터쿠키 5종(3mix/4mix)
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__price">
												<!---->
												<span data-v-74fd357a="" data-v-796f1feb=""
													class="price-origin"> 13,000 <span
													data-v-74fd357a="" data-v-796f1feb=""
													style="font-size: 14px;">원</span></span>
												<!---->
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__badge-group" style="margin-top: 8px;">
												<div data-v-2f2bc7d4="" data-v-74fd357a=""
													class="badge badge-food" data-v-796f1feb="">안전식품</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__review">
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-rating">
													<span data-v-ef94db98="" data-v-74fd357a=""
														data-value="4.8" class="ui_rating fr" data-v-796f1feb=""><i
														data-v-ef94db98="" data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i></span> <span data-v-74fd357a=""
														data-v-796f1feb="" class="review-count"> (707) </span>
												</div>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-comment">
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__badge">후기</div>
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__contents">선물용이라 맛은 못봤지만 맛있을거라
														믿고 😅 틴케이스도 예쁘더라구요~ 크기는 생각보다 작긴 했는데 가볍게 선물하기 괜찮은거 같아요~ 다음에
														다시 또 구매하러 올께요~</div>
												</div>
											</div>
										</div></a>
								</div>
							</div>
						</div>
						<div data-v-d3c44402="" class="search-result-list__item--grid">
							<div data-v-d3c44402="" class="search-product-card">
								<div data-v-796f1feb="" data-v-74fd357a=""
									class="base-card card--vertical product">
									<a data-v-796f1feb=""
										href="/w/product/54eaf808-38ac-4581-8b4e-c2069f1ef7b8?keyword_channel=placeholder&amp;search_word=추석선물"
										target="_blank"><div data-v-796f1feb=""
											class="card-thumb-cover">
											<div data-v-74fd357a="" data-v-796f1feb=""
												id="thumb-54eaf808-38ac-4581-8b4e-c2069f1ef7b8"
												class="product-thumb-img"
												style="background-image: url(&quot;https://image.idus.com/image/files/821ae2de8ccf48398d837956371d3d45_512.png&quot;);"></div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-bookmark">
												<button data-v-488f5f82="" data-v-74fd357a=""
													aria-label="찜하기" class="full-button" data-v-796f1feb=""
													style="width: 24px; height: 24px;">
													<i data-v-74fd357a="" data-v-488f5f82=""
														class="sp-icon icon-favorite"></i>
												</button>
											</div>
										</div>
										<div data-v-796f1feb="" class="card-info product-info">
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__artist-name">효자동 기정떡</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__name">
												[추석선물/순차발송]효자동기정떡/3차발효/한정수량</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__price">
												<!---->
												<span data-v-74fd357a="" data-v-796f1feb=""
													class="price-origin"> 10,000 <span
													data-v-74fd357a="" data-v-796f1feb=""
													style="font-size: 14px;">원</span></span>
												<!---->
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__badge-group" style="margin-top: 8px;">
												<div data-v-2f2bc7d4="" data-v-74fd357a=""
													class="badge badge-food" data-v-796f1feb="">안전식품</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__review">
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-rating">
													<span data-v-ef94db98="" data-v-74fd357a=""
														data-value="4.8" class="ui_rating fr" data-v-796f1feb=""><i
														data-v-ef94db98="" data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i></span> <span data-v-74fd357a=""
														data-v-796f1feb="" class="review-count"> (451) </span>
												</div>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-comment">
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__badge">후기</div>
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__contents">너무 맛있었어요 많이달지않고 깔끔한
														소포장에 선물하기도 좋네요 배송에 조금문제가 있었지만 판매자님의 빠른대응도 좋았습니다 종종 간식용으로도
														구매할게요</div>
												</div>
											</div>
										</div></a>
								</div>
							</div>
						</div>
						<div data-v-d3c44402="" class="search-result-list__item--full">
							<div data-v-66d71af7="" data-v-d3c44402=""
								class="lecture-search-list">
								<h2 data-v-c9688b12="" data-v-66d71af7="" class="search-title">추석선물
									관련 인기 클래스</h2>
								<div data-v-66d71af7="" class="vertical-container">
									<a data-v-43cd0d8a="" data-v-66d71af7=""
										href="/c/class/6097?keyword_channel=placeholder&amp;search_word=추석선물"
										target="_blank" class="eduon_vertical_card"><div
											data-v-69f6c284="" data-v-43cd0d8a=""
											class="vertical_card_container">
											<div data-v-69f6c284="" class="vertical_card_img_box">
												<div data-v-69f6c284="" class="vertical_card_image"
													style="background-image: url(&quot;https://image.idus.com/image/files/6f1b6b7291e046f489a76ff268ceb015_320.png&quot;);"></div>
												<span data-v-0f62a756="" data-v-43cd0d8a=""
													class="offline_class" data-v-69f6c284=""> 서울 송파구 </span>
												<div data-v-43cd0d8a="" data-v-69f6c284="" class="bookmark">
													<button data-v-488f5f82="" data-v-43cd0d8a=""
														aria-label="찜하기" class="full-button" data-v-69f6c284=""
														style="width: 28px; height: 28px;">
														<i data-v-43cd0d8a="" data-v-488f5f82=""
															class="sp-icon icon-favorite"></i>
													</button>
												</div>
											</div>
											<div data-v-69f6c284="" class="vertical_card_content_box">
												<div data-v-43cd0d8a="" data-v-69f6c284=""
													class="eb_card_content">
													<span data-v-43cd0d8a="" data-v-69f6c284=""
														class="eb_card_artist_category"> 캔들, 디퓨저, 방향제 ·
														로즈블러썸 </span>
													<div data-v-43cd0d8a="" data-v-69f6c284=""
														class="eb_card_desc_container">
														<p data-v-43cd0d8a="" data-v-69f6c284=""
															class="eb_card_desc">[추석선물] 향기 가득한 추석선물세트 추석한상차림
															캔들클래스</p>
													</div>
													<!---->
												</div>
											</div>
										</div>
										<div data-v-43cd0d8a="" class="freepass-wrap">
											<!---->
										</div></a><a data-v-43cd0d8a="" data-v-66d71af7=""
										href="/c/class/4076?keyword_channel=placeholder&amp;search_word=추석선물"
										target="_blank" class="eduon_vertical_card"><div
											data-v-69f6c284="" data-v-43cd0d8a=""
											class="vertical_card_container">
											<div data-v-69f6c284="" class="vertical_card_img_box">
												<div data-v-69f6c284="" class="vertical_card_image"
													style="background-image: url(&quot;https://image.idus.com/image/files/d3c7b4dd28844d77ba33c2d47446ca3c_320.png&quot;);"></div>
												<span data-v-0f62a756="" data-v-43cd0d8a=""
													class="offline_class" data-v-69f6c284=""> 대전 서구 </span>
												<div data-v-43cd0d8a="" data-v-69f6c284="" class="bookmark">
													<button data-v-488f5f82="" data-v-43cd0d8a=""
														aria-label="찜하기" class="full-button" data-v-69f6c284=""
														style="width: 28px; height: 28px;">
														<i data-v-43cd0d8a="" data-v-488f5f82=""
															class="sp-icon icon-favorite"></i>
													</button>
												</div>
											</div>
											<div data-v-69f6c284="" class="vertical_card_content_box">
												<div data-v-43cd0d8a="" data-v-69f6c284=""
													class="eb_card_content">
													<span data-v-43cd0d8a="" data-v-69f6c284=""
														class="eb_card_artist_category"> 캘리그라피, 서예 · 꿈꾸는
														희망나무캘리 </span>
													<div data-v-43cd0d8a="" data-v-69f6c284=""
														class="eb_card_desc_container">
														<p data-v-43cd0d8a="" data-v-69f6c284=""
															class="eb_card_desc">추석 특별한 선물“프리저브드 플라워 캘리액자 만들기"
															원데이클래스</p>
													</div>
													<!---->
												</div>
											</div>
										</div>
										<div data-v-43cd0d8a="" class="freepass-wrap">
											<!---->
										</div></a>
								</div>
							</div>
						</div>
						<div data-v-d3c44402="" class="search-result-list__item--grid">
							<div data-v-d3c44402="" class="search-product-card">
								<div data-v-796f1feb="" data-v-74fd357a=""
									class="base-card card--vertical product">
									<a data-v-796f1feb=""
										href="/w/product/490880d6-9334-4ab7-bec5-48732fbddaa7?keyword_channel=placeholder&amp;search_word=추석선물"
										target="_blank"><div data-v-796f1feb=""
											class="card-thumb-cover">
											<div data-v-74fd357a="" data-v-796f1feb=""
												id="thumb-490880d6-9334-4ab7-bec5-48732fbddaa7"
												class="product-thumb-img"
												style="background-image: url(&quot;https://image.idus.com/image/files/553a91cea7094fa989d7e12b4f05bbf0_512.png&quot;);"></div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-bookmark">
												<button data-v-488f5f82="" data-v-74fd357a=""
													aria-label="찜하기" class="full-button" data-v-796f1feb=""
													style="width: 24px; height: 24px;">
													<i data-v-74fd357a="" data-v-488f5f82=""
														class="sp-icon icon-favorite"></i>
												</button>
											</div>
										</div>
										<div data-v-796f1feb="" class="card-info product-info">
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__artist-name">무실디저트</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__name">추석선물 🌺반짝 한입 미니 꽃 양갱🌺수제
												양갱이</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__price">
												<!---->
												<span data-v-74fd357a="" data-v-796f1feb=""
													class="price-origin"> 8,500 <span data-v-74fd357a=""
													data-v-796f1feb="" style="font-size: 14px;">원</span></span>
												<!---->
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__badge-group" style="margin-top: 8px;">
												<div data-v-2f2bc7d4="" data-v-74fd357a=""
													class="badge badge-food" data-v-796f1feb="">안전식품</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__review">
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-rating">
													<span data-v-ef94db98="" data-v-74fd357a=""
														data-value="4.7" class="ui_rating fr" data-v-796f1feb=""><i
														data-v-ef94db98="" data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i></span> <span data-v-74fd357a=""
														data-v-796f1feb="" class="review-count"> (115) </span>
												</div>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-comment">
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__badge">후기</div>
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__contents">단 양갱을 안좋아하시는 어머니에게
														선물 드렸는데 너무 좋아하세요 ㅠㅠㅠ 포장도 너무 이쁘고 한 입에 먹기도 편하시다고 하셔서 완전
														만족입니다👍👍👍😊😊</div>
												</div>
											</div>
										</div></a>
								</div>
							</div>
						</div>
						<div data-v-d3c44402="" class="search-result-list__item--grid">
							<div data-v-d3c44402="" class="search-product-card">
								<div data-v-796f1feb="" data-v-74fd357a=""
									class="base-card card--vertical product">
									<a data-v-796f1feb=""
										href="/w/product/9617f620-edcf-4d6e-b54d-5d328a09ef9d?keyword_channel=placeholder&amp;search_word=추석선물"
										target="_blank"><div data-v-796f1feb=""
											class="card-thumb-cover">
											<div data-v-74fd357a="" data-v-796f1feb=""
												id="thumb-9617f620-edcf-4d6e-b54d-5d328a09ef9d"
												class="product-thumb-img"
												style="background-image: url(&quot;https://image.idus.com/image/files/19cd65465e7346098a8329a4cf4a7938_512.png&quot;);"></div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-bookmark">
												<button data-v-488f5f82="" data-v-74fd357a=""
													aria-label="찜하기" class="full-button" data-v-796f1feb=""
													style="width: 24px; height: 24px;">
													<i data-v-74fd357a="" data-v-488f5f82=""
														class="sp-icon icon-favorite"></i>
												</button>
											</div>
										</div>
										<div data-v-796f1feb="" class="card-info product-info">
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__artist-name">갱소년</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__name">[추석선물] 24구 알양갱세트</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__price">
												<span data-v-74fd357a="" data-v-796f1feb=""
													class="sale-rate"> 11% </span> <span data-v-74fd357a=""
													data-v-796f1feb="" class="price-sale"> 25,000 <span
													data-v-74fd357a="" data-v-796f1feb=""
													style="font-size: 14px;">원</span></span>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="price-origin--before-sale">
													<del data-v-74fd357a="" data-v-796f1feb="">28,000원</del>
												</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__badge-group" style="margin-top: 12px;">
												<div data-v-2f2bc7d4="" data-v-74fd357a=""
													class="badge badge-food" data-v-796f1feb="">안전식품</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__review">
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-rating">
													<span data-v-ef94db98="" data-v-74fd357a=""
														data-value="4.7" class="ui_rating fr" data-v-796f1feb=""><i
														data-v-ef94db98="" data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i></span> <span data-v-74fd357a=""
														data-v-796f1feb="" class="review-count"> (85) </span>
												</div>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-comment">
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__badge">후기</div>
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__contents">오늘까지 받아야했는데
														감사합니다!!! 생각했던거보다 크고 진짜예뻤어요ㅜㅜㅜㅜ</div>
												</div>
											</div>
										</div></a>
								</div>
							</div>
						</div>
						<div data-v-d3c44402="" class="search-result-list__item--grid">
							<div data-v-d3c44402="" class="search-product-card">
								<div data-v-796f1feb="" data-v-74fd357a=""
									class="base-card card--vertical product">
									<a data-v-796f1feb=""
										href="/w/product/55fce45c-6dba-4b7f-a190-c405ce93c3df?keyword_channel=placeholder&amp;search_word=추석선물"
										target="_blank"><div data-v-796f1feb=""
											class="card-thumb-cover">
											<div data-v-74fd357a="" data-v-796f1feb=""
												id="thumb-55fce45c-6dba-4b7f-a190-c405ce93c3df"
												class="product-thumb-img"
												style="background-image: url(&quot;https://image.idus.com/image/files/159ccd5119f546fd8b0e82d0033b7e18_512.jpg&quot;);"></div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-bookmark">
												<button data-v-488f5f82="" data-v-74fd357a=""
													aria-label="찜하기" class="full-button" data-v-796f1feb=""
													style="width: 24px; height: 24px;">
													<i data-v-74fd357a="" data-v-488f5f82=""
														class="sp-icon icon-favorite"></i>
												</button>
											</div>
										</div>
										<div data-v-796f1feb="" class="card-info product-info">
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__artist-name">dalgom</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__name">♥추석선물♥국산 도라지정과 선물세트</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__price">
												<span data-v-74fd357a="" data-v-796f1feb=""
													class="sale-rate"> 18% </span> <span data-v-74fd357a=""
													data-v-796f1feb="" class="price-sale"> 33,000 <span
													data-v-74fd357a="" data-v-796f1feb=""
													style="font-size: 14px;">원</span></span>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="price-origin--before-sale">
													<del data-v-74fd357a="" data-v-796f1feb="">40,000원</del>
												</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__badge-group" style="margin-top: 12px;">
												<div data-v-2f2bc7d4="" data-v-74fd357a=""
													class="badge badge-food" data-v-796f1feb="">안전식품</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__review">
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-rating">
													<span data-v-ef94db98="" data-v-74fd357a=""
														data-value="4.9" class="ui_rating fr" data-v-796f1feb=""><i
														data-v-ef94db98="" data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i></span> <span data-v-74fd357a=""
														data-v-796f1feb="" class="review-count"> (296) </span>
												</div>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-comment">
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__badge">후기</div>
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__contents">빠른 배송과 완벽한 포장! 그리고
														덤으로 포장된 샘플까지! 인삼이나 홍삼보단 부담없이 선물드릴 수 있어서 좋았습니다~</div>
												</div>
											</div>
										</div></a>
								</div>
							</div>
						</div>
						<div data-v-d3c44402="" class="search-result-list__item--grid">
							<div data-v-d3c44402="" class="search-product-card">
								<div data-v-796f1feb="" data-v-74fd357a=""
									class="base-card card--vertical product">
									<a data-v-796f1feb=""
										href="/w/product/d34e838b-bc76-4e89-beef-b649d810d1e1?keyword_channel=placeholder&amp;search_word=추석선물"
										target="_blank"><div data-v-796f1feb=""
											class="card-thumb-cover">
											<div data-v-74fd357a="" data-v-796f1feb=""
												id="thumb-d34e838b-bc76-4e89-beef-b649d810d1e1"
												class="product-thumb-img"
												style="background-image: url(&quot;https://image.idus.com/image/files/4e8e1799f8c7424dbeca4e752dfe80bb_512.jpg&quot;);"></div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-bookmark">
												<button data-v-488f5f82="" data-v-74fd357a=""
													aria-label="찜하기" class="full-button" data-v-796f1feb=""
													style="width: 24px; height: 24px;">
													<i data-v-74fd357a="" data-v-488f5f82=""
														class="sp-icon icon-favorite"></i>
												</button>
											</div>
										</div>
										<div data-v-796f1feb="" class="card-info product-info">
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__artist-name">공빵</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__name">추석선물세트 호두정과🔅마카다미아 호두정과</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__price">
												<span data-v-74fd357a="" data-v-796f1feb=""
													class="sale-rate"> 27% </span> <span data-v-74fd357a=""
													data-v-796f1feb="" class="price-sale"> 11,000 <span
													data-v-74fd357a="" data-v-796f1feb=""
													style="font-size: 14px;">원</span></span>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="price-origin--before-sale">
													<del data-v-74fd357a="" data-v-796f1feb="">15,000원</del>
												</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__badge-group" style="margin-top: 12px;">
												<div data-v-2f2bc7d4="" data-v-74fd357a=""
													class="badge badge-food" data-v-796f1feb="">안전식품</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__review">
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-rating">
													<span data-v-ef94db98="" data-v-74fd357a=""
														data-value="4.9" class="ui_rating fr" data-v-796f1feb=""><i
														data-v-ef94db98="" data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i></span> <span data-v-74fd357a=""
														data-v-796f1feb="" class="review-count"> (247) </span>
												</div>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-comment">
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__badge">후기</div>
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__contents">주말 상견례가있어서 많이알아보고
														신경도 쓰였는데 사장님께서 친절하고 꼼꼼하게 해주셨습니다 ㅎㅎ배송도 정말빨리왔구 안에 쪽지도 부탁드렸는데
														너무세련되게 해주셔서 얼른 드리고싶어지네요😊 저희집 강아지도 제맘을 아는지 제품앞에서 애교부리길래
														찍어보았습니다!! 강추!! 많이많이 파세요 사장님 ㅎㅎ 😋❤️</div>
												</div>
											</div>
										</div></a>
								</div>
							</div>
						</div>
						<div data-v-d3c44402="" class="search-result-list__item--grid">
							<div data-v-d3c44402="" class="search-product-card">
								<div data-v-796f1feb="" data-v-74fd357a=""
									class="base-card card--vertical product">
									<a data-v-796f1feb=""
										href="/w/product/046e334b-6b1d-451b-972a-a1601034f9f4?keyword_channel=placeholder&amp;search_word=추석선물"
										target="_blank"><div data-v-796f1feb=""
											class="card-thumb-cover">
											<div data-v-74fd357a="" data-v-796f1feb=""
												id="thumb-046e334b-6b1d-451b-972a-a1601034f9f4"
												class="product-thumb-img"
												style="background-image: url(&quot;https://image.idus.com/image/files/7c7abeb01301497b8bdd81b71e654b94_512.jpg&quot;);"></div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-bookmark">
												<button data-v-488f5f82="" data-v-74fd357a=""
													aria-label="찜하기" class="full-button" data-v-796f1feb=""
													style="width: 24px; height: 24px;">
													<i data-v-74fd357a="" data-v-488f5f82=""
														class="sp-icon icon-favorite"></i>
												</button>
											</div>
										</div>
										<div data-v-796f1feb="" class="card-info product-info">
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__artist-name">시루아네</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__name">[추석할인] 시루아네 정성종합세트(개별포장,
												24개입)</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__price">
												<span data-v-74fd357a="" data-v-796f1feb=""
													class="sale-rate"> 24% </span> <span data-v-74fd357a=""
													data-v-796f1feb="" class="price-sale"> 25,000 <span
													data-v-74fd357a="" data-v-796f1feb=""
													style="font-size: 14px;">원</span></span>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="price-origin--before-sale">
													<del data-v-74fd357a="" data-v-796f1feb="">33,000원</del>
												</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__badge-group" style="margin-top: 12px;">
												<div data-v-2f2bc7d4="" data-v-74fd357a=""
													class="badge badge-food" data-v-796f1feb="">안전식품</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__review">
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-rating">
													<span data-v-ef94db98="" data-v-74fd357a=""
														data-value="4.9" class="ui_rating fr" data-v-796f1feb=""><i
														data-v-ef94db98="" data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i></span> <span data-v-74fd357a=""
														data-v-796f1feb="" class="review-count"> (123) </span>
												</div>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-comment">
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__badge">후기</div>
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__contents">이모님께 추석선물로 보냈는데
														보자기포장이 누락.ㅜㅜ</div>
												</div>
											</div>
										</div></a>
								</div>
							</div>
						</div>
						<div data-v-d3c44402="" class="search-result-list__item--grid">
							<div data-v-d3c44402="" class="search-product-card">
								<div data-v-796f1feb="" data-v-74fd357a=""
									class="base-card card--vertical product">
									<a data-v-796f1feb=""
										href="/w/product/75076f81-3f5d-46e0-b8fc-6d4bb08ab3f0?keyword_channel=placeholder&amp;search_word=추석선물"
										target="_blank"><div data-v-796f1feb=""
											class="card-thumb-cover">
											<div data-v-74fd357a="" data-v-796f1feb=""
												id="thumb-75076f81-3f5d-46e0-b8fc-6d4bb08ab3f0"
												class="product-thumb-img"
												style="background-image: url(&quot;https://image.idus.com/image/files/2f94089328434b47b713a6ff43102b1e_512.png&quot;);"></div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-bookmark">
												<button data-v-488f5f82="" data-v-74fd357a=""
													aria-label="찜하기" class="full-button" data-v-796f1feb=""
													style="width: 24px; height: 24px;">
													<i data-v-74fd357a="" data-v-488f5f82=""
														class="sp-icon icon-favorite"></i>
												</button>
											</div>
										</div>
										<div data-v-796f1feb="" class="card-info product-info">
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__artist-name">달구벌한과</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__name">추석 명절 선물 고급 🌸수제꽃약과🥮 달구벌한과
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__price">
												<span data-v-74fd357a="" data-v-796f1feb=""
													class="sale-rate"> 7% </span> <span data-v-74fd357a=""
													data-v-796f1feb="" class="price-sale"> 7,000 <span
													data-v-74fd357a="" data-v-796f1feb=""
													style="font-size: 14px;">원</span></span>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="price-origin--before-sale">
													<del data-v-74fd357a="" data-v-796f1feb="">7,500원</del>
												</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__badge-group" style="margin-top: 12px;">
												<div data-v-2f2bc7d4="" data-v-74fd357a=""
													class="badge badge-food" data-v-796f1feb="">안전식품</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__review">
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-rating">
													<span data-v-ef94db98="" data-v-74fd357a=""
														data-value="4.5" class="ui_rating fr" data-v-796f1feb=""><i
														data-v-ef94db98="" data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-half-fill"
														style="font-size: 11px;"></i></span> <span data-v-74fd357a=""
														data-v-796f1feb="" class="review-count"> (81) </span>
												</div>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-comment">
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__badge">후기</div>
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__contents">ㅎ히사 사람들이랑 맛있게 나눠
														먹어써요</div>
												</div>
											</div>
										</div></a>
								</div>
							</div>
						</div>
						<div data-v-d3c44402="" class="search-result-list__item--grid">
							<div data-v-d3c44402="" class="search-product-card">
								<div data-v-796f1feb="" data-v-74fd357a=""
									class="base-card card--vertical product">
									<a data-v-796f1feb=""
										href="/w/product/fddf281e-3f91-4e94-a2a1-030261fdce0b?keyword_channel=placeholder&amp;search_word=추석선물"
										target="_blank"><div data-v-796f1feb=""
											class="card-thumb-cover">
											<div data-v-74fd357a="" data-v-796f1feb=""
												id="thumb-fddf281e-3f91-4e94-a2a1-030261fdce0b"
												class="product-thumb-img"
												style="background-image: url(&quot;https://image.idus.com/image/files/9abc0c52e6594e7d807c378aec2bb962_512.jpg&quot;);"></div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-bookmark">
												<button data-v-488f5f82="" data-v-74fd357a=""
													aria-label="찜하기" class="full-button" data-v-796f1feb=""
													style="width: 24px; height: 24px;">
													<i data-v-74fd357a="" data-v-488f5f82=""
														class="sp-icon icon-favorite"></i>
												</button>
											</div>
										</div>
										<div data-v-796f1feb="" class="card-info product-info">
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__artist-name">늘소담</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__name">[추석선물] 베스트셀러 다담세트🎁</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__price">
												<!---->
												<span data-v-74fd357a="" data-v-796f1feb=""
													class="price-origin"> 48,500 <span
													data-v-74fd357a="" data-v-796f1feb=""
													style="font-size: 14px;">원</span></span>
												<!---->
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__badge-group" style="margin-top: 8px;">
												<div data-v-2f2bc7d4="" data-v-74fd357a=""
													class="badge badge-delivery" data-v-796f1feb="">무료배송
												</div>
												<div data-v-2f2bc7d4="" data-v-74fd357a=""
													class="badge badge-food" data-v-796f1feb="">안전식품</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__review">
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-rating">
													<span data-v-ef94db98="" data-v-74fd357a=""
														data-value="4.9" class="ui_rating fr" data-v-796f1feb=""><i
														data-v-ef94db98="" data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i></span> <span data-v-74fd357a=""
														data-v-796f1feb="" class="review-count"> (326) </span>
												</div>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-comment">
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__badge">후기</div>
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__contents">맘에 듭니다.</div>
												</div>
											</div>
										</div></a>
								</div>
							</div>
						</div>
						<div data-v-d3c44402="" class="search-result-list__item--grid">
							<div data-v-d3c44402="" class="search-product-card">
								<div data-v-796f1feb="" data-v-74fd357a=""
									class="base-card card--vertical product">
									<a data-v-796f1feb=""
										href="/w/product/cbf62717-be0e-4598-84a0-b198ce3458de?keyword_channel=placeholder&amp;search_word=추석선물"
										target="_blank"><div data-v-796f1feb=""
											class="card-thumb-cover">
											<div data-v-74fd357a="" data-v-796f1feb=""
												id="thumb-cbf62717-be0e-4598-84a0-b198ce3458de"
												class="product-thumb-img"
												style="background-image: url(&quot;https://image.idus.com/image/files/a179a3ef791d4bbdb42bf3bddefbdd21_512.jpg&quot;);"></div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-bookmark">
												<button data-v-488f5f82="" data-v-74fd357a=""
													aria-label="찜하기" class="full-button" data-v-796f1feb=""
													style="width: 24px; height: 24px;">
													<i data-v-74fd357a="" data-v-488f5f82=""
														class="sp-icon icon-favorite"></i>
												</button>
											</div>
										</div>
										<div data-v-796f1feb="" class="card-info product-info">
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__artist-name">더바른</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__name">[추석]❤️앙꼬절편 4종
												떡(흰팥,쑥팥,고구마,흑임자)</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__price">
												<span data-v-74fd357a="" data-v-796f1feb=""
													class="sale-rate"> 40% </span> <span data-v-74fd357a=""
													data-v-796f1feb="" class="price-sale"> 4,500 <span
													data-v-74fd357a="" data-v-796f1feb=""
													style="font-size: 14px;">원</span></span>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="price-origin--before-sale">
													<del data-v-74fd357a="" data-v-796f1feb="">7,500원</del>
												</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__badge-group" style="margin-top: 12px;">
												<div data-v-2f2bc7d4="" data-v-74fd357a=""
													class="badge badge-food" data-v-796f1feb="">안전식품</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__review">
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-rating">
													<span data-v-ef94db98="" data-v-74fd357a=""
														data-value="4.9" class="ui_rating fr" data-v-796f1feb=""><i
														data-v-ef94db98="" data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i></span> <span data-v-74fd357a=""
														data-v-796f1feb="" class="review-count"> (132) </span>
												</div>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-comment">
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__badge">후기</div>
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__contents">얼음팩 녹지않고 말랑한 떡으로 잘
														왔어요. 맛있네요~ 잘 먹을게요!</div>
												</div>
											</div>
										</div></a>
								</div>
							</div>
						</div>
						<div data-v-d3c44402="" class="search-result-list__item--full">
							<div data-v-79ef34f6="" data-v-d3c44402=""
								class="showroom-search-list">
								<div data-v-79ef34f6="" class="header">
									<a data-v-79ef34f6=""
										href="/w/showroom/1710?keyword_channel=placeholder&amp;search_word=추석선물"
										target="_blank"><h2 data-v-c9688b12="" data-v-79ef34f6=""
											class="search-title">감사의 마음을 담아, 추석 프리미엄 선물🍁</h2></a> <a
										data-v-79ef34f6=""
										href="/w/showroom/1710?keyword_channel=placeholder&amp;search_word=추석선물"
										target="_blank" class="more-link">더 보기</a>
								</div>
								<div data-v-79ef34f6="" class="carousel-wrap">
									<div data-v-d48b6b90="" data-v-79ef34f6=""
										class="carousel-slider">
										<div data-v-25581d7d="" data-v-d48b6b90=""
											class="carousel-container">
											<div data-v-25581d7d="" class="sliding-area">
												<div data-v-25581d7d="" class="carousel"
													style="width: 100%; margin-left: 0%;">
													<!---->
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/779246a9-247a-46d9-bc6e-a520fa52d368?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/ae00a5c9cbd64d949c8b4b2f9a03b514_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">1등급 이상❤️​꽃마블 명품 한우
																			선물세트🥩</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="price-origin">86,500원</span>
																			<!---->
																			<!---->
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/6e42b99b-07ec-4881-a146-ae4636df8322?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/8d87afe9a03c48a7884200db6ba660f9_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">[상견례선물,추석선물]정성가득
																			도라지고 도라지청</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">22%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 69,000원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/25ba245f-2ef8-429c-b947-f501d7fadef7?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/3909b98327a24d8ab82ca5e63087ad66_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">💌추석예약할인💌🎁수제만두 고급
																			선물세트 8종🎁</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">25%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 53,900원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/30fe893c-0618-4837-b7e2-fbaaf7076761?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/3f17d4905a99445baeb448e561eb83d9_512.png&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">✨추석선물추천✨소행복
																			곶감단지10구세트 보자기+노리개</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="price-origin">60,000원</span>
																			<!---->
																			<!---->
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/37777ad2-38f6-4330-a4f7-cd8e0d9a2c67?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/eb0c1fa0c3fb4335b6a54f7e4df0965c_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">한약사의 황제옥진고 단지형🌼추석선물</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">29%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 99,000원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/30a282f3-b9bb-482c-beb4-a0d8ac2b9033?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/488a602a17f84ef2b18b4c81af90c27f_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">[추석선물세트]샤인머스캣2kg(특품
																			2-3송이)망고포도</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="price-origin">55,000원</span>
																			<!---->
																			<!---->
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/277e0e1b-3a42-4db5-be0d-e321f8ee1f70?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/ba64c3f871584273a26dba90aa911518_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">[예약할인] 🎁반건조 생선 선물
																			세트 A🎁 특별함</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">16%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 53,000원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/e18d378b-8101-42f8-98d6-40dc0bbf095f?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/90a541c2460b4988a4e7ebb512009d14_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">❤추선선물❤품절대란,완판행진!언양한우불고기,후기인증💘</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">35%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 55,000원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/03282607-30e1-4e47-92f7-66181e209d5c?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/7fe7e3a3d31545c5b57026ef5cae678c_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">예담가 추석선물 6호 (9월 15일
																			마지막 예약발송)</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">17%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 54,000원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/5fc7f6fe-2354-4c19-8165-c27f0d70c52d?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/7f47be4cc3ed40c7a060466ee5c2924b_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">(추석선물) 기혈보충 녹용홍삼</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">50%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 42,500원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/463fda16-dd6d-48dd-bb8f-3a42a32919a7?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/5adc8a49b6614b85ba27215442479d05_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">✨명절선물세트 : 최고급 꽃등심
																			(구이용) 🥩🎁</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">31%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 125,000원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/87ef03bf-97ff-42e6-88b5-f72dba271d8a?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/9a421c88b5134bbe9b5a55a2e2a235ba_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">추석부모님선물세트할인🎁1+등급
																			한우🎁감사한우세트 1</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">20%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 127,000원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/e27360aa-2f23-440e-8ecd-35c089f80aea?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/0e0bee7decb94900b955fb830a21c28f_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">추석예약 🎁인삼정과 🎁</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="price-origin">59,000원</span>
																			<!---->
																			<!---->
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/11d1ba29-8640-4803-8c91-7d880d26a660?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/30a7ff713afc4bf8a00ebc584275b03b_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">1등급 이상❤️​초특급 VIP⭐️
																			명품 한우 선물세트</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="price-origin">150,000원</span>
																			<!---->
																			<!---->
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/7a4764f5-3730-4b0c-aadd-3a5ab128885e?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/018966ef0e1843a4b2152f980cdbe6fc_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">✨명절선물세트: 최고급
																			꽃등심+눈꽃갈비살 1.5kg🥩</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">32%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 170,000원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/bd28e21e-e78c-4296-ae61-1f48da56bbe2?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/56dbb56b8eb7472280c5ff0ae57e6be7_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">(추석)한우 특모듬</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">18%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 99,000원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/dd8b5e2b-4475-43b8-8e71-8fec4627722b?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/686e69fa268c49b8b263df36352a28aa_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">추석부모님선물세트할인🎁
																			1+등급한우🎁감사한우세트 2</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">20%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 148,000원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/e0b55f93-4e8c-4abd-976b-b6bcd5055ce2?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/996b6a906c3949fd9d172c0cc3c3bc1d_512.png&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">[집밥고수] 찐보리굴비(비늘제거)
																			선물세트</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">24%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 65,000원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/e9ced152-bc3f-4020-88dc-e9c71d7d5b28?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/3f85009870374c6195579f09b16d57b3_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">추석예약🎁인삼정과&amp;홍삼양갱
																			🎁</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="price-origin">65,000원</span>
																			<!---->
																			<!---->
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/ceab3207-1862-462d-8eb1-beb44a2231ec?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/78dd4505605644a5b5177c42ef360f95_512.png&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">[추석예약마감] 💖 900g
																			복도라지정과</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="price-origin">50,000원</span>
																			<!---->
																			<!---->
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;"></div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;"></div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;"></div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;"></div>
													<button data-v-25581d7d="" type="button" aria-label="다음"
														class="carousel__arrow--right">
														<i data-v-25581d7d="" class="idus-icon-arrow-right"></i>
													</button>
												</div>
											</div>
										</div>
										<!---->
									</div>
								</div>
							</div>
						</div>
						<div data-v-d3c44402="" class="search-result-list__item--grid">
							<div data-v-d3c44402="" class="search-product-card">
								<div data-v-796f1feb="" data-v-74fd357a=""
									class="base-card card--vertical product">
									<a data-v-796f1feb=""
										href="/w/product/639717b5-aa4b-4783-849f-9a190e0c2bb6?keyword_channel=placeholder&amp;search_word=추석선물"
										target="_blank"><div data-v-796f1feb=""
											class="card-thumb-cover">
											<div data-v-74fd357a="" data-v-796f1feb=""
												id="thumb-639717b5-aa4b-4783-849f-9a190e0c2bb6"
												class="product-thumb-img"
												style="background-image: url(&quot;https://image.idus.com/image/files/e963e1c165334da398d595bbe32356ee_512.png&quot;);"></div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-bookmark">
												<button data-v-488f5f82="" data-v-74fd357a=""
													aria-label="찜하기" class="full-button" data-v-796f1feb=""
													style="width: 24px; height: 24px;">
													<i data-v-74fd357a="" data-v-488f5f82=""
														class="sp-icon icon-favorite"></i>
												</button>
											</div>
										</div>
										<div data-v-796f1feb="" class="card-info product-info">
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__artist-name">너랑나 달달해</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__name">추석예약🔆달달버터쿠키🔆</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__price">
												<!---->
												<span data-v-74fd357a="" data-v-796f1feb=""
													class="price-origin"> 15,000 <span
													data-v-74fd357a="" data-v-796f1feb=""
													style="font-size: 14px;">원</span></span>
												<!---->
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__badge-group" style="margin-top: 8px;">
												<div data-v-2f2bc7d4="" data-v-74fd357a=""
													class="badge badge-food" data-v-796f1feb="">안전식품</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__review">
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-rating">
													<span data-v-ef94db98="" data-v-74fd357a=""
														data-value="4.8" class="ui_rating fr" data-v-796f1feb=""><i
														data-v-ef94db98="" data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i></span> <span data-v-74fd357a=""
														data-v-796f1feb="" class="review-count"> (1360) </span>
												</div>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-comment">
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__badge">후기</div>
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__contents">리본을 너무 이쁘게 묶어주셔서 둘다
														선물을 해야하나 고민하다 하나 선물하고 하나 풀어서 먹었어요. 네가지 맛보다보면 금방 바닥이네요.</div>
												</div>
											</div>
										</div></a>
								</div>
							</div>
						</div>
						<div data-v-d3c44402="" class="search-result-list__item--grid">
							<div data-v-d3c44402="" class="search-product-card">
								<div data-v-796f1feb="" data-v-74fd357a=""
									class="base-card card--vertical product">
									<a data-v-796f1feb=""
										href="/w/product/f85249fd-18f7-4b5d-8ed2-e68967709781?keyword_channel=placeholder&amp;search_word=추석선물"
										target="_blank"><div data-v-796f1feb=""
											class="card-thumb-cover">
											<div data-v-74fd357a="" data-v-796f1feb=""
												id="thumb-f85249fd-18f7-4b5d-8ed2-e68967709781"
												class="product-thumb-img"
												style="background-image: url(&quot;https://image.idus.com/image/files/740787d0a4ea4306a9046da31eac1e53_512.jpg&quot;);"></div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-bookmark">
												<button data-v-488f5f82="" data-v-74fd357a=""
													aria-label="찜하기" class="full-button" data-v-796f1feb=""
													style="width: 24px; height: 24px;">
													<i data-v-74fd357a="" data-v-488f5f82=""
														class="sp-icon icon-favorite"></i>
												</button>
											</div>
										</div>
										<div data-v-796f1feb="" class="card-info product-info">
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__artist-name">강릉 바롬한과</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__name">[추석선물] 한과 실속 선물세트 - 소중함</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__price">
												<span data-v-74fd357a="" data-v-796f1feb=""
													class="sale-rate"> 3% </span> <span data-v-74fd357a=""
													data-v-796f1feb="" class="price-sale"> 29,000 <span
													data-v-74fd357a="" data-v-796f1feb=""
													style="font-size: 14px;">원</span></span>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="price-origin--before-sale">
													<del data-v-74fd357a="" data-v-796f1feb="">30,000원</del>
												</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__badge-group" style="margin-top: 12px;">
												<div data-v-2f2bc7d4="" data-v-74fd357a=""
													class="badge badge-food" data-v-796f1feb="">안전식품</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__review">
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-rating">
													<span data-v-ef94db98="" data-v-74fd357a=""
														data-value="4.9" class="ui_rating fr" data-v-796f1feb=""><i
														data-v-ef94db98="" data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i></span> <span data-v-74fd357a=""
														data-v-796f1feb="" class="review-count"> (160) </span>
												</div>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-comment">
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__badge">후기</div>
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__contents">부더럽고 적당한 단맛 좋아 요</div>
												</div>
											</div>
										</div></a>
								</div>
							</div>
						</div>
						<div data-v-d3c44402="" class="search-result-list__item--grid">
							<div data-v-d3c44402="" class="search-product-card">
								<div data-v-796f1feb="" data-v-74fd357a=""
									class="base-card card--vertical product">
									<a data-v-796f1feb=""
										href="/w/product/9b430be0-3e72-420e-aa34-bafe9f2e6022?keyword_channel=placeholder&amp;search_word=추석선물"
										target="_blank"><div data-v-796f1feb=""
											class="card-thumb-cover">
											<div data-v-74fd357a="" data-v-796f1feb=""
												id="thumb-9b430be0-3e72-420e-aa34-bafe9f2e6022"
												class="product-thumb-img"
												style="background-image: url(&quot;https://image.idus.com/image/files/2d952865873f4b8ca3bbcc20600d634d_512.jpg&quot;);"></div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-bookmark">
												<button data-v-488f5f82="" data-v-74fd357a=""
													aria-label="찜하기" class="full-button" data-v-796f1feb=""
													style="width: 24px; height: 24px;">
													<i data-v-74fd357a="" data-v-488f5f82=""
														class="sp-icon icon-favorite"></i>
												</button>
											</div>
										</div>
										<div data-v-796f1feb="" class="card-info product-info">
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__artist-name">스위트레드빈</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__name">수제양갱세트(5가지맛-30개입)상견례선물❤</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__price">
												<!---->
												<span data-v-74fd357a="" data-v-796f1feb=""
													class="price-origin"> 36,000 <span
													data-v-74fd357a="" data-v-796f1feb=""
													style="font-size: 14px;">원</span></span>
												<!---->
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__badge-group" style="margin-top: 8px;">
												<div data-v-2f2bc7d4="" data-v-74fd357a=""
													class="badge badge-food" data-v-796f1feb="">안전식품</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__review">
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-rating">
													<span data-v-ef94db98="" data-v-74fd357a="" data-value="5"
														class="ui_rating fr" data-v-796f1feb=""><i
														data-v-ef94db98="" data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i></span> <span data-v-74fd357a=""
														data-v-796f1feb="" class="review-count"> (137) </span>
												</div>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-comment">
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__badge">후기</div>
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__contents">선물용으로 구매했는데 양갱이도
														맛있다고들 하고, 포장도 너무 예쁘네요 ㅎㅎ !! 추천합니다아!</div>
												</div>
											</div>
										</div></a>
								</div>
							</div>
						</div>
						<div data-v-d3c44402="" class="search-result-list__item--grid">
							<div data-v-d3c44402="" class="search-product-card">
								<div data-v-796f1feb="" data-v-74fd357a=""
									class="base-card card--vertical product">
									<a data-v-796f1feb=""
										href="/w/product/b772e5e8-345f-478b-ac62-a4300982bdb6?keyword_channel=placeholder&amp;search_word=추석선물"
										target="_blank"><div data-v-796f1feb=""
											class="card-thumb-cover">
											<div data-v-74fd357a="" data-v-796f1feb=""
												id="thumb-b772e5e8-345f-478b-ac62-a4300982bdb6"
												class="product-thumb-img"
												style="background-image: url(&quot;https://image.idus.com/image/files/85e4924d54db42f8b9aae200fb741ce3_512.png&quot;);"></div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-bookmark">
												<button data-v-488f5f82="" data-v-74fd357a=""
													aria-label="찜하기" class="full-button" data-v-796f1feb=""
													style="width: 24px; height: 24px;">
													<i data-v-74fd357a="" data-v-488f5f82=""
														class="sp-icon icon-favorite"></i>
												</button>
											</div>
										</div>
										<div data-v-796f1feb="" class="card-info product-info">
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__artist-name">시루아네</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__name">[추석할인] 시루아네 담음 종합세트(40구)</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__price">
												<span data-v-74fd357a="" data-v-796f1feb=""
													class="sale-rate"> 23% </span> <span data-v-74fd357a=""
													data-v-796f1feb="" class="price-sale"> 37,000 <span
													data-v-74fd357a="" data-v-796f1feb=""
													style="font-size: 14px;">원</span></span>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="price-origin--before-sale">
													<del data-v-74fd357a="" data-v-796f1feb="">48,000원</del>
												</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__badge-group" style="margin-top: 12px;">
												<div data-v-2f2bc7d4="" data-v-74fd357a=""
													class="badge badge-delivery" data-v-796f1feb="">무료배송
												</div>
												<div data-v-2f2bc7d4="" data-v-74fd357a=""
													class="badge badge-food" data-v-796f1feb="">안전식품</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__review">
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-rating">
													<span data-v-ef94db98="" data-v-74fd357a=""
														data-value="4.9" class="ui_rating fr" data-v-796f1feb=""><i
														data-v-ef94db98="" data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i></span> <span data-v-74fd357a=""
														data-v-796f1feb="" class="review-count"> (580) </span>
												</div>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-comment">
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__badge">후기</div>
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__contents">떡은 너무 만족스러워요 바쁘시더라도
														신경많이써주세요 번창하세요</div>
												</div>
											</div>
										</div></a>
								</div>
							</div>
						</div>
						<div data-v-d3c44402="" class="search-result-list__item--grid">
							<div data-v-d3c44402="" class="search-product-card">
								<div data-v-796f1feb="" data-v-74fd357a=""
									class="base-card card--vertical product">
									<a data-v-796f1feb=""
										href="/w/product/f1da2013-ff48-4e71-9605-71719d69edfc?keyword_channel=placeholder&amp;search_word=추석선물"
										target="_blank"><div data-v-796f1feb=""
											class="card-thumb-cover">
											<div data-v-74fd357a="" data-v-796f1feb=""
												id="thumb-f1da2013-ff48-4e71-9605-71719d69edfc"
												class="product-thumb-img"
												style="background-image: url(&quot;https://image.idus.com/image/files/f4b4b5dd1d9e4f119570b9bc010776da_512.jpg&quot;);"></div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-bookmark">
												<button data-v-488f5f82="" data-v-74fd357a=""
													aria-label="찜하기" class="full-button" data-v-796f1feb=""
													style="width: 24px; height: 24px;">
													<i data-v-74fd357a="" data-v-488f5f82=""
														class="sp-icon icon-favorite"></i>
												</button>
											</div>
										</div>
										<div data-v-796f1feb="" class="card-info product-info">
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__artist-name">라온다온</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__name">고급추석선물🎁무설탕
												수제양갱🌹12구25g쇼핑백드림</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__price">
												<span data-v-74fd357a="" data-v-796f1feb=""
													class="sale-rate"> 16% </span> <span data-v-74fd357a=""
													data-v-796f1feb="" class="price-sale"> 21,000 <span
													data-v-74fd357a="" data-v-796f1feb=""
													style="font-size: 14px;">원</span></span>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="price-origin--before-sale">
													<del data-v-74fd357a="" data-v-796f1feb="">25,000원</del>
												</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__badge-group" style="margin-top: 12px;">
												<div data-v-2f2bc7d4="" data-v-74fd357a=""
													class="badge badge-food" data-v-796f1feb="">안전식품</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__review">
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-rating">
													<span data-v-ef94db98="" data-v-74fd357a=""
														data-value="4.8" class="ui_rating fr" data-v-796f1feb=""><i
														data-v-ef94db98="" data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i></span> <span data-v-74fd357a=""
														data-v-796f1feb="" class="review-count"> (138) </span>
												</div>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-comment">
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__badge">후기</div>
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__contents">많이 달지 않고 맛있습니다. 색깔이
														이뻐서 마음에 들어요. 꽃차와 함께하니 더 좋네요ㅎ</div>
												</div>
											</div>
										</div></a>
								</div>
							</div>
						</div>
						<div data-v-d3c44402="" class="search-result-list__item--grid">
							<div data-v-d3c44402="" class="search-product-card">
								<div data-v-796f1feb="" data-v-74fd357a=""
									class="base-card card--vertical product">
									<a data-v-796f1feb=""
										href="/w/product/9fcb2152-cb02-490c-b839-dba81c66e160?keyword_channel=placeholder&amp;search_word=추석선물"
										target="_blank"><div data-v-796f1feb=""
											class="card-thumb-cover">
											<div data-v-74fd357a="" data-v-796f1feb=""
												id="thumb-9fcb2152-cb02-490c-b839-dba81c66e160"
												class="product-thumb-img"
												style="background-image: url(&quot;https://image.idus.com/image/files/78815aa1431e4befa7545613b8794bce_512.jpg&quot;);"></div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-bookmark">
												<button data-v-488f5f82="" data-v-74fd357a=""
													aria-label="찜하기" class="full-button" data-v-796f1feb=""
													style="width: 24px; height: 24px;">
													<i data-v-74fd357a="" data-v-488f5f82=""
														class="sp-icon icon-favorite"></i>
												</button>
											</div>
										</div>
										<div data-v-796f1feb="" class="card-info product-info">
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__artist-name">디디얌</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__name">10일출고 추석선물🎁디디얌 마카롱 수제 뚱카롱
												24종</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__price">
												<span data-v-74fd357a="" data-v-796f1feb=""
													class="sale-rate"> 6% </span> <span data-v-74fd357a=""
													data-v-796f1feb="" class="price-sale"> 1,600 <span
													data-v-74fd357a="" data-v-796f1feb=""
													style="font-size: 14px;">원</span></span>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="price-origin--before-sale">
													<del data-v-74fd357a="" data-v-796f1feb="">1,700원</del>
												</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__badge-group" style="margin-top: 12px;">
												<div data-v-2f2bc7d4="" data-v-74fd357a=""
													class="badge badge-food" data-v-796f1feb="">안전식품</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__review">
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-rating">
													<span data-v-ef94db98="" data-v-74fd357a=""
														data-value="4.8" class="ui_rating fr" data-v-796f1feb=""><i
														data-v-ef94db98="" data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i></span> <span data-v-74fd357a=""
														data-v-796f1feb="" class="review-count"> (4773) </span>
												</div>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-comment">
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__badge">후기</div>
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__contents">맛있어요!!!! 재구매할게요 ㅎㅎ
													</div>
												</div>
											</div>
										</div></a>
								</div>
							</div>
						</div>
						<div data-v-d3c44402="" class="search-result-list__item--grid">
							<div data-v-d3c44402="" class="search-product-card">
								<div data-v-796f1feb="" data-v-74fd357a=""
									class="base-card card--vertical product">
									<a data-v-796f1feb=""
										href="/w/product/85276990-dfb3-4e37-8435-ecb8299d6c83?keyword_channel=placeholder&amp;search_word=추석선물"
										target="_blank"><div data-v-796f1feb=""
											class="card-thumb-cover">
											<div data-v-74fd357a="" data-v-796f1feb=""
												id="thumb-85276990-dfb3-4e37-8435-ecb8299d6c83"
												class="product-thumb-img"
												style="background-image: url(&quot;https://image.idus.com/image/files/c313ea100d394089a32b72fc61f4309d_512.jpg&quot;);"></div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-bookmark">
												<button data-v-488f5f82="" data-v-74fd357a=""
													aria-label="찜하기" class="full-button" data-v-796f1feb=""
													style="width: 24px; height: 24px;">
													<i data-v-74fd357a="" data-v-488f5f82=""
														class="sp-icon icon-favorite"></i>
												</button>
											</div>
										</div>
										<div data-v-796f1feb="" class="card-info product-info">
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__artist-name">마미스쿠킹</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__name">[추석선물]🎈중독성강한 수제약과 🎈</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__price">
												<span data-v-74fd357a="" data-v-796f1feb=""
													class="sale-rate"> 8% </span> <span data-v-74fd357a=""
													data-v-796f1feb="" class="price-sale"> 12,000 <span
													data-v-74fd357a="" data-v-796f1feb=""
													style="font-size: 14px;">원</span></span>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="price-origin--before-sale">
													<del data-v-74fd357a="" data-v-796f1feb="">13,000원</del>
												</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__badge-group" style="margin-top: 12px;">
												<div data-v-2f2bc7d4="" data-v-74fd357a=""
													class="badge badge-food" data-v-796f1feb="">안전식품</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__review">
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-rating">
													<span data-v-ef94db98="" data-v-74fd357a=""
														data-value="4.8" class="ui_rating fr" data-v-796f1feb=""><i
														data-v-ef94db98="" data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i></span> <span data-v-74fd357a=""
														data-v-796f1feb="" class="review-count"> (340) </span>
												</div>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-comment">
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__badge">후기</div>
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__contents">아주 맛있어요. 요즘 약과는 너무
														달거나 딱딱해서 어릴적에 먹던 맛이 제대로 나지 않았는데 이건 추억이 떠오르는 맛이에요.</div>
												</div>
											</div>
										</div></a>
								</div>
							</div>
						</div>
						<div data-v-d3c44402="" class="search-result-list__item--grid">
							<div data-v-d3c44402="" class="search-product-card">
								<div data-v-796f1feb="" data-v-74fd357a=""
									class="base-card card--vertical product">
									<a data-v-796f1feb=""
										href="/w/product/5f3a8b4c-c382-4828-9404-b33c34603baa?keyword_channel=placeholder&amp;search_word=추석선물"
										target="_blank"><div data-v-796f1feb=""
											class="card-thumb-cover">
											<div data-v-74fd357a="" data-v-796f1feb=""
												id="thumb-5f3a8b4c-c382-4828-9404-b33c34603baa"
												class="product-thumb-img"
												style="background-image: url(&quot;https://image.idus.com/image/files/340b55483b3b4e4986d7712f55bee3e1_512.jpg&quot;);"></div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-bookmark">
												<button data-v-488f5f82="" data-v-74fd357a=""
													aria-label="찜하기" class="full-button" data-v-796f1feb=""
													style="width: 24px; height: 24px;">
													<i data-v-74fd357a="" data-v-488f5f82=""
														class="sp-icon icon-favorite"></i>
												</button>
											</div>
										</div>
										<div data-v-796f1feb="" class="card-info product-info">
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__artist-name">소드락이</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__name">버터풍미 가득~ 516쿠키 오리지널</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__price">
												<!---->
												<span data-v-74fd357a="" data-v-796f1feb=""
													class="price-origin"> 13,000 <span
													data-v-74fd357a="" data-v-796f1feb=""
													style="font-size: 14px;">원</span></span>
												<!---->
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__badge-group" style="margin-top: 8px;">
												<div data-v-2f2bc7d4="" data-v-74fd357a=""
													class="badge badge-food" data-v-796f1feb="">안전식품</div>
											</div>
											<div data-v-74fd357a="" data-v-796f1feb=""
												class="product-info__review">
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-rating">
													<span data-v-ef94db98="" data-v-74fd357a=""
														data-value="4.8" class="ui_rating fr" data-v-796f1feb=""><i
														data-v-ef94db98="" data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i><i data-v-ef94db98=""
														data-state="active"
														class="ui_icon--star idus-icon-star-fill"
														style="font-size: 11px;"></i></span> <span data-v-74fd357a=""
														data-v-796f1feb="" class="review-count"> (308) </span>
												</div>
												<div data-v-74fd357a="" data-v-796f1feb=""
													class="review-comment">
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__badge">후기</div>
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="review-comment__contents">5개정도 깨져서 와서 아쉽긴했디만
														넘맛있네요</div>
												</div>
											</div>
										</div></a>
								</div>
							</div>
						</div>
						<div data-v-d3c44402=""
							class="search-result-list__item--full last">
							<div data-v-79ef34f6="" data-v-d3c44402=""
								class="showroom-search-list">
								<div data-v-79ef34f6="" class="header">
									<a data-v-79ef34f6=""
										href="/w/showroom/1709?keyword_channel=placeholder&amp;search_word=추석선물"
										target="_blank"><h2 data-v-c9688b12="" data-v-79ef34f6=""
											class="search-title">🍁추석 선물 예약 할인 기획전🍁</h2></a> <a
										data-v-79ef34f6=""
										href="/w/showroom/1709?keyword_channel=placeholder&amp;search_word=추석선물"
										target="_blank" class="more-link">더 보기</a>
								</div>
								<div data-v-79ef34f6="" class="carousel-wrap">
									<div data-v-d48b6b90="" data-v-79ef34f6=""
										class="carousel-slider">
										<div data-v-25581d7d="" data-v-d48b6b90=""
											class="carousel-container">
											<div data-v-25581d7d="" class="sliding-area">
												<div data-v-25581d7d="" class="carousel"
													style="width: 100%; margin-left: 0%;">
													<!---->
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/c3d2ea5b-644b-4f80-8c6a-4a565a6624d6?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/746da5a9dc3b4e5c81c577df879fe27a_512.png&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">[예약할인]3대가 이어온 수제약과</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">20%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 15,900원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/cbf62717-be0e-4598-84a0-b198ce3458de?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/a179a3ef791d4bbdb42bf3bddefbdd21_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">[추석]❤️앙꼬절편 4종
																			떡(흰팥,쑥팥,고구마,흑임자)</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">40%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 4,500원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/25ba245f-2ef8-429c-b947-f501d7fadef7?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/3909b98327a24d8ab82ca5e63087ad66_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">💌추석예약할인💌🎁수제만두 고급
																			선물세트 8종🎁</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">25%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 53,900원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/463fda16-dd6d-48dd-bb8f-3a42a32919a7?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/5adc8a49b6614b85ba27215442479d05_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">✨명절선물세트 : 최고급 꽃등심
																			(구이용) 🥩🎁</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">31%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 125,000원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/87ef03bf-97ff-42e6-88b5-f72dba271d8a?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/9a421c88b5134bbe9b5a55a2e2a235ba_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">추석부모님선물세트할인🎁1+등급
																			한우🎁감사한우세트 1</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">20%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 127,000원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/001351c4-51f2-4f5e-b5cf-63782adf8fac?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/a1a5a63268d245aa8e24ba93d190fb97_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">🔥추석할인,입에서살살녹는🔥한우최고품질!언양떡갈비❤</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">47%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 7,900원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/b772e5e8-345f-478b-ac62-a4300982bdb6?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/85e4924d54db42f8b9aae200fb741ce3_512.png&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">[추석할인] 시루아네 담음
																			종합세트(40구)</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">23%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 37,000원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/ce5fe605-6c4c-4b8e-9fb2-8aa379e509b3?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/fa13bb09ca6644e6a0c95a74b02096f2_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">&lt;추석선물&gt;미니 과일뇌물
																			용돈박스3탄</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">58%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 7,900원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/d42eb04a-4feb-41cf-8d42-d483d2ad0a87?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/6ac648ec0a23424db5c1cd92347c448b_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">&lt;추석선물&gt;미니 과일뇌물
																			용돈박스1탄,미니사과박스</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">60%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 5,900원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/cbfda0ce-8f63-4f8c-b8f1-769aa8a32676?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/6ab157cb03e8407890bbfe4b05749d44_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">💌추석예약할인💌🎁수제만두 고급
																			선물세트 6종🎁</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">27%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 39,700원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/72bbe6bf-8ff0-4419-be90-b1e0df855cce?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/acb8c94505444396807c25e2887fdd77_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">국산 도라지정과 감사선물세트💜간편한
																			추석선물 예약🎁</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">37%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 15,900원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/ea989439-676a-44d5-af87-e9732c0804f6?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/a14e6fa8505e4bdb9189280e57c4b6fe_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">[추석예약할인]1구3500원🎁선물포장포함🎁절편비누</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">16%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 5,900원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/6457366b-e285-45ab-b038-8634dc3ba74e?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/a0b096a71fe947a997b4b2dabd1a3e48_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">&lt;추석선물&gt;미니 과일뇌물
																			용돈박스2탄</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">53%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 7,900원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/29fb3790-e914-4564-bbe0-5e424faf00b7?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/62e6f7bf599147d3a90659b6971625e8_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">홍도라지생강진액청💜커피 대신
																			마셔요👍추석선물 예약</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">35%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 19,900원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/046e334b-6b1d-451b-972a-a1601034f9f4?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/7c7abeb01301497b8bdd81b71e654b94_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">[추석할인] 시루아네
																			정성종합세트(개별포장, 24개입)</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">24%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 25,000원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/47f9e1b7-8d44-49cc-ae0e-b53e733d7888?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/be2c2de3d7e743e880e65df5cdec7abc_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">[5+1] 추석선물 더치커피 6종
																			선물세트</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">49%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 10,000원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/82fb28c8-7e6a-444f-b375-19fa10f464ae?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/16923dfff30f4e42a2dd964ce3ce75f7_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">[추석할인] 시루아네
																			카스테라앙절미(40구)</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">16%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 16,800원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/24e41816-354e-448e-b24e-f38919038445?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/4ad2c43de6834f5e8bee8312b2b26e5f_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">[추석선물] 욱신거리는 손목을 위한
																			팥찜질팩</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">20%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 30,400원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/a5037a22-9dcd-4ed9-90fe-ee2f92e4c713?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/93f6dd69e3944f2c9aa74b0c910c405f_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">(기획전할인) 장수명월초(당뇨초)</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">50%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 27,000원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;">
														<div data-v-d48b6b90="" data-v-25581d7d=""
															class="slide_item">
															<div data-v-796f1feb="" data-v-bb115d94=""
																data-v-79ef34f6=""
																class="base-card card--vertical product--recommended"
																data-v-25581d7d="">
																<a data-v-796f1feb=""
																	href="/w/product/c2681596-227f-4b06-a558-296e711cf910?keyword_channel=placeholder&amp;search_word=추석선물"
																	target="_blank"><div data-v-796f1feb=""
																		class="card-thumb-cover">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-thumb-img"
																			style="background-image: url(&quot;https://image.idus.com/image/files/27f8c65fd16947b292f01e7d548c5008_512.jpg&quot;);"></div>
																	</div>
																	<div data-v-796f1feb="" class="card-info product-info">
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__name">♥예약할인♥ 각인 가죽 용돈봉투
																			용돈박스 장지갑</div>
																		<div data-v-bb115d94="" data-v-796f1feb=""
																			class="product-info__price">
																			<!---->
																			<span data-v-bb115d94="" data-v-796f1feb=""
																				class="sale-rate">46%</span> <span
																				data-v-bb115d94="" data-v-796f1feb=""
																				class="price-sale"> 3,800원</span>
																		</div>
																	</div></a>
															</div>
														</div>
													</div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;"></div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;"></div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;"></div>
													<div data-v-25581d7d="" class="carousel__wrapper"
														style="width: calc(12.5% - 16px); margin-right: 16px; display: none;"></div>
													<button data-v-25581d7d="" type="button" aria-label="다음"
														class="carousel__arrow--right">
														<i data-v-25581d7d="" class="idus-icon-arrow-right"></i>
													</button>
												</div>
											</div>
										</div>
										<!---->
									</div>
								</div>
							</div>
						</div>
						<div data-v-70d95496="" data-v-d3c44402="" data-ui="scroll-paging"
							data-type="vue" class="scroll-pagination">
							<div data-v-70d95496="" id="scroll-pagination-marker"></div>
							<!---->
						</div>
					</div>
				</div>




			</div>
		</div>
		<!-- 공용 -->
		<script>
			var filterList = [
					{
						"type" : "RADIO",
						"section" : "DELIVERY",
						"label" : "\ubc30\uc1a1\ube44",
						"items" : [
								{
									"query" : "",
									"label" : "\uc804\uccb4"
								},
								{
									"query" : "is_delivery_free=1",
									"label" : "\ub9cc \ubcf4\uae30",
									"badge" : {
										"label" : "\ubb34\ub8cc\ubc30\uc1a1",
										"type" : "DELIVERY"
									}
								},
								{
									"query" : "artist_delivery_style=0&artist_delivery_fee__lte=2500",
									"label" : "2,500\uc6d0 \uc774\ud558\ub9cc \ubcf4\uae30"
								},
								{
									"query" : "artist_delivery_style=0&artist_delivery_fee__lte=3000",
									"label" : "3,000\uc6d0 \uc774\ud558\ub9cc \ubcf4\uae30"
								} ]
					},
					{
						"type" : "RADIO",
						"section" : "SORT",
						"label" : "\uc815\ub82c",
						"items" : [
								{
									"query" : "sort=-POPULAR",
									"label" : "\uc778\uae30\uc21c"
								},
								{
									"query" : "sort=-CREATED_AT",
									"label" : "\ucd5c\uc2e0\uc21c (NEW)"
								},
								{
									"query" : "sort=-FAVORITE",
									"label" : "\ucc1c \ub9ce\uc740 \uc21c"
								},
								{
									"query" : "sort=-REVIEW",
									"label" : "\uad6c\ub9e4\ud6c4\uae30\uac00 \ub9ce\uc740 \uc21c"
								},
								{
									"query" : "sort=-PURCHASE",
									"label" : "\ud310\ub9e4\uc218\uac00 \ub9ce\uc740 \uc21c"
								}, {
									"query" : "sort=-SALE_RATE",
									"label" : "\ud560\uc778 \ub192\uc740\uc21c"
								}, {
									"query" : "sort=PRICE",
									"label" : "\ub0ae\uc740 \uac00\uaca9\uc21c"
								}, {
									"query" : "sort=-PRICE",
									"label" : "\ub192\uc740 \uac00\uaca9\uc21c"
								} ]
					},
					{
						"type" : "RADIO",
						"section" : "SALE_RATE",
						"label" : "\ud560\uc778\uc728",
						"items" : [ {
							"query" : "",
							"label" : "\uc804\uccb4"
						}, {
							"query" : "sale_state=1&sale_rate__gte=50",
							"label" : "50% \uc774\uc0c1 \ud560\uc778"
						}, {
							"query" : "sale_state=1&sale_rate__gte=30",
							"label" : "30% \uc774\uc0c1 \ud560\uc778"
						}, {
							"query" : "sale_state=1&sale_rate__gte=20",
							"label" : "20% \uc774\uc0c1 \ud560\uc778"
						}, {
							"query" : "sale_state=1&sale_rate__gte=10",
							"label" : "10% \uc774\uc0c1 \ud560\uc778"
						} ]
					},
					{
						"type" : "CHECKBOX",
						"section" : "PRICE",
						"label" : "\uac00\uaca9\ub300",
						"items" : [ {
							"query" : "price__lte=15000",
							"label" : "1\ub9cc 5\ucc9c\uc6d0 \uc774\ud558"
						}, {
							"query" : "price__gte=15000&price__lte=30000",
							"label" : "1\ub9cc 5\ucc9c\uc6d0 ~ 3\ub9cc\uc6d0"
						}, {
							"query" : "price__gte=30000&price__lte=45000",
							"label" : "3\ub9cc\uc6d0 ~ 4\ub9cc 5\ucc9c\uc6d0"
						}, {
							"query" : "price__gte=45000&price__lte=60000",
							"label" : "4\ub9cc 5\ucc9c\uc6d0 ~ 6\ub9cc\uc6d0"
						}, {
							"query" : "price__gte=60000",
							"label" : "6\ub9cc\uc6d0 \uc774\uc0c1"
						} ]
					},
					{
						"type" : "CHECKBOX",
						"section" : "CATEGORY",
						"label" : "\uce74\ud14c\uace0\ub9ac",
						"items" : [
								{
									"query" : "category_uuid=5c6bc7d4-7760-4702-b63f-7f29eca479e3",
									"label" : "\ub514\uc800\ud2b8, \ubca0\uc774\ucee4\ub9ac, \ub5a1"
								},
								{
									"query" : "category_uuid=613ac4c3-df73-4a0f-b3dd-362849dabb2a",
									"label" : "\uc74c\ub8cc (\ucee4\ud53c, \ucc28 \ub4f1)"
								},
								{
									"query" : "category_uuid=fa340e0b-f4b1-4aba-8d9c-a29086d5a8a4",
									"label" : "\uc804\ud1b5\uc8fc"
								},
								{
									"query" : "category_uuid=b3f853b9-333d-4eec-ad04-e4604d9d501b",
									"label" : "\uc218\uc81c \ubc18\ucc2c"
								},
								{
									"query" : "category_uuid=8daa0fc3-d370-46c5-a58b-9a0c71a6ae08",
									"label" : "\uadf8 \uc678 \uc218\uc81c\uba39\uac70\ub9ac"
								},
								{
									"query" : "category_uuid=4a8cbc36-3af8-4b75-af01-8795782df80d",
									"label" : "\ub18d\ucd95\uc218\uc0b0\ubb3c"
								},
								{
									"query" : "category_uuid=d9e8a56d-ae4c-4020-b043-9417fe26fbec",
									"label" : "\uc758\ub958, \ud648\uc6e8\uc5b4"
								},
								{
									"query" : "category_uuid=1616d42d-ea77-11e4-88d5-06530c0000b4",
									"label" : "\ud328\uc158\uc7a1\ud654"
								},
								{
									"query" : "category_uuid=a9970f75-ea75-11e4-8a46-06fd000000c2",
									"label" : "\uc9c0\uac11 (\uc9c0\ud3d0,\uce74\ub4dc,\ub3d9\uc804,\uba85\ud568)"
								},
								{
									"query" : "category_uuid=bc5f4be5-c6bc-11e3-8b03-06fd000000c2",
									"label" : "\uac00\ubc29, \ud30c\uc6b0\uce58"
								},
								{
									"query" : "category_uuid=bc6a17ba-ea75-11e4-8878-06a6fa0000b9",
									"label" : "\uc2dc\uacc4"
								},
								{
									"query" : "category_uuid=8b4bf95d-c6bc-11e3-8577-06f4fe0000b5",
									"label" : "\uc12c\uc720, \ud03c\ud2b8"
								},
								{
									"query" : "category_uuid=1fc3c71a-88d6-4333-a09e-178e85bb742f",
									"label" : "\ub0a8\uc131 \uc218\uc81c\ud654"
								},
								{
									"query" : "category_uuid=65477a55-7f4f-4a0f-9b05-dcaa271a8385",
									"label" : "\uc5ec\uc131 \uc218\uc81c\ud654"
								},
								{
									"query" : "category_uuid=0556009b-f9c6-11e3-8363-06fd000000c2",
									"label" : "\uc721\uc544, \uc544\ub3d9"
								},
								{
									"query" : "category_uuid=387867a4-0da4-11e4-873e-06f4fe0000b5",
									"label" : "\ubc18\uc9c0"
								},
								{
									"query" : "category_uuid=ac599662-0cdf-11e4-85f1-06fd000000c2",
									"label" : "\uadc0\uac78\uc774"
								},
								{
									"query" : "category_uuid=aef50134-0cdf-11e4-8182-06530c0000b4",
									"label" : "\ubaa9\uac78\uc774"
								},
								{
									"query" : "category_uuid=b12b42eb-0cdf-11e4-85f1-06fd000000c2",
									"label" : "\ud314\ucc0c"
								},
								{
									"query" : "category_uuid=f0475fb1-c6bb-11e3-954e-06a6fa0000b9",
									"label" : "\uadf8 \uc678 \uc561\uc138\uc11c\ub9ac"
								},
								{
									"query" : "category_uuid=bec56c93-ea75-11e4-8a46-06fd000000c2",
									"label" : "\uaf43 (\uc0dd\ud654, \ub4dc\ub77c\uc774, \ub2e4\uc721 \ub4f1)"
								},
								{
									"query" : "category_uuid=976cfb97-c6bc-11e3-83fc-06530c0000b4",
									"label" : "\uce94\ub4e4, \ub514\ud4e8\uc800, \ubc29\ud5a5\uc81c"
								},
								{
									"query" : "category_uuid=66299878-c6bc-11e3-8577-06f4fe0000b5",
									"label" : "\uc778\ud14c\ub9ac\uc5b4 \uc18c\ud488"
								},
								{
									"query" : "category_uuid=c5010d79-e666-11e3-9874-06fd000000c2",
									"label" : "\ub3c4\uc790\uae30"
								},
								{
									"query" : "category_uuid=30b3ae0f-c6bc-11e3-8577-06f4fe0000b5",
									"label" : "\uc8fc\ubc29, \uc0dd\ud65c"
								},
								{
									"query" : "category_uuid=e866743b-0a33-4030-80c1-3a1ec943b0e4",
									"label" : "\uac00\uad6c"
								},
								{
									"query" : "category_uuid=fa8c9d8e-c6bb-11e3-8577-06f4fe0000b5",
									"label" : "\uc778\ud615, \uc7a5\ub09c\uac10"
								},
								{
									"query" : "category_uuid=f6335574-c6bb-11e3-83fc-06530c0000b4",
									"label" : "\ubc18\ub824\ub3d9\ubb3c \uc6a9\ud488"
								},
								{
									"query" : "category_uuid=002e6aef-c6bc-11e3-8b03-06fd000000c2",
									"label" : "\ud30c\uc778\uc544\ud2b8"
								},
								{
									"query" : "category_uuid=9f4b9a69-c6bc-11e3-954e-06a6fa0000b9",
									"label" : "\uacf5\uc608"
								},
								{
									"query" : "category_uuid=b3b31a1b-ea75-11e4-8a46-06fd000000c2",
									"label" : "\ud734\ub300\ud3f0 \ucf00\uc774\uc2a4"
								},
								{
									"query" : "category_uuid=a923ab08-0643-11e4-98ba-06f4fe0000b5",
									"label" : "\uc804\uc790\uae30\uae30 \uad00\ub828"
								},
								{
									"query" : "category_uuid=b00844bc-c6bc-11e3-8577-06f4fe0000b5",
									"label" : "\ubb38\uad6c, \ud32c\uc2dc"
								},
								{
									"query" : "category_uuid=e3ba45b3-c165-11e3-8788-06fd000000c2",
									"label" : "\ud398\uc778\ud305, \uce90\ub9ac\ucee4\uccd0, \uce98\ub9ac"
								},
								{
									"query" : "category_uuid=c468e7db-ea75-11e4-b903-06f4fe0000b5",
									"label" : "\ud5a5\uc218, \ud654\uc7a5\ud488, \ubdf0\ud2f0"
								},
								{
									"query" : "category_uuid=be3cf842-ea74-11e4-8878-06a6fa0000b9",
									"label" : "\ube44\ub204, \ucc9c\uc5f0\ube44\ub204"
								},
								{
									"query" : "category_uuid=4094e656-c6bf-11e3-83fc-06530c0000b4",
									"label" : "\uae30\ud0c0"
								} ]
					} ];
			(function() {
				var Logger = vuepack.externals.IdusLog.Logger;
				var PageName = vuepack.externals.IdusLog.PageName;
				var LogLabel = vuepack.externals.IdusLog.LogLabel;
				var resultCount = 36;

				Logger.sendPageView(PageName.SearchResult, {
					property : {
						search_word : Logger.getQueryValue('word'),
						keyword_channel : Logger
								.getQueryValue('keyword_channel'),
						sort_type : Logger.getCurrentSortFromQuery(filterList),
						result_count : resultCount
					},
					logLabel : LogLabel.Product
				})
			})();

			var vueComponents = [];
			vueComponents
					.push({
						selector : '[data-vue="search-detail"]',
						component : 'SearchDetail',
						props : {
							searchWord : 'Ilx1Y2Q5NFx1YzExZFx1YzEyMFx1YmIzYyI=',
							// list
							searchResultList : [
									{
										"type" : "PRODUCT",
										"query" : "\ucd94\uc11d\uc120\ubb3c",
										"product" : {
											"uuid" : "ebfbb51c-9048-40af-9409-7a09807a5a3a",
											"name" : "\ucd94\uc11d\uc120\ubb3c\u2764 \uc815\uc131\uc744 \ub2f4\uc740 \uace0\uae09\ub514\uc800\ud2b8 \u2665\uad6c\uc6c0\ucc30\ub5a1\u2665",
											"category_uuid" : "5c6bc7d4-7760-4702-b63f-7f29eca479e3",
											"artist_uuid" : "eacceac9-7992-43db-af29-fb383c7fced9",
											"artist_name" : "\ub2ec\ub2ec\ud55c\ub180\uc774\ud130",
											"is_sale" : true,
											"sale_rate" : 20,
											"price_origin" : 18000,
											"price_sale" : 14400,
											"thumb_image_url" : "https:\/\/image.idus.com\/image\/files\/d79abb73106b477b8014d4829a228f20_1080.jpg",
											"is_favorite" : false,
											"review" : {
												"count" : 223,
												"rate" : 4.8,
												"contents" : "\ub108\ubb34 \uc774\uc058\uace0 \ub9db\uc740 \uc544\uc9c1 \ubaa8\ub974\uc9c0\ub9cc \uac10\uc0ac\ud788 \uc798\ubc1b\uc558\uc2b5\ub2c8\ub2f9 \ubc30\uc1a1 \ube68\ub77c\uc11c \uc815\ub9d0 \ub180\ub790\uad6c\uc694\u314e\u314e \ub9ce\uc774 \ud30c\uc138\uc694~~"
											},
											"badges" : [ {
												"type" : "FOOD",
												"label" : "\uc548\uc804\uc2dd\ud488"
											} ]
										}
									},
									{
										"type" : "PRODUCT",
										"query" : "\ucd94\uc11d\uc120\ubb3c",
										"product" : {
											"uuid" : "d88d7f29-a5df-456b-9521-3ed2445e7ce7",
											"name" : "\ud83c\udf38\ucd94\uc11d\uc120\ubb3c\ud83c\udf38\ud50c\ub77c\uc6cc+\uacac\uacfc\ud0c0\ub974\ud2b8",
											"category_uuid" : "5c6bc7d4-7760-4702-b63f-7f29eca479e3",
											"artist_uuid" : "2e3cfec7-a124-4497-94a0-fc1a62fc42cc",
											"artist_name" : "\ud6c4\ud6c4\ucf00\uc774\ud06c",
											"is_sale" : true,
											"sale_rate" : 3,
											"price_origin" : 30000,
											"price_sale" : 29000,
											"thumb_image_url" : "https:\/\/image.idus.com\/image\/files\/41653ed9c66f48f8964deeed6175bcae_1080.jpg",
											"is_favorite" : false,
											"review" : {
												"count" : 117,
												"rate" : 4.9,
												"contents" : "\ub118 \ub9db\uc788\uace0 \uc774\ubee4\uc5b4\uc694\u2661\u2661\n\ub2e4\ub9cc \uce74\ub4dc\uac00 \uc870\uae08 \uc544\uc27d\ub124\uc694~\n\n\ub0b1\uc7a5\uc774\ub77c\uace0 \uc0dd\uac01\uc548\ud588\ub294\ub370~\n\uadf8\ubd80\ubd84 \ube7c\uace4 \ub2e4 \ub9cc\uc871\ud588\ub2f5\ub2c8\ub2e4^^"
											},
											"badges" : [ {
												"type" : "FOOD",
												"label" : "\uc548\uc804\uc2dd\ud488"
											} ]
										}
									},
									{
										"type" : "PRODUCT",
										"query" : "\ucd94\uc11d\uc120\ubb3c",
										"product" : {
											"uuid" : "3c224e5d-c755-4ebc-a312-16d41cf9daff",
											"name" : "(\ub9c8\uac10)\ucd94\uc11d\uc544\uc774\uc2f1\ucfe0\ud0a4",
											"category_uuid" : "5c6bc7d4-7760-4702-b63f-7f29eca479e3",
											"artist_uuid" : "342ec287-ca4c-4fad-ba32-6902fc6a61ad",
											"artist_name" : "\ubaa8\uc774\ub0b4\uce04\ub7f4",
											"is_sale" : false,
											"sale_rate" : 0,
											"price_origin" : 11000,
											"price_sale" : 11000,
											"thumb_image_url" : "https:\/\/image.idus.com\/image\/files\/4faa4e834a08495db57d64590ec1f6ea_1080.jpg",
											"is_favorite" : false,
											"review" : {
												"count" : 30,
												"rate" : 4.6,
												"contents" : "\uc120\ubb3c\uc6a9 \uc544\uc774\uc2f1\ucfe0\ud0a4\ub85c\ub294 \uc644\uc804 \ucd5c\uace0!\uc5d0\uc694!!! \ube14\ub85c\uadf8 \uae00\ub3c4 \uc62c\ub838\uc9c0\ub9cc \u314e\u314e\u314e\u314e \uc815\ub9d0 \ub108\ubb34\ub108\ubb34 \uc608\uc058\uace0 \ub9db\uc788\uace0>_< \ub298 \uac10\uc0ac\ud569\ub2c8\ub2e4 \uc791\uac00\ub2d8 \u314e\u314e\u314e"
											},
											"badges" : [ {
												"type" : "FOOD",
												"label" : "\uc548\uc804\uc2dd\ud488"
											} ]
										}
									},
									{
										"type" : "PRODUCT",
										"query" : "\ucd94\uc11d\uc120\ubb3c",
										"product" : {
											"uuid" : "2ae4363a-62d6-43c9-9e15-902199d9f0d1",
											"name" : "\ucd94\uc11d\u2764\uc218\uc81c \ubcf4\uc11d\uc591\uac31 20\uad6c \uc120\ubb3c\uc138\ud2b8",
											"category_uuid" : "5c6bc7d4-7760-4702-b63f-7f29eca479e3",
											"artist_uuid" : "8f43d3d1-e38e-4b0a-97d2-1aeb95866045",
											"artist_name" : "\uc120\ub370\uc774\uc2a4\uc704\uce20",
											"is_sale" : false,
											"sale_rate" : 0,
											"price_origin" : 33000,
											"price_sale" : 33000,
											"thumb_image_url" : "https:\/\/image.idus.com\/image\/files\/09f86ca194f94cb9973a5283698802bd_1080.jpg",
											"is_favorite" : false,
											"review" : {
												"count" : 1146,
												"rate" : 4.8,
												"contents" : "\ud560\uba38\ub2c8\uaed8\uc11c \ub9db\uc788\ub2e4\uace0 \uc88b\uc544\ud558\uc168\uc5b4\uc694~~ \uac10\uc0ac\ud569\ub2c8\ub2e4"
											},
											"badges" : [ {
												"type" : "FOOD",
												"label" : "\uc548\uc804\uc2dd\ud488"
											} ]
										}
									},
									{
										"type" : "PRODUCT",
										"query" : "\ucd94\uc11d\uc120\ubb3c",
										"product" : {
											"uuid" : "6bd8b6f0-b2be-43bc-8d38-052e04996b5a",
											"name" : "[\ucd94\uc11d]\ucac4\uae43\ub2ec\ucf64\u2764\uc218\uc81c \uacf6\uac10\ub9dd\uac1c\ub5a1\u2764(\uc774\ubca4\ud2b8\uc911)",
											"category_uuid" : "5c6bc7d4-7760-4702-b63f-7f29eca479e3",
											"artist_uuid" : "0a25b0a9-08d9-42d0-be77-b24733437036",
											"artist_name" : "2\ub300\uac00\ud568\uaed8\ud558\ub294 \ub9dd\uac1c\ub5a1 \ucc3d\uc6d0\uc0dd\uacfc\ubc29",
											"is_sale" : false,
											"sale_rate" : 0,
											"price_origin" : 16000,
											"price_sale" : 16000,
											"thumb_image_url" : "https:\/\/image.idus.com\/image\/files\/3df6af53c12b447e9eeeaf9384dd2b2d_1080.jpg",
											"is_favorite" : false,
											"review" : {
												"count" : 273,
												"rate" : 4.7,
												"contents" : "\ub108\ubb34 \uc774\uc058\uace0 \ubc30\uc1a1 \uc644\uc804 \ube68\ub77c\uc694\u2764\ufe0f\n\uc5b4\uc81c \uc544\uce68 \uc8fc\ubb38 \ud558\uad6c \uc624\ub298 \ub0ae\uc5d0 \ubc14\ub85c \ubc1b\uc558\uc5b4\uc694\n\ub0c9\ub3d9 \ubcf4\uad00\uc774\ub77c \ucd94\uc11d\ub54c \ud3ec\uc7a5 \ud574\uc11c \ub4dc\ub9ac\ub824\uace0\uc694 \n\uc7ac\uad6c\ub9e4 \uc758\uc0ac \uc644\uc804 \uc788\uc2b5\ub2c8\ub2f9 \ud83d\ude0a\ud83d\ude0a\n\uac10\uc0ac\ud574\uc694"
											},
											"badges" : [ {
												"type" : "FOOD",
												"label" : "\uc548\uc804\uc2dd\ud488"
											} ]
										}
									},
									{
										"type" : "PRODUCT",
										"query" : "\ucd94\uc11d\uc120\ubb3c",
										"product" : {
											"uuid" : "82fb28c8-7e6a-444f-b375-19fa10f464ae",
											"name" : "[\ucd94\uc11d\ud560\uc778] \uc2dc\ub8e8\uc544\ub124 \uce74\uc2a4\ud14c\ub77c\uc559\uc808\ubbf8(40\uad6c)",
											"category_uuid" : "5c6bc7d4-7760-4702-b63f-7f29eca479e3",
											"artist_uuid" : "3d6bb4d7-6a97-4d42-b76f-83e75e1c8075",
											"artist_name" : "\uc2dc\ub8e8\uc544\ub124",
											"is_sale" : true,
											"sale_rate" : 16,
											"price_origin" : 20000,
											"price_sale" : 16800,
											"thumb_image_url" : "https:\/\/image.idus.com\/image\/files\/16923dfff30f4e42a2dd964ce3ce75f7_1080.jpg",
											"is_favorite" : false,
											"review" : {
												"count" : 2479,
												"rate" : 4.8,
												"contents" : "\ub108\ubb34\ub108\ubb34 \ub2ec\uc544\uc694.."
											},
											"badges" : [ {
												"type" : "FOOD",
												"label" : "\uc548\uc804\uc2dd\ud488"
											} ]
										}
									},
									{
										"type" : "PRODUCT",
										"query" : "\ucd94\uc11d\uc120\ubb3c",
										"product" : {
											"uuid" : "2746c188-5fdf-4d97-a89c-1e0962338d78",
											"name" : "\ud83c\udf41\ucd94\uc11d\uc120\ubb3c\ud83c\udf41 12\uac00\uc9c0 \ub9db \uc218\uc81c \uc591\uac31",
											"category_uuid" : "5c6bc7d4-7760-4702-b63f-7f29eca479e3",
											"artist_uuid" : "ecd75b71-b260-49b2-8c21-521216178fb0",
											"artist_name" : "\ub098\ube44\ud55c\uc2a4\ud47c",
											"is_sale" : false,
											"sale_rate" : 0,
											"price_origin" : 21500,
											"price_sale" : 21500,
											"thumb_image_url" : "https:\/\/image.idus.com\/image\/files\/f5d73465d9cd42bdbd44c882c879f28e_1080.jpg",
											"is_favorite" : false,
											"review" : {
												"count" : 665,
												"rate" : 4.9,
												"contents" : "\uc120\ubb3c\uc6a9\uc73c\ub85c \uc88b\uc544\uc694\n\uc13c\uc2a4\uc788\ub2e4 \uce6d\ucc2c\ub4e4\uc5c8\ub2f5\ub2c8\ub2e4~^^"
											},
											"badges" : [ {
												"type" : "FOOD",
												"label" : "\uc548\uc804\uc2dd\ud488"
											} ]
										}
									},
									{
										"type" : "PRODUCT",
										"query" : "\ucd94\uc11d\uc120\ubb3c",
										"product" : {
											"uuid" : "f3cf2036-1394-42f5-8dc1-94e43db5222d",
											"name" : "\ud83d\udc24\ud83d\udc24\ud83d\udc24\ubbf8\ub2c8\uc624\ub9ac\ub9c8\ub4e4\ub80c12\uac1c\ud55c\uc138\ud2b8\ud83d\udc25\ud83d\udc25\ud83d\udc23\ud83d\udc23",
											"category_uuid" : "5c6bc7d4-7760-4702-b63f-7f29eca479e3",
											"artist_uuid" : "7cb1359b-5456-456a-bba6-c860b5c1f1ff",
											"artist_name" : "\ubf40\ub9ac\uc218\uc81c\ucfe0\ud0a4 \uc564 \uc218\uc81c\uccad",
											"is_sale" : false,
											"sale_rate" : 0,
											"price_origin" : 12000,
											"price_sale" : 12000,
											"thumb_image_url" : "https:\/\/image.idus.com\/image\/files\/d8e8f99077b74b9e8b4d15fb1424968b_1080.jpg",
											"is_favorite" : false,
											"review" : {
												"count" : 157,
												"rate" : 4.9,
												"contents" : "\uc544\uc774\ub4e4\uc774 \ub118 \uadc0\uc5fd\uace0 \ub9db\ub098\ub2e4\uace0 \uc798\uba39\uc5b4\uc694"
											},
											"badges" : [ {
												"type" : "FOOD",
												"label" : "\uc548\uc804\uc2dd\ud488"
											} ]
										}
									},
									{
										"type" : "SHOWROOM",
										"query" : "\ucd94\uc11d\uc120\ubb3c",
										"showroom" : {
											"id" : 1715,
											"title" : "\uc2e4\uc18d \uc788\ub294 \ucd94\uc11d \uc120\ubb3c \ud83c\udf81 \ub2f5\ub840\uc6a9 ",
											"description" : "\ud3c9\uc18c \uace0\ub9c8\uc6e0\ub358 \ub9c8\uc74c\uc744 \uc804\ud558\uace0 \uc2f6\uc740\ub370, \r\n\uae30\ud68c\ub97c \ucc3e\uc9c0 \ubabb\ud588\ub2e4\uba74? \r\n\ucd94\uc11d \uc120\ubb3c\uc744 \uc900\ube44\ud574\ubcf4\uc138\uc694!  \r\n\r\n2\ub9cc\uc6d0\uc774\ud558\uc758 \uacbd\uc81c\uc801\uc778 \ube44\uc6a9\uc73c\ub85c\r\n\uac10\uc0ac\uc758 \ub9c8\uc74c\uc744 \uc804\ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4. ",
											"is_del" : 0,
											"is_visible" : 1,
											"start_date" : "2021-08-23 12:00:00",
											"end_date" : "2021-09-30 12:00:00",
											"track_key" : "bizproject1715"
										},
										"products_path" : "\/craft\/showrooms\/1715\/products",
										"products_url" : "https:\/\/api.idus.com\/craft\/showrooms\/1715\/products"
									},
									{
										"type" : "PRODUCT",
										"query" : "\ucd94\uc11d\uc120\ubb3c",
										"product" : {
											"uuid" : "3698b523-01c5-48b7-b731-f9fc85fd43fa",
											"name" : "[\uc0c1\uacac\ub840\uc120\ubb3c,\uba85\uc808\uc120\ubb3c]\ub3c4\ub77c\uc9c0\uc815\uacfc 500g~\ucd94\uc11d\uc120\ubb3c",
											"category_uuid" : "5c6bc7d4-7760-4702-b63f-7f29eca479e3",
											"artist_uuid" : "a94417eb-6b24-4a18-82db-24f6aaaeca30",
											"artist_name" : "\uc815\uc131\uc744\ub2f4\ub2e4",
											"is_sale" : true,
											"sale_rate" : 22,
											"price_origin" : 50000,
											"price_sale" : 39000,
											"thumb_image_url" : "https:\/\/image.idus.com\/image\/files\/29b8fd2f05f1417092524af2b989477b_1080.jpg",
											"is_favorite" : false,
											"review" : {
												"count" : 177,
												"rate" : 4.9,
												"contents" : "\ud3ec\uc7a5\ub3c4 \uc608\uc058\uace0 \uad6c\uc131\ub3c4 \ub9c8\uc74c\uc5d0 \ub4e4\uc5b4\uc694 \ub610 \uc8fc\ubb38\ud558\ub824\uace0\uc694! \uae30\ubd84\uc88b\uc740 \ucd94\uc11d\uc120\ubb3c\uc774\ub124\uc694 \u314e\u314e"
											},
											"badges" : [ {
												"type" : "FOOD",
												"label" : "\uc548\uc804\uc2dd\ud488"
											} ]
										}
									},
									{
										"type" : "PRODUCT",
										"query" : "\ucd94\uc11d\uc120\ubb3c",
										"product" : {
											"uuid" : "880d58e7-e0b5-4664-8f73-bfaac314d0c9",
											"name" : "[\ucd94\uc11d\uc120\ubb3c] \uace0\uae09\uc2a4\ub7ec\uc6b4 \uacac\uacfc\ub958\uac15\uc815 \uc120\ubb3c\uc138\ud2b8",
											"category_uuid" : "5c6bc7d4-7760-4702-b63f-7f29eca479e3",
											"artist_uuid" : "064458be-103d-11e5-92c3-06fd000000c2",
											"artist_name" : "\ub9c8\ub9c8\ub11b(mamanut)",
											"is_sale" : true,
											"sale_rate" : 33,
											"price_origin" : 7500,
											"price_sale" : 5000,
											"thumb_image_url" : "https:\/\/image.idus.com\/image\/files\/d76d2ae3427e451b8ccb40d7ea09f96f_1080.jpg",
											"is_favorite" : false,
											"review" : {
												"count" : 134,
												"rate" : 4.9,
												"contents" : "\uc8fc\ubb38\ud558\uae30 \uc804 \uc774\uac83\uc800\uac83 \uc5ec\ucb64\ubd24\ub294\ub370 \uce5c\uc808\ud558\uac8c \ub2f5\ud574\uc8fc\uc2dc\uace0 \ubc30\uc1a1\ud558\uae30 \uc804\uc5d0\ub294 \uc548\uc5d0 \ub0b4\uc6a9\ubb3c \uc0ac\uc9c4 \ucc0d\uc5b4 \ubcf4\ub0b4\uc8fc\uc2e0 \uc791\uac00\ub2d8 \u315c\u315c \ud83d\udc93 \uba85\uc808\uc804\uc774\ub77c \ud55c\ucc38 \ubc14\uc058\uc2e4\ud150\ub370 \ub108\ubb34 \uac10\uc0ac\ud569\ub2c8\ub2e4!! 9\/7\uc77c \ucd9c\uace0\ub85c \uc624\ub298 \ubc1b\uc558\ub294\ub370 \ud0dd\ubc30 \uc0c1\uc790 \ub72f\uc790\ub9c8\uc790 \ubcf4\uc790\uae30 \ud3ec\uc7a5\uc774 \ub108\ubb34 \uc608\ubed0\uc11c \uac10\ud0c4\uc774 \uc808\ub85c \ub098\uc654\uc5b4\uc694! \uc8fc\ub294 \uc0ac\ub78c\ub3c4 \ubc1b\ub294 \uc0ac\ub78c\ub3c4 \ubaa8\ub450 \uae30\ubd84 \uc88b\uc740 \uc120\ubb3c\uc774 \ub420 \uc218 \uc788\uc744 \uac70 \uac19\uc544\uc694 \u25e1\u0308 \ub2e4\uc74c\uc5d0 \ub610 \uc120\ubb3c \ud560 \uacf3 \uc788\uc73c\uba74 \uc7ac\uad6c\ub9e4 \uc758\uc0ac 100% \uc785\ub2c8\ub2e4!! \uc791\uac00\ub2d8 \ubc88\ucc3d\ud558\uc138\uc694~~\ud83d\udc93"
											},
											"badges" : [ {
												"type" : "FOOD",
												"label" : "\uc548\uc804\uc2dd\ud488"
											} ]
										}
									},
									{
										"type" : "PRODUCT",
										"query" : "\ucd94\uc11d\uc120\ubb3c",
										"product" : {
											"uuid" : "5f391b58-8797-4b0d-be21-801db372de27",
											"name" : "\ud83e\udd0e\ucd94\uc11d\uc120\ubb3c\ud83e\udd0e\ucac0\ub4dd\ub9ac\uc5bc \ud83c\udf60 \uace0\uad6c\ub9c8\ube75 \ud83e\udd54 \uac10\uc790\ube75",
											"category_uuid" : "5c6bc7d4-7760-4702-b63f-7f29eca479e3",
											"artist_uuid" : "5ba9384d-140b-488b-905a-fa63244f412c",
											"artist_name" : "\ub9ac\ub9ac\ub871",
											"is_sale" : true,
											"sale_rate" : 20,
											"price_origin" : 2500,
											"price_sale" : 2000,
											"thumb_image_url" : "https:\/\/image.idus.com\/image\/files\/8ac8b9b99af84d2085088e86467dfc75_1080.jpg",
											"is_favorite" : false,
											"review" : {
												"count" : 473,
												"rate" : 4.7,
												"contents" : "\uc5c4\ub9c8\uac00 \ub9db\uc788\ub2e4\uace0\ud574\uc11c \ub450\ubc88\uc9f8 \ud83c\udf60\ubcf4\ub0c5\ub2c8\ub2e4 \ub0c9\ub3d9\uace0\uc5d0 \uc800\uc7a5\ud574\uc11c \ud83c\udf60\uba39\uace0 \uc2f6\uc744\ub54c \ub370\uc6cc \uba39\uc73c\ub2c8 \ub9db\uc788\ub2e4\ud569\ub2c8\ub2e4 \uc11c\ube44\uc2a4 \uc8fc\uc2e0 \ud83c\udf6a\ub791\ud83e\udd54 \uace0\ub9d9\uc2b5\ub2c8\ub2e4 \ud83d\ude42\ud83d\udc95"
											},
											"badges" : [ {
												"type" : "FOOD",
												"label" : "\uc548\uc804\uc2dd\ud488"
											} ]
										}
									},
									{
										"type" : "PRODUCT",
										"query" : "\ucd94\uc11d\uc120\ubb3c",
										"product" : {
											"uuid" : "942119ff-46ed-4eae-9cf1-31e9b3a552d9",
											"name" : "'\ub9c8\ub2e4'\uc758 \ubbf8\ub2c8\ub2e4\ucfe0\uc544\uc988 \uc138\ud2b8\u2661 9\uc6d414\uc77c(\ud654)\ubc1c\uc1a1",
											"category_uuid" : "5c6bc7d4-7760-4702-b63f-7f29eca479e3",
											"artist_uuid" : "9eea3e14-938f-467f-b259-19339883d7c9",
											"artist_name" : "'\ub9c8\ub2e4'",
											"is_sale" : false,
											"sale_rate" : 0,
											"price_origin" : 10000,
											"price_sale" : 10000,
											"thumb_image_url" : "https:\/\/image.idus.com\/image\/files\/d1d33bc562304a18af53f030147ed1f1_1080.jpg",
											"is_favorite" : false,
											"review" : {
												"count" : 1252,
												"rate" : 4.9,
												"contents" : "\uc5b4\uba38\ub2d8\uc774 \uc88b\uc544\ud558\uc154\uc694 \ud83d\ude0a"
											},
											"badges" : [ {
												"type" : "FOOD",
												"label" : "\uc548\uc804\uc2dd\ud488"
											} ]
										}
									},
									{
										"type" : "PRODUCT",
										"query" : "\ucd94\uc11d\uc120\ubb3c",
										"product" : {
											"uuid" : "ec375a22-41bf-4d30-87dd-5c6fe4dd2290",
											"name" : "[\ucd94\uc11d]\ud83d\udc9c\ud3c9\uc77c\ub2f9\uc77c\ucd9c\uace0\ud83d\udc9c2\ub300\uac00\ud568\uaed8 \uc218\uc81c \ub9dd\uac1c\ub5a1",
											"category_uuid" : "5c6bc7d4-7760-4702-b63f-7f29eca479e3",
											"artist_uuid" : "0a25b0a9-08d9-42d0-be77-b24733437036",
											"artist_name" : "2\ub300\uac00\ud568\uaed8\ud558\ub294 \ub9dd\uac1c\ub5a1 \ucc3d\uc6d0\uc0dd\uacfc\ubc29",
											"is_sale" : false,
											"sale_rate" : 0,
											"price_origin" : 10000,
											"price_sale" : 10000,
											"thumb_image_url" : "https:\/\/image.idus.com\/image\/files\/bfc163df7b434e95b24cb3f04d2f7bd2_1080.jpg",
											"is_favorite" : false,
											"review" : {
												"count" : 1627,
												"rate" : 4.8,
												"contents" : "\ub9dd\uac1c\ub5a1\uc774 \ucac4\uae43\ucac4\uae43 \ub9d0\ub791\ub9d0\ub791 \ub108\ubb34 \ub9db\uc788\ub124\uc694. \ub610 \uc2dc\ucf1c \uba39\uc744\uac8c\uc694."
											},
											"badges" : [ {
												"type" : "FOOD",
												"label" : "\uc548\uc804\uc2dd\ud488"
											} ]
										}
									},
									{
										"type" : "PRODUCT",
										"query" : "\ucd94\uc11d\uc120\ubb3c",
										"product" : {
											"uuid" : "8171e885-fb95-4036-9f36-abf7da1fba12",
											"name" : "[\ucd94\uc11d\uc120\ubb3c\uc138\ud2b8]\ubc84\ud130\ucfe0\ud0a4 5\uc885(3mix\/4mix)",
											"category_uuid" : "5c6bc7d4-7760-4702-b63f-7f29eca479e3",
											"artist_uuid" : "a9fb98f3-0f10-4d95-85ed-cecd98345e31",
											"artist_name" : "153\ubca0\uc774\ucee4\ub9ac",
											"is_sale" : false,
											"sale_rate" : 0,
											"price_origin" : 13000,
											"price_sale" : 13000,
											"thumb_image_url" : "https:\/\/image.idus.com\/image\/files\/dfbbbdde535f481d99c95606ef8d48d0_1080.jpg",
											"is_favorite" : false,
											"review" : {
												"count" : 707,
												"rate" : 4.8,
												"contents" : "\uc120\ubb3c\uc6a9\uc774\ub77c \ub9db\uc740 \ubabb\ubd24\uc9c0\ub9cc \ub9db\uc788\uc744\uac70\ub77c \ubbff\uace0 \ud83d\ude05\n\ud2f4\ucf00\uc774\uc2a4\ub3c4 \uc608\uc058\ub354\ub77c\uad6c\uc694~\n\ud06c\uae30\ub294 \uc0dd\uac01\ubcf4\ub2e4 \uc791\uae34 \ud588\ub294\ub370 \uac00\ubccd\uac8c \uc120\ubb3c\ud558\uae30 \uad1c\ucc2e\uc740\uac70 \uac19\uc544\uc694~ \ub2e4\uc74c\uc5d0 \ub2e4\uc2dc \ub610 \uad6c\ub9e4\ud558\ub7ec \uc62c\uaed8\uc694~"
											},
											"badges" : [ {
												"type" : "FOOD",
												"label" : "\uc548\uc804\uc2dd\ud488"
											} ]
										}
									},
									{
										"type" : "PRODUCT",
										"query" : "\ucd94\uc11d\uc120\ubb3c",
										"product" : {
											"uuid" : "54eaf808-38ac-4581-8b4e-c2069f1ef7b8",
											"name" : "[\ucd94\uc11d\uc120\ubb3c\/\uc21c\ucc28\ubc1c\uc1a1]\ud6a8\uc790\ub3d9\uae30\uc815\ub5a1\/3\ucc28\ubc1c\ud6a8\/\ud55c\uc815\uc218\ub7c9",
											"category_uuid" : "5c6bc7d4-7760-4702-b63f-7f29eca479e3",
											"artist_uuid" : "6b588daf-43fb-494e-902f-bc7b7dc4e4f6",
											"artist_name" : "\ud6a8\uc790\ub3d9 \uae30\uc815\ub5a1",
											"is_sale" : false,
											"sale_rate" : 0,
											"price_origin" : 10000,
											"price_sale" : 10000,
											"thumb_image_url" : "https:\/\/image.idus.com\/image\/files\/821ae2de8ccf48398d837956371d3d45_1080.png",
											"is_favorite" : false,
											"review" : {
												"count" : 451,
												"rate" : 4.8,
												"contents" : "\ub108\ubb34 \ub9db\uc788\uc5c8\uc5b4\uc694 \n\ub9ce\uc774\ub2ec\uc9c0\uc54a\uace0 \uae54\ub054\ud55c \uc18c\ud3ec\uc7a5\uc5d0 \uc120\ubb3c\ud558\uae30\ub3c4 \uc88b\ub124\uc694\n\ubc30\uc1a1\uc5d0 \uc870\uae08\ubb38\uc81c\uac00 \uc788\uc5c8\uc9c0\ub9cc \n\ud310\ub9e4\uc790\ub2d8\uc758 \ube60\ub978\ub300\uc751\ub3c4 \uc88b\uc558\uc2b5\ub2c8\ub2e4\n\uc885\uc885 \uac04\uc2dd\uc6a9\uc73c\ub85c\ub3c4 \uad6c\ub9e4\ud560\uac8c\uc694"
											},
											"badges" : [ {
												"type" : "FOOD",
												"label" : "\uc548\uc804\uc2dd\ud488"
											} ]
										}
									},
									{
										"type" : "PRODUCT",
										"query" : "\ucd94\uc11d\uc120\ubb3c",
										"product" : {
											"uuid" : "490880d6-9334-4ab7-bec5-48732fbddaa7",
											"name" : "\ucd94\uc11d\uc120\ubb3c \ud83c\udf3a\ubc18\uc9dd \ud55c\uc785 \ubbf8\ub2c8 \uaf43 \uc591\uac31\ud83c\udf3a\uc218\uc81c \uc591\uac31\uc774",
											"category_uuid" : "5c6bc7d4-7760-4702-b63f-7f29eca479e3",
											"artist_uuid" : "1586c8e9-772c-417d-a1ca-38fe415ec5ec",
											"artist_name" : "\ubb34\uc2e4\ub514\uc800\ud2b8",
											"is_sale" : false,
											"sale_rate" : 0,
											"price_origin" : 8500,
											"price_sale" : 8500,
											"thumb_image_url" : "https:\/\/image.idus.com\/image\/files\/553a91cea7094fa989d7e12b4f05bbf0_1080.png",
											"is_favorite" : false,
											"review" : {
												"count" : 115,
												"rate" : 4.7,
												"contents" : "\ub2e8 \uc591\uac31\uc744 \uc548\uc88b\uc544\ud558\uc2dc\ub294 \uc5b4\uba38\ub2c8\uc5d0\uac8c \uc120\ubb3c \ub4dc\ub838\ub294\ub370 \ub108\ubb34 \uc88b\uc544\ud558\uc138\uc694 \u3160\u3160\u3160 \ud3ec\uc7a5\ub3c4 \ub108\ubb34 \uc774\uc058\uace0 \ud55c \uc785\uc5d0 \uba39\uae30\ub3c4 \ud3b8\ud558\uc2dc\ub2e4\uace0 \ud558\uc154\uc11c \uc644\uc804 \ub9cc\uc871\uc785\ub2c8\ub2e4\ud83d\udc4d\ud83d\udc4d\ud83d\udc4d\ud83d\ude0a\ud83d\ude0a"
											},
											"badges" : [ {
												"type" : "FOOD",
												"label" : "\uc548\uc804\uc2dd\ud488"
											} ]
										}
									},
									{
										"type" : "EDUCATION",
										"query" : "\ucd94\uc11d\uc120\ubb3c",
										"classes" : [
												{
													"type" : "EDU",
													"id" : 4076,
													"artist_id" : 5771231,
													"artist_name" : "\uafc8\uafb8\ub294 \ud76c\ub9dd\ub098\ubb34\uce98\ub9ac",
													"title" : "\ucd94\uc11d \ud2b9\ubcc4\ud55c \uc120\ubb3c\u201c\ud504\ub9ac\uc800\ube0c\ub4dc \ud50c\ub77c\uc6cc \uce98\ub9ac\uc561\uc790 \ub9cc\ub4e4\uae30\" \uc6d0\ub370\uc774\ud074\ub798\uc2a4",
													"thumb_url" : "https:\/\/image.idus.com\/image\/files\/d3c7b4dd28844d77ba33c2d47446ca3c.png",
													"category_id" : 30,
													"category_name" : "\uce98\ub9ac\uadf8\ub77c\ud53c, \uc11c\uc608",
													"is_favorite" : false,
													"region" : {
														"depth1_code" : "108",
														"depth1_name" : "\ub300\uc804",
														"depth2_code" : "352",
														"depth2_name" : "\uc11c\uad6c"
													}
												},
												{
													"type" : "EDU",
													"id" : 6097,
													"artist_id" : 4360066,
													"artist_name" : "\ub85c\uc988\ube14\ub7ec\uc378",
													"title" : "[\ucd94\uc11d\uc120\ubb3c] \ud5a5\uae30 \uac00\ub4dd\ud55c \ucd94\uc11d\uc120\ubb3c\uc138\ud2b8 \ucd94\uc11d\ud55c\uc0c1\ucc28\ub9bc \uce94\ub4e4\ud074\ub798\uc2a4",
													"thumb_url" : "https:\/\/image.idus.com\/image\/files\/6f1b6b7291e046f489a76ff268ceb015.png",
													"category_id" : 15,
													"category_name" : "\uce94\ub4e4, \ub514\ud4e8\uc800, \ubc29\ud5a5\uc81c",
													"is_favorite" : false,
													"region" : {
														"depth1_code" : "101",
														"depth1_name" : "\uc11c\uc6b8",
														"depth2_code" : "056",
														"depth2_name" : "\uc1a1\ud30c\uad6c"
													}
												} ],
										"class_pagination" : {
											"page_size" : 20,
											"total_size" : 1,
											"items_size" : 2,
											"current_page" : 1
										}
									},
									{
										"type" : "PRODUCT",
										"query" : "\ucd94\uc11d\uc120\ubb3c",
										"product" : {
											"uuid" : "9617f620-edcf-4d6e-b54d-5d328a09ef9d",
											"name" : "[\ucd94\uc11d\uc120\ubb3c] 24\uad6c \uc54c\uc591\uac31\uc138\ud2b8",
											"category_uuid" : "5c6bc7d4-7760-4702-b63f-7f29eca479e3",
											"artist_uuid" : "698bcd7a-ffa8-4fac-bd0f-9102eb3455fc",
											"artist_name" : "\uac31\uc18c\ub144",
											"is_sale" : true,
											"sale_rate" : 11,
											"price_origin" : 28000,
											"price_sale" : 25000,
											"thumb_image_url" : "https:\/\/image.idus.com\/image\/files\/19cd65465e7346098a8329a4cf4a7938_1080.png",
											"is_favorite" : false,
											"review" : {
												"count" : 85,
												"rate" : 4.7,
												"contents" : "\uc624\ub298\uae4c\uc9c0 \ubc1b\uc544\uc57c\ud588\ub294\ub370 \uac10\uc0ac\ud569\ub2c8\ub2e4!!!\n\uc0dd\uac01\ud588\ub358\uac70\ubcf4\ub2e4 \ud06c\uace0 \uc9c4\uc9dc\uc608\ubee4\uc5b4\uc694\u315c\u315c\u315c\u315c"
											},
											"badges" : [ {
												"type" : "FOOD",
												"label" : "\uc548\uc804\uc2dd\ud488"
											} ]
										}
									},
									{
										"type" : "PRODUCT",
										"query" : "\ucd94\uc11d\uc120\ubb3c",
										"product" : {
											"uuid" : "55fce45c-6dba-4b7f-a190-c405ce93c3df",
											"name" : "\u2665\ucd94\uc11d\uc120\ubb3c\u2665\uad6d\uc0b0 \ub3c4\ub77c\uc9c0\uc815\uacfc \uc120\ubb3c\uc138\ud2b8",
											"category_uuid" : "5c6bc7d4-7760-4702-b63f-7f29eca479e3",
											"artist_uuid" : "f636507f-a169-11e4-adc3-06530c0000b4",
											"artist_name" : "dalgom",
											"is_sale" : true,
											"sale_rate" : 18,
											"price_origin" : 40000,
											"price_sale" : 33000,
											"thumb_image_url" : "https:\/\/image.idus.com\/image\/files\/159ccd5119f546fd8b0e82d0033b7e18_1080.jpg",
											"is_favorite" : false,
											"review" : {
												"count" : 296,
												"rate" : 4.9,
												"contents" : "\ube60\ub978 \ubc30\uc1a1\uacfc \uc644\ubcbd\ud55c \ud3ec\uc7a5!\n\uadf8\ub9ac\uace0 \ub364\uc73c\ub85c \ud3ec\uc7a5\ub41c \uc0d8\ud50c\uae4c\uc9c0!\n\uc778\uc0bc\uc774\ub098 \ud64d\uc0bc\ubcf4\ub2e8 \ubd80\ub2f4\uc5c6\uc774 \uc120\ubb3c\ub4dc\ub9b4 \uc218 \uc788\uc5b4\uc11c \uc88b\uc558\uc2b5\ub2c8\ub2e4~ "
											},
											"badges" : [ {
												"type" : "FOOD",
												"label" : "\uc548\uc804\uc2dd\ud488"
											} ]
										}
									},
									{
										"type" : "PRODUCT",
										"query" : "\ucd94\uc11d\uc120\ubb3c",
										"product" : {
											"uuid" : "d34e838b-bc76-4e89-beef-b649d810d1e1",
											"name" : "\ucd94\uc11d\uc120\ubb3c\uc138\ud2b8 \ud638\ub450\uc815\uacfc\ud83d\udd05\ub9c8\uce74\ub2e4\ubbf8\uc544 \ud638\ub450\uc815\uacfc",
											"category_uuid" : "5c6bc7d4-7760-4702-b63f-7f29eca479e3",
											"artist_uuid" : "c0216655-36a7-4473-b3ff-5b533855bcdc",
											"artist_name" : "\uacf5\ube75",
											"is_sale" : true,
											"sale_rate" : 27,
											"price_origin" : 15000,
											"price_sale" : 11000,
											"thumb_image_url" : "https:\/\/image.idus.com\/image\/files\/4e8e1799f8c7424dbeca4e752dfe80bb_1080.jpg",
											"is_favorite" : false,
											"review" : {
												"count" : 247,
												"rate" : 4.9,
												"contents" : "\uc8fc\ub9d0 \uc0c1\uacac\ub840\uac00\uc788\uc5b4\uc11c \ub9ce\uc774\uc54c\uc544\ubcf4\uace0 \uc2e0\uacbd\ub3c4 \uc4f0\uc600\ub294\ub370 \uc0ac\uc7a5\ub2d8\uaed8\uc11c \uce5c\uc808\ud558\uace0 \uaf3c\uaf3c\ud558\uac8c \ud574\uc8fc\uc168\uc2b5\ub2c8\ub2e4 \u314e\u314e\ubc30\uc1a1\ub3c4 \uc815\ub9d0\ube68\ub9ac\uc654\uad6c \uc548\uc5d0 \ucabd\uc9c0\ub3c4 \ubd80\ud0c1\ub4dc\ub838\ub294\ub370 \ub108\ubb34\uc138\ub828\ub418\uac8c \ud574\uc8fc\uc154\uc11c \uc5bc\ub978 \ub4dc\ub9ac\uace0\uc2f6\uc5b4\uc9c0\ub124\uc694\ud83d\ude0a \uc800\ud76c\uc9d1 \uac15\uc544\uc9c0\ub3c4 \uc81c\ub9d8\uc744 \uc544\ub294\uc9c0 \uc81c\ud488\uc55e\uc5d0\uc11c \uc560\uad50\ubd80\ub9ac\uae38\ub798 \ucc0d\uc5b4\ubcf4\uc558\uc2b5\ub2c8\ub2e4!! \uac15\ucd94!! \ub9ce\uc774\ub9ce\uc774 \ud30c\uc138\uc694 \uc0ac\uc7a5\ub2d8 \u314e\u314e \ud83d\ude0b\u2764\ufe0f"
											},
											"badges" : [ {
												"type" : "FOOD",
												"label" : "\uc548\uc804\uc2dd\ud488"
											} ]
										}
									},
									{
										"type" : "PRODUCT",
										"query" : "\ucd94\uc11d\uc120\ubb3c",
										"product" : {
											"uuid" : "046e334b-6b1d-451b-972a-a1601034f9f4",
											"name" : "[\ucd94\uc11d\ud560\uc778] \uc2dc\ub8e8\uc544\ub124 \uc815\uc131\uc885\ud569\uc138\ud2b8(\uac1c\ubcc4\ud3ec\uc7a5, 24\uac1c\uc785)",
											"category_uuid" : "5c6bc7d4-7760-4702-b63f-7f29eca479e3",
											"artist_uuid" : "3d6bb4d7-6a97-4d42-b76f-83e75e1c8075",
											"artist_name" : "\uc2dc\ub8e8\uc544\ub124",
											"is_sale" : true,
											"sale_rate" : 24,
											"price_origin" : 33000,
											"price_sale" : 25000,
											"thumb_image_url" : "https:\/\/image.idus.com\/image\/files\/7c7abeb01301497b8bdd81b71e654b94_1080.jpg",
											"is_favorite" : false,
											"review" : {
												"count" : 123,
												"rate" : 4.9,
												"contents" : "\uc774\ubaa8\ub2d8\uaed8 \ucd94\uc11d\uc120\ubb3c\ub85c \ubcf4\ub0c8\ub294\ub370 \ubcf4\uc790\uae30\ud3ec\uc7a5\uc774 \ub204\ub77d.\u315c\u315c\n"
											},
											"badges" : [ {
												"type" : "FOOD",
												"label" : "\uc548\uc804\uc2dd\ud488"
											} ]
										}
									},
									{
										"type" : "PRODUCT",
										"query" : "\ucd94\uc11d\uc120\ubb3c",
										"product" : {
											"uuid" : "75076f81-3f5d-46e0-b8fc-6d4bb08ab3f0",
											"name" : "\ucd94\uc11d \uba85\uc808 \uc120\ubb3c \uace0\uae09 \ud83c\udf38\uc218\uc81c\uaf43\uc57d\uacfc\ud83e\udd6e \ub2ec\uad6c\ubc8c\ud55c\uacfc",
											"category_uuid" : "5c6bc7d4-7760-4702-b63f-7f29eca479e3",
											"artist_uuid" : "02daa0e7-34b5-4879-9309-b77e391a0a32",
											"artist_name" : "\ub2ec\uad6c\ubc8c\ud55c\uacfc",
											"is_sale" : true,
											"sale_rate" : 7,
											"price_origin" : 7500,
											"price_sale" : 7000,
											"thumb_image_url" : "https:\/\/image.idus.com\/image\/files\/2f94089328434b47b713a6ff43102b1e_1080.png",
											"is_favorite" : false,
											"review" : {
												"count" : 81,
												"rate" : 4.5,
												"contents" : "\u314e\ud788\uc0ac \uc0ac\ub78c\ub4e4\uc774\ub791 \ub9db\uc788\uac8c \ub098\ub220 \uba39\uc5b4\uc368\uc694"
											},
											"badges" : [ {
												"type" : "FOOD",
												"label" : "\uc548\uc804\uc2dd\ud488"
											} ]
										}
									},
									{
										"type" : "PRODUCT",
										"query" : "\ucd94\uc11d\uc120\ubb3c",
										"product" : {
											"uuid" : "fddf281e-3f91-4e94-a2a1-030261fdce0b",
											"name" : "[\ucd94\uc11d\uc120\ubb3c] \ubca0\uc2a4\ud2b8\uc140\ub7ec \ub2e4\ub2f4\uc138\ud2b8\ud83c\udf81",
											"category_uuid" : "5c6bc7d4-7760-4702-b63f-7f29eca479e3",
											"artist_uuid" : "da19a62f-d155-4e3c-a24f-5c156ce321fc",
											"artist_name" : "\ub298\uc18c\ub2f4",
											"is_sale" : false,
											"sale_rate" : 0,
											"price_origin" : 48500,
											"price_sale" : 48500,
											"thumb_image_url" : "https:\/\/image.idus.com\/image\/files\/9abc0c52e6594e7d807c378aec2bb962_1080.jpg",
											"is_favorite" : false,
											"review" : {
												"count" : 326,
												"rate" : 4.9,
												"contents" : "\ub9d8\uc5d0 \ub4ed\ub2c8\ub2e4."
											},
											"badges" : [
													{
														"type" : "DELIVERY",
														"label" : "\ubb34\ub8cc\ubc30\uc1a1"
													},
													{
														"type" : "FOOD",
														"label" : "\uc548\uc804\uc2dd\ud488"
													} ]
										}
									},
									{
										"type" : "PRODUCT",
										"query" : "\ucd94\uc11d\uc120\ubb3c",
										"product" : {
											"uuid" : "cbf62717-be0e-4598-84a0-b198ce3458de",
											"name" : "[\ucd94\uc11d]\u2764\ufe0f\uc559\uaf2c\uc808\ud3b8 4\uc885 \ub5a1(\ud770\ud325,\uc465\ud325,\uace0\uad6c\ub9c8,\ud751\uc784\uc790)",
											"category_uuid" : "5c6bc7d4-7760-4702-b63f-7f29eca479e3",
											"artist_uuid" : "ffcd6a98-2b78-4ad8-b8de-c8ecab71b219",
											"artist_name" : "\ub354\ubc14\ub978",
											"is_sale" : true,
											"sale_rate" : 40,
											"price_origin" : 7500,
											"price_sale" : 4500,
											"thumb_image_url" : "https:\/\/image.idus.com\/image\/files\/a179a3ef791d4bbdb42bf3bddefbdd21_1080.jpg",
											"is_favorite" : false,
											"review" : {
												"count" : 132,
												"rate" : 4.9,
												"contents" : "\uc5bc\uc74c\ud329 \ub179\uc9c0\uc54a\uace0 \ub9d0\ub791\ud55c \ub5a1\uc73c\ub85c \uc798 \uc654\uc5b4\uc694. \ub9db\uc788\ub124\uc694~ \uc798 \uba39\uc744\uac8c\uc694!"
											},
											"badges" : [ {
												"type" : "FOOD",
												"label" : "\uc548\uc804\uc2dd\ud488"
											} ]
										}
									},
									{
										"type" : "PRODUCT",
										"query" : "\ucd94\uc11d\uc120\ubb3c",
										"product" : {
											"uuid" : "639717b5-aa4b-4783-849f-9a190e0c2bb6",
											"name" : "\ucd94\uc11d\uc608\uc57d\ud83d\udd06\ub2ec\ub2ec\ubc84\ud130\ucfe0\ud0a4\ud83d\udd06",
											"category_uuid" : "5c6bc7d4-7760-4702-b63f-7f29eca479e3",
											"artist_uuid" : "67430868-12f8-406d-9e77-331e5f8478f7",
											"artist_name" : "\ub108\ub791\ub098 \ub2ec\ub2ec\ud574",
											"is_sale" : false,
											"sale_rate" : 0,
											"price_origin" : 15000,
											"price_sale" : 15000,
											"thumb_image_url" : "https:\/\/image.idus.com\/image\/files\/e963e1c165334da398d595bbe32356ee_1080.png",
											"is_favorite" : false,
											"review" : {
												"count" : 1360,
												"rate" : 4.8,
												"contents" : "\ub9ac\ubcf8\uc744 \ub108\ubb34 \uc774\uc058\uac8c \ubb36\uc5b4\uc8fc\uc154\uc11c \ub458\ub2e4 \uc120\ubb3c\uc744 \ud574\uc57c\ud558\ub098 \uace0\ubbfc\ud558\ub2e4 \ud558\ub098 \uc120\ubb3c\ud558\uace0 \ud558\ub098 \ud480\uc5b4\uc11c \uba39\uc5c8\uc5b4\uc694. \ub124\uac00\uc9c0 \ub9db\ubcf4\ub2e4\ubcf4\uba74 \uae08\ubc29 \ubc14\ub2e5\uc774\ub124\uc694. "
											},
											"badges" : [ {
												"type" : "FOOD",
												"label" : "\uc548\uc804\uc2dd\ud488"
											} ]
										}
									},
									{
										"type" : "SHOWROOM",
										"query" : "\ucd94\uc11d\uc120\ubb3c",
										"showroom" : {
											"id" : 1710,
											"title" : "\uac10\uc0ac\uc758 \ub9c8\uc74c\uc744 \ub2f4\uc544, \ucd94\uc11d \ud504\ub9ac\ubbf8\uc5c4 \uc120\ubb3c\ud83c\udf41",
											"description" : "\ub2e4\uac00\uc624\ub294 \ucd94\uc11d, \uadf8\ub3d9\uc548\uc758 \uac10\uc0ac\ud568\uacfc\r\n\ud568\uaed8 \ud558\uc9c0 \ubabb\ud558\uc5ec \ubbf8\uc548\ud55c \ub9c8\uc74c\uc744 \ud568\uaed8 \ub2f4\uc544\r\n\ub530\ub4ef\ud558\uace0 \uc815\uc131 \uae4a\uc740 \uc120\ubb3c\uc744 \uc900\ube44\ud574\ubcf4\uc138\uc694\ud83c\udf41\r\n\r\n\ud83d\udea82\ub9cc\uc6d0 \uc989\uc2dc \ud560\uc778 \ubc1b\uc73c\uc138\uc694\ud83d\udea8 (\uc120\ucc29\uc21c 2,000\uba85)\r\n2O\ub9cc\uc6d0 \uc774\uc0c1 \uacb0\uc81c \uc2dc, '\ubcf5\uc7a1\ud558\uac8c \uce74\ub4dc \uacb0\uc81c' \ud074\ub9ad > 2\ub9cc\uc6d0\ud560\uc778!",
											"is_del" : 0,
											"is_visible" : 1,
											"start_date" : "2021-08-20 00:00:00",
											"end_date" : "2021-09-30 00:00:00",
											"track_key" : "bizproject1710"
										},
										"products_path" : "\/craft\/showrooms\/1710\/products",
										"products_url" : "https:\/\/api.idus.com\/craft\/showrooms\/1710\/products"
									},
									{
										"type" : "PRODUCT",
										"query" : "\ucd94\uc11d\uc120\ubb3c",
										"product" : {
											"uuid" : "f85249fd-18f7-4b5d-8ed2-e68967709781",
											"name" : "[\ucd94\uc11d\uc120\ubb3c] \ud55c\uacfc \uc2e4\uc18d \uc120\ubb3c\uc138\ud2b8 - \uc18c\uc911\ud568",
											"category_uuid" : "5c6bc7d4-7760-4702-b63f-7f29eca479e3",
											"artist_uuid" : "a57ddb20-5f3f-4af5-beab-da9608d2e8dc",
											"artist_name" : "\uac15\ub989 \ubc14\ub86c\ud55c\uacfc",
											"is_sale" : true,
											"sale_rate" : 3,
											"price_origin" : 30000,
											"price_sale" : 29000,
											"thumb_image_url" : "https:\/\/image.idus.com\/image\/files\/740787d0a4ea4306a9046da31eac1e53_1080.jpg",
											"is_favorite" : false,
											"review" : {
												"count" : 160,
												"rate" : 4.9,
												"contents" : "\ubd80\ub354\ub7fd\uace0 \uc801\ub2f9\ud55c \ub2e8\ub9db \uc88b\uc544 \uc694"
											},
											"badges" : [ {
												"type" : "FOOD",
												"label" : "\uc548\uc804\uc2dd\ud488"
											} ]
										}
									},
									{
										"type" : "PRODUCT",
										"query" : "\ucd94\uc11d\uc120\ubb3c",
										"product" : {
											"uuid" : "9b430be0-3e72-420e-aa34-bafe9f2e6022",
											"name" : "\uc218\uc81c\uc591\uac31\uc138\ud2b8(5\uac00\uc9c0\ub9db-30\uac1c\uc785)\uc0c1\uacac\ub840\uc120\ubb3c\u2764",
											"category_uuid" : "5c6bc7d4-7760-4702-b63f-7f29eca479e3",
											"artist_uuid" : "16df9c8b-ee97-4e81-8239-af4c4aaecbed",
											"artist_name" : "\uc2a4\uc704\ud2b8\ub808\ub4dc\ube48",
											"is_sale" : false,
											"sale_rate" : 0,
											"price_origin" : 36000,
											"price_sale" : 36000,
											"thumb_image_url" : "https:\/\/image.idus.com\/image\/files\/2d952865873f4b8ca3bbcc20600d634d_1080.jpg",
											"is_favorite" : false,
											"review" : {
												"count" : 137,
												"rate" : 5,
												"contents" : "\uc120\ubb3c\uc6a9\uc73c\ub85c \uad6c\ub9e4\ud588\ub294\ub370 \uc591\uac31\uc774\ub3c4 \ub9db\uc788\ub2e4\uace0\ub4e4 \ud558\uace0, \ud3ec\uc7a5\ub3c4 \ub108\ubb34 \uc608\uc058\ub124\uc694 \u314e\u314e !! \ucd94\ucc9c\ud569\ub2c8\ub2e4\uc544!"
											},
											"badges" : [ {
												"type" : "FOOD",
												"label" : "\uc548\uc804\uc2dd\ud488"
											} ]
										}
									},
									{
										"type" : "PRODUCT",
										"query" : "\ucd94\uc11d\uc120\ubb3c",
										"product" : {
											"uuid" : "b772e5e8-345f-478b-ac62-a4300982bdb6",
											"name" : "[\ucd94\uc11d\ud560\uc778] \uc2dc\ub8e8\uc544\ub124 \ub2f4\uc74c \uc885\ud569\uc138\ud2b8(40\uad6c)",
											"category_uuid" : "5c6bc7d4-7760-4702-b63f-7f29eca479e3",
											"artist_uuid" : "3d6bb4d7-6a97-4d42-b76f-83e75e1c8075",
											"artist_name" : "\uc2dc\ub8e8\uc544\ub124",
											"is_sale" : true,
											"sale_rate" : 23,
											"price_origin" : 48000,
											"price_sale" : 37000,
											"thumb_image_url" : "https:\/\/image.idus.com\/image\/files\/85e4924d54db42f8b9aae200fb741ce3_1080.png",
											"is_favorite" : false,
											"review" : {
												"count" : 580,
												"rate" : 4.9,
												"contents" : "\ub5a1\uc740 \ub108\ubb34 \ub9cc\uc871\uc2a4\ub7ec\uc6cc\uc694 \ubc14\uc058\uc2dc\ub354\ub77c\ub3c4 \uc2e0\uacbd\ub9ce\uc774\uc368\uc8fc\uc138\uc694 \ubc88\ucc3d\ud558\uc138\uc694"
											},
											"badges" : [
													{
														"type" : "DELIVERY",
														"label" : "\ubb34\ub8cc\ubc30\uc1a1"
													},
													{
														"type" : "FOOD",
														"label" : "\uc548\uc804\uc2dd\ud488"
													} ]
										}
									},
									{
										"type" : "PRODUCT",
										"query" : "\ucd94\uc11d\uc120\ubb3c",
										"product" : {
											"uuid" : "f1da2013-ff48-4e71-9605-71719d69edfc",
											"name" : "\uace0\uae09\ucd94\uc11d\uc120\ubb3c\ud83c\udf81\ubb34\uc124\ud0d5 \uc218\uc81c\uc591\uac31\ud83c\udf3912\uad6c25g\uc1fc\ud551\ubc31\ub4dc\ub9bc",
											"category_uuid" : "5c6bc7d4-7760-4702-b63f-7f29eca479e3",
											"artist_uuid" : "20c1d2ef-f9bd-487e-af25-5581411cc28e",
											"artist_name" : "\ub77c\uc628\ub2e4\uc628",
											"is_sale" : true,
											"sale_rate" : 16,
											"price_origin" : 25000,
											"price_sale" : 21000,
											"thumb_image_url" : "https:\/\/image.idus.com\/image\/files\/f4b4b5dd1d9e4f119570b9bc010776da_1080.jpg",
											"is_favorite" : false,
											"review" : {
												"count" : 138,
												"rate" : 4.8,
												"contents" : "\ub9ce\uc774 \ub2ec\uc9c0 \uc54a\uace0 \ub9db\uc788\uc2b5\ub2c8\ub2e4.\n\uc0c9\uae54\uc774 \uc774\ubed0\uc11c \ub9c8\uc74c\uc5d0 \ub4e4\uc5b4\uc694.\n\uaf43\ucc28\uc640 \ud568\uaed8\ud558\ub2c8 \ub354 \uc88b\ub124\uc694\u314e"
											},
											"badges" : [ {
												"type" : "FOOD",
												"label" : "\uc548\uc804\uc2dd\ud488"
											} ]
										}
									},
									{
										"type" : "PRODUCT",
										"query" : "\ucd94\uc11d\uc120\ubb3c",
										"product" : {
											"uuid" : "9fcb2152-cb02-490c-b839-dba81c66e160",
											"name" : "10\uc77c\ucd9c\uace0 \ucd94\uc11d\uc120\ubb3c\ud83c\udf81\ub514\ub514\uc58c \ub9c8\uce74\ub871 \uc218\uc81c \ub6b1\uce74\ub871 24\uc885",
											"category_uuid" : "5c6bc7d4-7760-4702-b63f-7f29eca479e3",
											"artist_uuid" : "6c50c76e-d7df-437c-acd6-a95aaba517a1",
											"artist_name" : "\ub514\ub514\uc58c",
											"is_sale" : true,
											"sale_rate" : 6,
											"price_origin" : 1700,
											"price_sale" : 1600,
											"thumb_image_url" : "https:\/\/image.idus.com\/image\/files\/78815aa1431e4befa7545613b8794bce_1080.jpg",
											"is_favorite" : false,
											"review" : {
												"count" : 4773,
												"rate" : 4.8,
												"contents" : "\ub9db\uc788\uc5b4\uc694!!!! \uc7ac\uad6c\ub9e4\ud560\uac8c\uc694 \u314e\u314e"
											},
											"badges" : [ {
												"type" : "FOOD",
												"label" : "\uc548\uc804\uc2dd\ud488"
											} ]
										}
									},
									{
										"type" : "PRODUCT",
										"query" : "\ucd94\uc11d\uc120\ubb3c",
										"product" : {
											"uuid" : "85276990-dfb3-4e37-8435-ecb8299d6c83",
											"name" : "[\ucd94\uc11d\uc120\ubb3c]\ud83c\udf88\uc911\ub3c5\uc131\uac15\ud55c \uc218\uc81c\uc57d\uacfc \ud83c\udf88 ",
											"category_uuid" : "5c6bc7d4-7760-4702-b63f-7f29eca479e3",
											"artist_uuid" : "a729e326-2e8c-42aa-ab62-3da9a611c933",
											"artist_name" : "\ub9c8\ubbf8\uc2a4\ucfe0\ud0b9",
											"is_sale" : true,
											"sale_rate" : 8,
											"price_origin" : 13000,
											"price_sale" : 12000,
											"thumb_image_url" : "https:\/\/image.idus.com\/image\/files\/c313ea100d394089a32b72fc61f4309d_1080.jpg",
											"is_favorite" : false,
											"review" : {
												"count" : 339,
												"rate" : 4.8,
												"contents" : "\uc624\ub298 \ubc1b\uc558\uc5b4\uc694~ \n\uc120\ubb3c\ud3ec\uc7a5 \uc2e0\uccad\ud55c \uc904~\n\uae54\ub054\ud55c \ubc15\uc2a4\uc5d0 \uc608\uc058\uace0 \uc815\uac08\ud558\uac8c\n\ub4e4\uc5b4\uc788\ub294 \uc790\ud0dc\ubd80\ud130 \uc608\uc0ac\ub86d\uc9c0 \uc54a\ub354\ub2c8 \uc5ed\uc2dc~ \n\ubd80\ub4dc\ub7fd\uace0 \ub2ec\ub2ec\ud55c \uc57d\uacfc~\n\ud638\ub450\ud30c\uc774\ub294 \uc544\uaef4\uba39\uc744\ub798\uc694 \u314e\n\uc8fc\ubb38\ud574\uc11c \ucd94\uc11d\ub54c \uc560\ub4e4 \uc880 \ub098\ub220\uc918\uc57c\uaca0\uc5b4\uc694.\n\ub9db\uc788\ub294\uac70 \uc788\uc74c \uc790\uc2dd\uc0dd\uac01\ubd80\ud130 \ub098\ub294\uac74 \uc5b4\uca54\uc218 \uc5c6\ub098\ubd10\uc694~"
											},
											"badges" : [ {
												"type" : "FOOD",
												"label" : "\uc548\uc804\uc2dd\ud488"
											} ]
										}
									},
									{
										"type" : "PRODUCT",
										"query" : "\ucd94\uc11d\uc120\ubb3c",
										"product" : {
											"uuid" : "5f3a8b4c-c382-4828-9404-b33c34603baa",
											"name" : "\ubc84\ud130\ud48d\ubbf8 \uac00\ub4dd~ 516\ucfe0\ud0a4 \uc624\ub9ac\uc9c0\ub110",
											"category_uuid" : "5c6bc7d4-7760-4702-b63f-7f29eca479e3",
											"artist_uuid" : "363ae59a-9e2b-4afc-9c6f-05075f655444",
											"artist_name" : "\uc18c\ub4dc\ub77d\uc774",
											"is_sale" : false,
											"sale_rate" : 0,
											"price_origin" : 13000,
											"price_sale" : 13000,
											"thumb_image_url" : "https:\/\/image.idus.com\/image\/files\/340b55483b3b4e4986d7712f55bee3e1_1080.jpg",
											"is_favorite" : false,
											"review" : {
												"count" : 308,
												"rate" : 4.8,
												"contents" : "5\uac1c\uc815\ub3c4 \uae68\uc838\uc11c \uc640\uc11c \uc544\uc27d\uae34\ud588\ub514\ub9cc \n\ub118\ub9db\uc788\ub124\uc694 "
											},
											"badges" : [ {
												"type" : "FOOD",
												"label" : "\uc548\uc804\uc2dd\ud488"
											} ]
										}
									},
									{
										"type" : "PRODUCT",
										"query" : "\ucd94\uc11d\uc120\ubb3c",
										"product" : {
											"uuid" : "f42d9897-e585-4324-9e74-b6680a06d8e7",
											"name" : "\ud83c\udf8e\ucd94\uc11d\uc608\uc57d\ud560\uc778\ud83c\udf8e\ucac0\ub4dd\ud55c \ub2e8\ud638\ubc15\ucc30\uafc0\ube75 12\uac1c\uc785",
											"category_uuid" : "5c6bc7d4-7760-4702-b63f-7f29eca479e3",
											"artist_uuid" : "26824d50-5777-488c-b09a-019aa30c7b73",
											"artist_name" : "\uc300\ucf69\uc774",
											"is_sale" : true,
											"sale_rate" : 33,
											"price_origin" : 23000,
											"price_sale" : 15500,
											"thumb_image_url" : "https:\/\/image.idus.com\/image\/files\/d8428b580cbb4cbebdbf53e7ec249507_1080.jpg",
											"is_favorite" : false,
											"review" : {
												"count" : 653,
												"rate" : 4.9,
												"contents" : "\uc6b0\uc655  \uc9c4\uc9dc\uc9c4\uc9dc \ub9db\uc788\uc5b4\uc694. \ub5a1\uc740 \ubcc4\ub85c \uc548\uc88b\uc544\ud558\ub294\ub370  \uc9c4\uc9dc \ub5a1\uacfc \ube75\uc0ac\uc774\uc758 \uc9c4\uc9dc \uba39\uc5b4\ubcf4\uc9c0\ubabb\ud55c \ub9db\uc774\uc5d0\uc6a5\n\ub610\uc0dd\uac01\ub098\uc11c \uc7ac\uad6c\ub9e4\ud560\uac83\uac19\ub124\uc694. \ub9db\uc788\uac8c \uc798 \uba39\uaca0\uc2b5\ub2c8\ub2f9\u2661\u2661!!"
											},
											"badges" : [ {
												"type" : "FOOD",
												"label" : "\uc548\uc804\uc2dd\ud488"
											} ]
										}
									},
									{
										"type" : "SHOWROOM",
										"query" : "\ucd94\uc11d\uc120\ubb3c",
										"showroom" : {
											"id" : 1709,
											"title" : "\ud83c\udf41\ucd94\uc11d \uc120\ubb3c \uc608\uc57d \ud560\uc778 \uae30\ud68d\uc804\ud83c\udf41",
											"description" : " \ud83d\udd25\ub9c8\uac10\uc784\ubc15\ud83d\udd25 \ucd5c\ub300 89% \uc608\uc57d\ud560\uc778\uc774 \uace7 \uc885\ub8cc\ub429\ub2c8\ub2e4\u2757\r\n\uc5b4\uc11c\uc5b4\uc11c \ub9c8\uc9c0\ub9c9 \uae30\ud68c\ub97c \uc7a1\uc73c\ub7ec \uac00\ubcfc\uae4c\uc694?\ud83c\udfc3\u200d\u2642\ufe0f\r\n\r\n\ud83d\udea82\ub9cc\uc6d0 \uc989\uc2dc \ud560\uc778 \ubc1b\uc73c\uc138\uc694\ud83d\udea8 (\uc120\ucc29\uc21c 2,000\uba85)\r\n2O\ub9cc\uc6d0 \uc774\uc0c1 \uacb0\uc81c \uc2dc, '\ubcf5\uc7a1\ud558\uac8c \uce74\ub4dc \uacb0\uc81c' \ud074\ub9ad > 2\ub9cc\uc6d0\ud560\uc778!",
											"is_del" : 0,
											"is_visible" : 1,
											"start_date" : "2021-08-23 12:00:00",
											"end_date" : "2021-09-12 23:59:00",
											"track_key" : "operation1709"
										},
										"products_path" : "\/craft\/showrooms\/1709\/products",
										"products_url" : "https:\/\/api.idus.com\/craft\/showrooms\/1709\/products"
									} ],
							searchResultPagination : {
								"page_size" : 32,
								"total_size" : 416,
								"items_size" : 13312,
								"current_page" : 1
							},
							// filter
							filterList : filterList,
							isFiltered : false,
							// recommend
							artistProduct : {
								items : [],
								title : "작가님 추천 작품",
								path : "recommend-artist-product"
							},
							liveProduct : {
								items : [],
								title : "실시간 추천 작품",
								path : "live-recommend-product"
							},
							isProductFound : true,
							relatedKeywordList : [
									"\ucd94\uc11d\uc120\ubb3c\uc138\ud2b8",
									"\uc5b4\ub9b0\uc774\uc9d1 \ucd94\uc11d\uc120\ubb3c",
									"\uba85\uc808 \uc120\ubb3c",
									"\ucd94\uc11d\uc6a9\ub3c8\ubd09\ud22c",
									"z\ud50c\ub9bd3 \ucf00\uc774\uc2a4",
									"\ubd80\ubaa8\ub2d8 \ucd94\uc11d\uc120\ubb3c",
									"\uc218\uc81c\uccad",
									"\ucd94\uc11d\ubd09\ud22c",
									"\uc120\uc0dd\ub2d8\ucd94\uc11d\uc120\ubb3c",
									"\uacac\uacfc\ub958\ubc14" ],
							spellCorrectionWord : ''
						}
					});
			vuepack.create(vueComponents);
		</script>
		<div data-vue="ToastPopup"></div>
		<div data-vue="BottomSheet"></div>
		<div data-vue="WideBottomSheet"></div>
		<div data-vue="FooterModal"></div>
		<div data-vue="InactiveToast"></div>
		<a href="#header" class="to-top" data-ui="scroll-to-top" data-page="">
			<img src="resources/images/common/go-to-top-image.png"
			alt="go to top">
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
	
	<a href="#header" class="to-top" data-ui="scroll-to-top" data-page="" style="display: flex;"> 
			<img src="resources/images/common/go-to-top-image.png" alt="go to top">
		</a>
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
