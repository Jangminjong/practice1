<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	String emailSplit = (String)session.getAttribute("emailSplit");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>아이디어스 - 핸드메이드, 수공예, 수제 먹거리</title>
<link href="resources/css/content.css" rel="stylesheet" />
<!--
      	<meta http-equiv="X-UA-Compatible" content="ie=edge">
        <meta name="naver-site-verification" content="a8c6e5633b597db7b48d05e4a7d247011f6794ec"/>
        <meta name="google-site-verification" content="NnaPRa-jWBb5SnBiwjEZkMqm1pFS2Y8mVdUG0nJqO4c" />
        <meta name="theme-color" content="#ffffff"/>
        <link rel="apple-touch-icon" sizes="384x384" href="/resources/dist/images/app-icon/icon_300.png">
        <link rel="apple-touch-icon" sizes="256x256" href="/resources/dist/images/app-icon/icon_300.png">
        <link rel="apple-touch-icon" sizes="192x192" href="/resources/dist/images/app-icon/icon_192.png">
        <link rel="apple-touch-icon" sizes="128x128" href="/resources/dist/images/app-icon/icon_120.png">
        <link rel="apple-touch-icon" sizes="96x96" href="/resources/dist/images/app-icon/icon_96.png">
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
        <!-- Intersection Observer polyfill
        <script src="https://polyfill.io/v3/polyfill.js?features=IntersectionObserver&ua=ie/11"></script>
                <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0, user-scalable=0 viewport-fit=cover"/>
        <meta name="application-name" content="아이디어스" />
        <meta name="keywords" content="핸드메이드, 수공예, 수제 먹거리"/>
        <meta property="fb:app_id" content="1410666675867984" />
                <meta name="description" content="취향 맞춤 작품 구매부터 취미 생활까지, 아이디어스로 일상에 특별함을 잇다!" />
        <meta property="og:title" content="핸드메이드 라이프스타일 플랫폼, 아이디어스" />
        <meta property="og:type"   content="website" />
        <meta property="og:description" content="취향 맞춤 작품 구매부터 취미 생활까지, 아이디어스로 일상에 특별함을 잇다!" />
        <meta property="og:url" content="http://www.idus.com/"/>
        <meta property="og:image" content="http://www.idus.com/resources/dist/images/ogimg-idus.png?ver=2.0" />
        <link rel="canonical" href="http://www.idus.com/"/>
                <script>
            window.__client_env__ = 'production';
            window.CNN_DOMAIN = 'https://cnn.idus.com';
        </script>
        <!-- project src
        <link rel="icon" href="/resources/favicon_32.ico" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

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
        <link rel="stylesheet" href="/resources/dist/css/idus.web.min.css?__v=1630657354">
        <link rel="stylesheet" href="/resources/dist/css/vendor.client.min.css?__v=1630657354">
        <script src="/resources/dist/js/vendor.client.min.js?__v=1630657354"></script>
        <script src="/resources/dist/js/vuepack.js?__v=1630657354"></script>
        
        <link rel="stylesheet" href="//cdn.flowplayer.com/releases/native/v2.5.14/style/flowplayer.css">
        <script src="//cdn.flowplayer.com/releases/native/v2.5.14/flowplayer.min.js"></script>
        <script src="//cdn.flowplayer.com/releases/native/v2.5.14/plugins/dash.min.js"></script>
        <script src="//cdn.flowplayer.com/releases/native/v2.5.14/plugins/thumbnails.min.js"></script>
        <script src="//cdn.flowplayer.com/releases/native/v2.5.14/plugins/speed.min.js"></script>
        <script src="//cdn.flowplayer.com/releases/native/v2.5.14/plugins/hls.min.js"></script>
        <script src="//cdn.flowplayer.com/releases/native/v2.5.14/plugins/dash.min.js"></script>
        <script src="//cdn.flowplayer.com/releases/native/v2.5.14/plugins/keyboard.min.js"></script>
        <!-- <script src="//cdn.flowplayer.com/releases/native/stable/plugins/cuepoints.min.js"></script> -->

<!-- Kakao web SDK
        <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
        <!-- Signin With Apple -->
<!--  <script type="text/javascript" src="https://appleid.cdn-apple.com/appleauth/static/jsapi/appleid/1/en_US/appleid.auth.js"></script>-->

<!-- tracker vendors
        <script async src="https://www.googletagmanager.com/gtag/js?id=AW-775263643"></script>
        <script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
        <script type="text/javascript" src="//static.criteo.net/js/ld/ld.js" async="true"></script>
        <script src="//wcs.naver.net/wcslog.js"></script>

        <!-- trackers
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
        <!-- sitelink - search box
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
-->
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
            id: 0,
            thumb: '',
            age: 0,
            gender: 'none',
            grade: 0,
            uuid: '',
            isVip: false        });
        vuepack.createToken('[data-vue="token"]', {
            token: {},
            userId: 0        });

        /* Idus Log V2 */
                vuepack.externals.IdusLog.Logger.setIdentityId('ap-northeast-2:2dc1cfd9-6d87-4b2e-86e9-527ab8d8b91b');
                vuepack.externals.IdusLog.Logger.initialize({
            isApp: false,
            region: 'ap-northeast-2',
            identityPoolId: 'ap-northeast-2:f4c028af-cb84-43cc-a8e5-b047d272b323',
            accountId: '773161815152',
            userData: {
                userId: '',
                userAge: '',
                userGrade: '',
                userGender: 'none'
            },
            appData: {
                env: 'prod',
                appVersion: '1630657354'
            }
        });
        </script>

	<div class="wrap">
	<jsp:include page="header_goods.jsp"/>
		

		<div id="skip-to-content">
			<a href="#gnb">메뉴목록으로 바로가기</a> <a href="#content">컨텐츠로 바로가기</a>
		</div>

		<div class="dimmed-background"></div>
		<div id="content" class="content" data-page="main">
			<!-- 메인 -->
			<section id="main_visual">
				<div class="ui-slider style-main home" data-ui="slider"
					data-resize="true" data-rolling="true" data-indicator-type="label"
					tabindex="-1"
					style="touch-action: pan-y; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0)">
					<div class="outer-frame">
						<ul class="inner-frame" style="margin-left: 0px;">
							<li class="ui-slide showroom-banner"
								style="background: #4B2C2C; width: 지정해야함; display: list-item;"
								data-id="1709"><a href="product_search.do"> <img
									src="https://image.idus.com/image/files/8817b53cb0d0441c8d6287cbcc808ab5.jpg"
									alt="🍁추석 선물 예약 할인 기획전🍁">
							</a></li>
							<li class="ui-slide showroom-banner" style="background: #d16160"
								data-id="1765"><a
								href="product_search.do">
									<img
									src="https://image.idus.com/image/files/7a74d4a986ab4823b277b08aab30242c.jpg"
									alt="9월 용돈줍줍🌕 보름달처럼 커지는 혜택">
							</a></li>
							<li class="ui-slide showroom-banner" style="background: #9D6F6F"
								data-id="1710"><a href="product_search.do"> <img
									src="https://image.idus.com/image/files/c8949e03c5de4ba18d71ef9c0acd1ffd.jpg"
									alt="감사의 마음을 담아, 추석 프리미엄 선물🍁">
							</a></li>
							<li class="ui-slide showroom-banner" style="background: #316E64"
								data-id="1766"><a
								href="product_search.do">
									<img
									src="https://image.idus.com/image/files/93cc95ff4fe447068aebe90df0a420f4.png"
									alt="가을맞이 9월 특별 혜택 이벤트🍂">
							</a></li>
							<li class="ui-slide showroom-banner" style="background: #F4F1ED"
								data-id="1711"><a href="product_search.do"> <img
									src="https://image.idus.com/image/files/e4485b2ddc654b5ca20b305da0fd7907.jpg"
									alt="부담을 덜어주는 가성비 추석 선물🌝">
							</a></li>
							<li class="ui-slide showroom-banner" style="background: #F5BA93"
								data-id="1767"><a href="product_search.do"> <img
									src="https://image.idus.com/image/files/8ad91ba3ff274846942a2728bda5dc2d.jpg"
									alt="가을과 함께 찾아온 9월 할인🌰">
							</a></li>
							<li class="ui-slide showroom-banner" style="background: #13456A"
								data-id="1719"><a href="product_search.do"> <img
									src="https://image.idus.com/image/files/a1125915484449788879a74274b97595.jpg"
									alt="마음을 표현하는 확실한 선물 용돈🤑">
							</a></li>
							<li class="ui-slide showroom-banner" style="background: #FBF2E0"
								data-id="1770"><a href="product_search.do"> <img
									src="https://image.idus.com/image/files/02cb966364554bb586606f9f3cb86da1.jpg"
									alt="즐거운 한끼를😋 위한 아름다운 구성 🍲">
							</a></li>
							<li class="ui-slide showroom-banner" style="background: #E8E1D3"
								data-id="1753"><a href="product_search.do"> <img
									src="https://image.idus.com/image/files/b3909662fd4f4cb69bd608f4e815630a.jpg"
									alt="몸이 편한 감성룩😌 라운지웨어">
							</a></li>
							<li class="ui-slide showroom-banner" style="background: #FFE985"
								data-id="1733"><a href="product_search.do"> <img
									src="https://image.idus.com/image/files/95fca4de8f264fce82cb05939d9cf488.jpg"
									alt="금요일에 만나요 (feat. 입점할인)">
							</a></li>
							<li class="ui-slide showroom-banner" style="background: #5585FD"
								data-id="1254"><a
								href="product_search.do"> <img
									src="https://image.idus.com/image/files/8966b9bc2c004c0f8d6dc98f00cbda9b.jpg"
									alt="🌈2주무료🌈 취미클래스 무제한스트리밍">
							</a></li>
							<li class="ui-slide showroom-banner" style="background: #f38586"
								data-id="1786"><a href="product_search.do"> <img
									src="https://image.idus.com/image/files/2ca482b1286644d4890ec380bcc37776.jpg"
									alt="9월 7일, 오늘만 할인🙌">
							</a></li>
						</ul>
					</div>
					<fieldset class="ui-control" style="display: block;">
						<button type="button" class="ui-btn prev" aria-label="이전">
							<i class="fa fa-chevron-left fa-2x"></i>
						</button>
						<nav class="indicator"></nav>
						<button type="button" class="ui-btn next" aria-label="다음">
							<i class="fa fa-chevron-right fa-2x"></i>
						</button>
					</fieldset>
				</div>
			</section>

			<!-- 내가 본 작품의 연관 작품 -->
			<section id="related-product" class="page-section inner-w">
				<div data-vue="MainRelatedProductSection"></div>
			</section>
			<!-- 내가 본 작품의 연관 작품 -->

			<!-- 인기작품 신규 -->
			<section id="ranking" class="page-section inner-w"
				data-ui="load-all-on-scroll">
				<div class="stickyparent">
					<div class="ui_title">
						<a href="cate_goods.do" class="ui_title__txt"> <span>인기작품</span>
						</a>
					</div>
					<div data-on-scroll="load-content" data-endpoint="/mainAsync/api_category_popular?item=3&amp;p_item=10">
						<div class="ui_title--bg">
							<a href="cate_goods.do"
								data-category-uuid="5c6bc7d4-7760-4702-b63f-7f29eca479e3"
								class="ui_title__txt">디저트, 베이커리, 떡</a> <a href="cate_goods.do"
								data-category-uuid="5c6bc7d4-7760-4702-b63f-7f29eca479e3"
								class="ui_title__txtright">더보기<i
								class="idus-icon-arrow-right"></i></a>
						</div>

						<div class="ui_grid">
										<ul class="ui_grid__cols--5" data-category-uuid="5c6bc7d4-7760-4702-b63f-7f29eca479e3">
											<li class="ui_grid__item">
												<div class="card-add-icon">
													<em class="icon-num" data-ranking="1">1</em>
													<div class="ui_card">
														<button type="button"
															class="ui_card__overlay btn-ico sp-icon icon-favorite"
															data-name="starred-toolbar" data-starred-type="product"
															data-init="" data-starred=""
															data-target-id="046e334b-6b1d-451b-972a-a1601034f9f4">
														</button>

														<div class="ui_card__imgcover">
															<a href="detail_content.do"
																target="_blank"
																aria-label="[추석할인] 시루아네 정성종합세트(개별포장, 24개입)"
																class="ui_card__img"
																data-product-id="046e334b-6b1d-451b-972a-a1601034f9f4"
																style="background-image: url('resources/images/footer/item01.PNG')"
																data-was-processed="true"></a>
														</div>

														<div class="ui_card__info">
															<a href="seller_goods.do"
																class="ui_card__label" target="_blank">시루아네</a> <a
																href="detail_content.do"
																class="ui_card__title"
																data-product-id="046e334b-6b1d-451b-972a-a1601034f9f4"
																target="_blank">[추석할인] 시루아네 정성종합세트(개별포장, 24개입)</a>
														</div>

														<div class="ui_card__rating">
															<div class="ui_card__vcenter">
																<div class="ui_rating" data-ui="rating" data-value="5">
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																</div>
															</div>

															<span class="ui_card__comment">시댁이 보내드렸는데 먹어보시더니
																맛있다고 좋아하셨어요~ 추석상에 올리신다하여 40구짜리로 추가주문하려구요~^^ </span>
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
															data-target-id="b772e5e8-345f-478b-ac62-a4300982bdb6">
														</button>

														<div class="ui_card__imgcover">
															<a href="/w/product/b772e5e8-345f-478b-ac62-a4300982bdb6"
																target="_blank" aria-label="[추석할인] 시루아네 담음 종합세트(40구)"
																class="ui_card__img"
																data-product-id="b772e5e8-345f-478b-ac62-a4300982bdb6"
																style="background-image: url('https://image.idus.com/image/files/85e4924d54db42f8b9aae200fb741ce3_512.png')"
																data-was-processed="true"></a>
														</div>

														<div class="ui_card__info">
															<a href="/w/artist/3d6bb4d7-6a97-4d42-b76f-83e75e1c8075"
																class="ui_card__label" target="_blank">시루아네</a> <a
																href="/w/product/b772e5e8-345f-478b-ac62-a4300982bdb6"
																class="ui_card__title"
																data-product-id="b772e5e8-345f-478b-ac62-a4300982bdb6"
																target="_blank">[추석할인] 시루아네 담음 종합세트(40구)</a>
														</div>

														<div class="ui_card__rating">
															<div class="ui_card__vcenter">
																<div class="ui_rating" data-ui="rating" data-value="5">
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																</div>
															</div>

															<span class="ui_card__comment">떡 하나하나가 너무 맛있어요. 특히
																전 오메기떡이 너무너무 맛있네요. 통팥의 달콤함^^</span>
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
															data-target-id="82fb28c8-7e6a-444f-b375-19fa10f464ae">
														</button>

														<div class="ui_card__imgcover">
															<a href="/w/product/82fb28c8-7e6a-444f-b375-19fa10f464ae"
																target="_blank" aria-label="[추석할인] 시루아네 카스테라앙절미(40구)"
																class="ui_card__img"
																data-product-id="82fb28c8-7e6a-444f-b375-19fa10f464ae"
																style="background-image: url('https://image.idus.com/image/files/16923dfff30f4e42a2dd964ce3ce75f7_512.jpg')"
																data-was-processed="true"></a>
														</div>

														<div class="ui_card__info">
															<a href="/w/artist/3d6bb4d7-6a97-4d42-b76f-83e75e1c8075"
																class="ui_card__label" target="_blank">시루아네</a> <a
																href="/w/product/82fb28c8-7e6a-444f-b375-19fa10f464ae"
																class="ui_card__title"
																data-product-id="82fb28c8-7e6a-444f-b375-19fa10f464ae"
																target="_blank">[추석할인] 시루아네 카스테라앙절미(40구)</a>
														</div>

														<div class="ui_card__rating">
															<div class="ui_card__vcenter">
																<div class="ui_rating" data-ui="rating" data-value="5">
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																</div>
															</div>

															<span class="ui_card__comment">선물했는데 너무 맛있다고 하네요
																앞으로 30대 이상 선물용으로 기억해놔야겠어요 아침대용으로도 좋고 입이 심심할때도 먹기 좋데요 일주일
																만에 거의 다 먹었다고 ;ㅎ 냉동 보관하면서 먹기 좋다고 하니 선물하기 까다로운 남자분들에게도 잘
																맞아요! 맛있는 떡 감사합니다:)</span>
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
															data-target-id="1457a4bf-bece-4d9a-bff3-3312511c986e">
														</button>

														<div class="ui_card__imgcover">
															<a href="/w/product/1457a4bf-bece-4d9a-bff3-3312511c986e"
																target="_blank"
																aria-label="수제떡맛집 쫀득한 찹쌀약과🍪 추석과 생일 간식선물🎁"
																class="ui_card__img"
																data-product-id="1457a4bf-bece-4d9a-bff3-3312511c986e"
																style="background-image: url('https://image.idus.com/image/files/9a76c4d74abd4408b35114658a773908_512.jpg')"
																data-was-processed="true"></a>
														</div>

														<div class="ui_card__info">
															<a href="/w/artist/9e885570-d829-4999-93b4-a0ce2f5235a0"
																class="ui_card__label" target="_blank">떠카나주</a> <a
																href="/w/product/1457a4bf-bece-4d9a-bff3-3312511c986e"
																class="ui_card__title"
																data-product-id="1457a4bf-bece-4d9a-bff3-3312511c986e"
																target="_blank">수제떡맛집 쫀득한 찹쌀약과🍪 추석과 생일 간식선물🎁</a>
														</div>

														<div class="ui_card__rating">
															<div class="ui_card__vcenter">
																<div class="ui_rating" data-ui="rating" data-value="5">
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																</div>
															</div>

															<span class="ui_card__comment">시판보단 크기가 작지만 맛은 정말
																최고에요!👍 정말 촉촉하고 덜 달아서 먹기 좋아요♡ 딱딱한거 싫거든요ㅠㅠㅎㅎ 남편도 덜 달아서
																맛있다고 더 사라하네요.ㅋㅋ 추석 전에 한번더 사러 오겠습니다!^^ 서비스도 감사히 잘 먹었습니당~</span>
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
															data-target-id="bbd56d61-41d0-4678-9c71-ea44320e243f">
														</button>

														<div class="ui_card__imgcover">
															<a href="/w/product/bbd56d61-41d0-4678-9c71-ea44320e243f"
																target="_blank" aria-label="추석선물 반짝할인⭐ 인기짱 다홍에그타르트"
																class="ui_card__img"
																data-product-id="bbd56d61-41d0-4678-9c71-ea44320e243f"
																style="background-image: url('https://image.idus.com/image/files/73f18243b49d43b6b019cfd12e06747b_512.jpg')"
																data-was-processed="true"></a>
														</div>

														<div class="ui_card__info">
															<a href="/w/artist/cb040e66-0de0-417e-b975-17cbcdb8e481"
																class="ui_card__label" target="_blank">카페다홍</a> <a
																href="/w/product/bbd56d61-41d0-4678-9c71-ea44320e243f"
																class="ui_card__title"
																data-product-id="bbd56d61-41d0-4678-9c71-ea44320e243f"
																target="_blank">추석선물 반짝할인⭐ 인기짱 다홍에그타르트</a>
														</div>

														<div class="ui_card__rating">
															<div class="ui_card__vcenter">
																<div class="ui_rating" data-ui="rating" data-value="5">
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																</div>
															</div>

															<span class="ui_card__comment">맛있게 잘 먹고있어요..크림이
																많아서 좋아요</span>
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
															data-target-id="e4f52656-827e-4e07-aae1-1729b5d3573e">
														</button>

														<div class="ui_card__imgcover">
															<a href="/w/product/e4f52656-827e-4e07-aae1-1729b5d3573e"
																target="_blank" aria-label="추석선물 머랭쿠키🥮👀🥮"
																class="ui_card__img"
																data-product-id="e4f52656-827e-4e07-aae1-1729b5d3573e"
																style="background-image: url('https://image.idus.com/image/files/42038760d3fa4b41aef6aa54f2094be2_512.jpg')"
																data-was-processed="true"></a>
														</div>

														<div class="ui_card__info">
															<a href="/w/artist/192d5628-71e8-4662-a861-689ee546e81c"
																class="ui_card__label" target="_blank">디저트미닛</a> <a
																href="/w/product/e4f52656-827e-4e07-aae1-1729b5d3573e"
																class="ui_card__title"
																data-product-id="e4f52656-827e-4e07-aae1-1729b5d3573e"
																target="_blank">추석선물 머랭쿠키🥮👀🥮</a>
														</div>

														<div class="ui_card__rating">
															<div class="ui_card__vcenter">
																<div class="ui_rating" data-ui="rating" data-value="5">
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																</div>
															</div>

															<span class="ui_card__comment">11개 시켜서 직장상사분들도 드리고
																부모님들 챙겨드렸는데 엄청좋아하셨어요 서비스로 엄청 주셨는데, 주신거 한개 먹어봤는데 많이 달지도
																않고 계속 손이 가더라구요 결국 혼자 한박스 먹은것같아요...ㅎㅎ 밑에 과자랑 조합도 좋아요
																👍🏻👍🏻</span>
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
															data-target-id="9fcb2152-cb02-490c-b839-dba81c66e160">
														</button>

														<div class="ui_card__imgcover">
															<a href="/w/product/9fcb2152-cb02-490c-b839-dba81c66e160"
																target="_blank"
																aria-label="7일출고 추석선물🎁❣디디얌 마카롱 수제 뚱카롱 24종"
																class="ui_card__img"
																data-product-id="9fcb2152-cb02-490c-b839-dba81c66e160"
																style="background-image: url('https://image.idus.com/image/files/78815aa1431e4befa7545613b8794bce_512.jpg')"
																data-was-processed="true"></a>
														</div>

														<div class="ui_card__info">
															<a href="/w/artist/6c50c76e-d7df-437c-acd6-a95aaba517a1"
																class="ui_card__label" target="_blank">디디얌</a> <a
																href="/w/product/9fcb2152-cb02-490c-b839-dba81c66e160"
																class="ui_card__title"
																data-product-id="9fcb2152-cb02-490c-b839-dba81c66e160"
																target="_blank">7일출고 추석선물🎁❣디디얌 마카롱 수제 뚱카롱 24종</a>
														</div>

														<div class="ui_card__rating">
															<div class="ui_card__vcenter">
																<div class="ui_rating" data-ui="rating" data-value="5">
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																</div>
															</div>

															<span class="ui_card__comment">무난해요 그냥.... 가격값하는 것
																같았어요 꼬끄부터 너무 아쉬웠던... 😢</span>
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
															data-target-id="eec15f2e-a4b5-4ea8-9c8e-219d017519be">
														</button>

														<div class="ui_card__imgcover">
															<a href="/w/product/eec15f2e-a4b5-4ea8-9c8e-219d017519be"
																target="_blank" aria-label="[그릭데이]그릭요거트 시그니처 600g"
																class="ui_card__img"
																data-product-id="eec15f2e-a4b5-4ea8-9c8e-219d017519be"
																style="background-image: url('https://image.idus.com/image/files/57d1c4bcbaa1441f858f52a41031f4b1_512.png')"
																data-was-processed="true"></a>
														</div>

														<div class="ui_card__info">
															<a href="/w/artist/8b2faef3-aae7-4019-bdc7-fa420e4a881b"
																class="ui_card__label" target="_blank">그릭데이</a> <a
																href="/w/product/eec15f2e-a4b5-4ea8-9c8e-219d017519be"
																class="ui_card__title"
																data-product-id="eec15f2e-a4b5-4ea8-9c8e-219d017519be"
																target="_blank">[그릭데이]그릭요거트 시그니처 600g</a>
														</div>

														<div class="ui_card__rating">
															<div class="ui_card__vcenter">
																<div class="ui_rating" data-ui="rating" data-value="5">
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																</div>
															</div>

															<span class="ui_card__comment">빠른배송도 좋고 그릭요거트도
																신선하고 맛나요</span>
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
															data-target-id="ee8b572a-9ba8-4288-81bb-a939ad7f106e">
														</button>

														<div class="ui_card__imgcover">
															<a href="/w/product/ee8b572a-9ba8-4288-81bb-a939ad7f106e"
																target="_blank" aria-label="[추석]시즌판매 달콤시원 🫒샤인머스캣 망개떡🫒"
																class="ui_card__img"
																data-product-id="ee8b572a-9ba8-4288-81bb-a939ad7f106e"
																style="background-image: url('https://image.idus.com/image/files/c5431ecfad0f466a9fc55573d5ded9f5_512.jpg')"
																data-was-processed="true"></a>
														</div>

														<div class="ui_card__info">
															<a href="/w/artist/0a25b0a9-08d9-42d0-be77-b24733437036"
																class="ui_card__label" target="_blank">2대가함께하는 망개떡
																창원생과방</a> <a
																href="/w/product/ee8b572a-9ba8-4288-81bb-a939ad7f106e"
																class="ui_card__title"
																data-product-id="ee8b572a-9ba8-4288-81bb-a939ad7f106e"
																target="_blank">[추석]시즌판매 달콤시원 🫒샤인머스캣 망개떡🫒</a>
														</div>

														<div class="ui_card__rating">
															<div class="ui_card__vcenter">
																<div class="ui_rating" data-ui="rating" data-value="5">
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																</div>
															</div>

															<span class="ui_card__comment">너무 맛있었어요 엥
																샤인머스켓??이랬는데 전 개인적으로 딸기보다는 이쪽에 더 손을 들어주고 싶네요! 엄마도 달지도 않고
																너무 맛있다고 하시더라구요~</span>
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
															data-target-id="f3cf2036-1394-42f5-8dc1-94e43db5222d">
														</button>

														<div class="ui_card__imgcover">
															<a href="/w/product/f3cf2036-1394-42f5-8dc1-94e43db5222d"
																target="_blank" aria-label="🐤🐤🐤미니오리마들렌12개한세트🐥🐥🐣🐣"
																class="ui_card__img"
																data-product-id="f3cf2036-1394-42f5-8dc1-94e43db5222d"
																style="background-image: url('https://image.idus.com/image/files/d8e8f99077b74b9e8b4d15fb1424968b_512.jpg')"
																data-was-processed="true"></a>
														</div>

														<div class="ui_card__info">
															<a href="/w/artist/7cb1359b-5456-456a-bba6-c860b5c1f1ff"
																class="ui_card__label" target="_blank">뽀리수제쿠키 앤 수제청</a>
															<a href="/w/product/f3cf2036-1394-42f5-8dc1-94e43db5222d"
																class="ui_card__title"
																data-product-id="f3cf2036-1394-42f5-8dc1-94e43db5222d"
																target="_blank">🐤🐤🐤미니오리마들렌12개한세트🐥🐥🐣🐣</a>
														</div>

														<div class="ui_card__rating">
															<div class="ui_card__vcenter">
																<div class="ui_rating" data-ui="rating" data-value="5">
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																</div>
															</div>

															<span class="ui_card__comment">넘 귀여워요ㅋㅋ눈이 초코칩이네요.♡
																구매수량 변경하려고 취소요청도 했는데 빨리 해주셔서 감사했어요.</span>
														</div>
													</div>
												</div>
											</li>
										</ul>
						</div>
					</div>
				</div>
				<a href="/w/main/popular-category" class="ui_btn--large">인기작품
					더보기</a>
			</section>

			<!-- 메인페이지의 바텀시트 컨트롤 파트 -->
			<div data-vue="MainBottomSheet"></div>
		</div>

		<script type="text/javascript">
    vuepack.create([
        {
            selector: '[data-vue="MainBottomSheet"]',
            component: 'MainBottomSheet',
            props: {
                bottomSheetList: []            }
        },
        {
            selector: '[data-vue="MainRelatedProductSection"]',
            component: 'MainRelatedProductSection',
            props: {
                productList: [],
                recentProductUuid: ''
            }
        }
    ]);
</script>
		<script type="text/javascript">
    vuepack.externals.VendorLogger.sendLog([
        {
            vendorName: 'criteo',
            eventName: 'event',
            params: [
                { event: "setAccount", account: 50752 },
                { event: "setEmail", email: "guest@idus.me" },
                { event: "setSiteType", type: "d" },
                { event: "viewHome" }   
            ],
        },
    ]);

    (function () {
        var Logger = vuepack.externals.IdusLog.Logger;
        var PageName = vuepack.externals.IdusLog.PageName;
        var Section = vuepack.externals.IdusLog.Section;
        var LogLabel = vuepack.externals.IdusLog.LogLabel;
        var LogObject = vuepack.externals.IdusLog.LogObject;
        var ObjectType = vuepack.externals.IdusLog.ObjectType;
        Logger.sendPageView(PageName.Home)

        let timer;
        function sendShowroomBannerImpressionLog (id) {
            if (timer) {
                clearTimeout(timer);
            }
            timer = setTimeout(function() {
                Logger.sendImpression({
                   section: Section.MainBanner,
                   objectType: ObjectType.ShowroomId,
                   object: Number(id)
                });
            }, 1000);
        }

        // 스크롤에 따른 배너 노출정도(%) 파악
        var io = vuepack.externals.util.intersectionObserverApi('MainBanner', sendShowroomBannerImpressionLog, 0.5);
        var banner = document.getElementById("main_visual");
        io.observe(banner);

        // 슬라이드 롤링 이벤트 리스너
        document.addEventListener("rolling", function(e) {
            sendShowroomBannerImpressionLog(e.detail.id);
        });

        var showroomBannerElements = document.getElementsByClassName("showroom-banner");

        function sendShowroomBannerClickEventLog (id) {
            Logger.sendClick({
                section: Section.MainBanner,
                objectType: ObjectType.ShowroomId,
                object: Number(id)
            });
        }

        if (showroomBannerElements.length > 0) {
            showroomBannerElements.forEach(function(el) {
                var bannerId = el.getAttribute('data-id');
                el.addEventListener('click', function() {
                    sendShowroomBannerClickEventLog(bannerId);
                })
            })
        }

        /* Log v2 Click */
        $(function () {
            var productListUnitSelectors = [
                '#today_recommend', // 오늘의 작품
                '#live_order', // 실시간 구매
                '#review', // 실시간 후기
                '#artist_recommend', // 작가님 추천작품
                '#live_recommend', // 실시간 추천작품
                '#ranking', // 인기작품
                '#new_product', // 최신작품
                '#story', // 스토리
                '#popular_artist', // 인기작가
                '#category' // 전체 카테고리
            ];
            $(productListUnitSelectors.join(',')).on('click', 'a', function (event) {
                var $target = $(event.currentTarget);
                var section = '';
                if ($target.parents('#today_recommend').length > 0) {
                    section = Section.TodayDiscovery;
                } else if ($target.parents('#live_order').length > 0) {
                    section = Section.LiveSold;
                } else if ($target.parents('#artist_recommend').length > 0) {
                    section = Section.ArtistPickAD;
                } else if ($target.parents('#live_recommend').length > 0) {
                    section = Section.LivePickAD;
                } else if ($target.parents('#ranking').length > 0) {
                    section = Section.CategoryPopular;
                } else if ($target.parents('#new_product').length > 0) {
                    section = Section.NewProducts;
                } else if ($target.parents('#review').length > 0) {
                    section = Section.LiveReviews;
                } else if ($target.parents('#story').length > 0) {
                    section = Section.StoryAll;
                } else if ($target.parents('#popular_artist').length > 0) {
                    section = Section.PopularArtists;
                } else if ($target.parents('#category').length > 0) {
                    section = Section.ProductCategory;
                }

                if (section) {
                    if ($target.hasClass('ui_title__txt') || $target.hasClass('ui_title__txtright')) {
                        if ($target.data('categoryUuid')) {
                            Logger.sendClick({
                                logLabel: LogLabel.SubHeader,
                                section: section,
                                object: LogObject.SeeAll,
                                property: {
                                    product_category_uuid: $target.data('categoryUuid')
                                }
                            }, true);
                        } else {
                            Logger.sendClick({
                                logLabel: LogLabel.SubHeader,
                                section: section,
                                object: LogObject.SeeAll
                            }, true);
                        }
                    } else if ($target.hasClass('ui_btn--large')) {
                        Logger.sendClick({
                            section: section,
                            object: LogObject.SeeAll
                        }, true);
                    } else if ($target.data('productId')) {
                        var $rankingProductListUnitWrapper = $target.parents('[data-category-uuid]')
                        if ($rankingProductListUnitWrapper.length > 0 && $rankingProductListUnitWrapper.data('categoryUuid')) {
                            Logger.sendClick({
                                section: section,
                                objectType: ObjectType.ProductUuid,
                                object: $target.data('productId'),
                                property: {
                                    product_category_uuid: $rankingProductListUnitWrapper.data('categoryUuid')
                                }
                            })
                        } else {
                            Logger.sendClick({
                                section: section,
                                objectType: ObjectType.ProductUuid,
                                object: $target.data('productId')
                            })
                        }
                    } else if ($target.data('storyUuid')) {
                        Logger.sendClick({
                            section: section,
                            objectType: ObjectType.StoryUuid,
                            object: $target.data('storyUuid'),
                        })
                    } else if ($target.data('artistUuid')) {
                        Logger.sendClick({
                            section: section,
                            objectType: ObjectType.ArtistUuid,
                            object: $target.data('artistUuid'),
                        }, true);
                    } else if ($target.data('starredType') === 'artist') {
                        var action = $target.attr('data-state') === 'active' ? 'off' : 'on';
                        var targetId = $target.data('targetId');
                        Logger.sendClick({
                            section: section,
                            object: LogObject.FollowArtist,
                            property: {
                                artist_uuid: targetId,
                                action: action
                            }
                        });
                    } else if ($target.data('categoryUuid')) {
                        Logger.sendClick({
                            section: section,
                            objectType: ObjectType.CategoryUuid,
                            property: {
                                product_category_uuid: $target.data('categoryUuid')
                            }
                        }, true);
                    }
                }
            });
        });
    })();
</script>
		<div data-vue="ToastPopup"></div>
		<div data-vue="BottomSheet"></div>
		<div data-vue="WideBottomSheet"></div>
		<div data-vue="FooterModal"></div>
		<div data-vue="InactiveToast"></div>
		<a href="#header" class="to-top" data-ui="scroll-to-top" data-page="">
			<img src="resources/images/go-to-top-image.png">
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
	</div>
	<!-- div WRAP -->
	<script type="text/javascript"
		src="/resources/dist/js/idus.web.min.js?__v=1630657354"></script>
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
	 <jsp:include page="footer.jsp" />
</body>
</html>
