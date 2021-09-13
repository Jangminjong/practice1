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
<title>아이디어스 | 장바구니</title>
<link rel="stylesheet" href="resources/css/idus.web.min.css">
<link rel="stylesheet" href="resources/css/vendor.client.min.css">
<link rel="stylesheet" href="resources/css/cart.css">
<meta name="theme-color" content="#ffffff" />
<link rel="apple-touch-icon" sizes="384x384"
	href="resources/images/icon_300.png">

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
<meta property="og:url" content="http://www.idus.com/w/cart" />
<meta property="og:image"
	content="http://www.idus.com/resources/dist/images/ogimg-idus.png?ver=2.0" />
<link rel="canonical" href="http://www.idus.com/w/cart" />
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
		vuepack
				.createUser(
						'[data-vue="globalUser"]',
						{
							id : 8001937,
							thumb : 'https://image.idus.com/image/files/d247655ca3e545e89a48a43aa9318b3f.jpg',
							age : 25,
							gender : 'female',
							grade : 1,
							uuid : 'e47f44d5-3f79-42dd-9c1b-1772866c0371',
							isVip : false
						});
		vuepack
				.createToken(
						'[data-vue="token"]',
						{
							token : {
								"token_type" : "Bearer",
								"access_token" : "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6ODAwMTkzNywicGVybWlzc2lvbiI6IlVTRVIiLCJ0eXBlIjoiY2xpZW50IiwidG9rZW5fdHlwZSI6ImFjY2VzcyIsImV4cCI6MTYzOTM3MDA4Niwic2FsdCI6ImM0ZjFmMTAwLTc0YzYtNDgwMS1hNjIzLTk5NDBjNmZhYTA1MyIsImNyZWF0ZWQiOiIyMDIxLTA5LTEzVDEzOjM0OjQ2KzA5OjAwIn0.WmbRiY9muwjcPtxgUoifqT8lbeBshSstqRIZByrCArE",
								"refresh_token" : "$2y$10$0gFd8KcN0sNxzoiwU1Dch.tGbe\/DXGjtnWNh5xwoawkNbuSoKU7ja",
								"expired_access_token" : "2021-12-13 13:34:46+09:00",
								"expired_refresh_token" : "2022-03-13 13:34:46+09:00"
							},
							userId : 8001937
						});

		/* Idus Log V2 */
		vuepack.externals.IdusLog.Logger
				.setIdentityId('ap-northeast-2:f4e7cf2c-2c34-49ab-95cd-8b054b9e32ea');
		vuepack.externals.IdusLog.Logger
				.initialize({
					isApp : false,
					region : 'ap-northeast-2',
					identityPoolId : 'ap-northeast-2:f4c028af-cb84-43cc-a8e5-b047d272b323',
					accountId : '773161815152',
					userData : {
						userId : '8001937',
						userAge : '25',
						userGrade : '1',
						userGender : 'female'
					},
					appData : {
						env : 'prod',
						appVersion : '1631255393'
					}
				});
	</script>

	<div class="wrap">
		<div class="head_banner_group"></div>

		<div id="skip-to-content">
			<a href="#gnb">메뉴목록으로 바로가기</a> <a href="#content">컨텐츠로 바로가기</a>
		</div>

		<jsp:include page="header_goods.jsp" />
		<div class="dimmed-background"></div>
		<div id="content" class="content" data-page="shoppingBag">
			<div data-vue="ModalContainer"></div>
			<div data-v-6d930ad9="" class="CartPage">
				<div data-v-1e62c1aa="" data-v-6d930ad9=""
					class="PageHeader CartPage__header">
					<h2 data-v-1e62c1aa="" class="PageHeader__title">장바구니</h2>
					<ol data-v-1e62c1aa="" class="PageHeader__steps">
						<li data-v-1e62c1aa=""
							class="PageHeader__stepsItem PageHeader__stepsItem--active"><em
							data-v-1e62c1aa="">1.</em> <span data-v-1e62c1aa="">장바구니</span> <i
							data-v-1e62c1aa="" class="fa fa-angle-right"></i></li>
						<li data-v-1e62c1aa="" class="PageHeader__stepsItem"><em
							data-v-1e62c1aa="">2.</em> <span data-v-1e62c1aa="">주문결제</span> <i
							data-v-1e62c1aa="" class="fa fa-angle-right"></i></li>
						<li data-v-1e62c1aa="" class="PageHeader__stepsItem"><em
							data-v-1e62c1aa="">3.</em> <span data-v-1e62c1aa="">주문완료</span> <!----></li>
					</ol>
				</div>
				<div data-v-56dfc770="" data-v-6d930ad9="" sticky-container=""
					class="CartList">
					<div class="vue-sticky-placeholder" style="padding-top: 0px;"></div>
					<div data-v-56dfc770="" sticky-z-index="201"
						on-stick="handleChangeStickTop"
						class="CartList__sticky vue-sticky-el"
						style="position: static; top: auto; bottom: auto; left: auto; width: auto; z-index: 201;">
						<!---->
					</div>
					<div data-v-415ede24="" data-v-6d930ad9="" class="CartArtistList"
						data-v-56dfc770="">
						<div data-v-a6596a66="" data-v-415ede24="" class="CartArtistItem">
							<div data-v-a6596a66="" class="CartArtistItem__header">
								<label data-v-a6596a66=""
									for="402a05af-6c1c-4ce2-9858-35839922e287"><div
										data-v-5e27c696="" data-v-a6596a66="" class="checkbox">
										<div data-v-5e27c696="" class="input-checkbox">
											<input data-v-5e27c696="" id="" type="checkbox"
												autocomplete="off" class="bp"
												value="402a05af-6c1c-4ce2-9858-35839922e287">
										</div>
										<!---->
									</div> <span data-v-a6596a66="" class="CartArtistItem__title">
										당근과자점 작가님 </span></label>
							</div>
							<section data-v-a6596a66="" class="CartArtistItem__itemList">
								<!---->
								<ul data-v-a6596a66="">
									<div data-v-988391e4="" data-v-a6596a66=""
										class="CartProductList">
										<div data-v-2389adcc="" data-v-988391e4=""
											class="CartProductListItem">
											<div data-v-2389adcc=""
												class="CartProductListItem__productInfo">
												<div data-v-2389adcc=""
													class="CartProductListItem__checkboxGroup">
													<div data-v-2389adcc=""
														class="CartProductListItem__checkboxWrap">
														<div data-v-5e27c696="" data-v-2389adcc=""
															class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp" value="[추석할인] 파운드2종+쿠키2종">
															</div>
															<!---->
														</div>
													</div>
													<img data-v-2389adcc="" alt=""
														class="CartProductListItem__productImage"
														src="https://image.idus.com/image/files/7f56c501be9349c5a52c88d340c45c7a_320.jpg">
												</div>
												<div data-v-2389adcc=""
													class="CartProductListItem__productInfoTextGroup">
													<a data-v-2389adcc=""
														href="/w/product/a640a8e0-7cbd-4160-9a02-9eacf4537750"
														class="CartProductListItem__productName">[추석할인]
														파운드2종+쿠키2종</a> <em data-v-2389adcc=""
														class="CartProductListItem__productItemCount"> 주문시 제작
													</em>
												</div>
												<!---->
											</div>
											<div data-v-2389adcc=""
												class="CartProductListItem__optionInfo">
												<div data-v-84a4f0f8="" data-v-2389adcc=""
													class="CartOptionList">
													<div data-v-7705597e="" data-v-84a4f0f8=""
														class="CartOptionListItem">
														<div data-v-7705597e=""
															class="CartOptionListItem__splitLeft">
															<em data-v-7705597e=""
																class="CartOptionListItem__optionText"> • 파운드1 :
																얼그레이파운드 • 파운드2 : 얼그레이파운드 • 쿠키 : 초코+초코 • 선물박스 : 선택안함 </em>
															<div data-v-7705597e=""
																class="CartOptionListItem__counter">
																<label data-v-9b324a5a="" data-v-7705597e=""
																	for="numberCount" class="NumberCounter"><button
																		data-v-9b324a5a="" type="button" disabled="disabled"
																		class="NumberCounter__button">-</button> <input
																	data-v-9b324a5a="" name="numberCount" type="text"
																	class="NumberCounter__input">
																	<button data-v-9b324a5a="" type="button"
																		class="NumberCounter__button">+</button></label>
															</div>
														</div>
														<div data-v-7705597e=""
															class="CartOptionListItem__splitRight">
															<em data-v-7705597e=""
																class="CartOptionListItem__totalPrice"> 20,000원 </em>
															<div data-v-7705597e=""
																class="CartOptionListItem__btnGroup">
																<div data-v-29633eb4="" data-v-7705597e=""
																	class="CartOptionEditingButtonGroup">
																	<button data-v-29633eb4="" type="button"
																		class="CartOptionEditingButtonGroup__button CartOptionEditingButtonGroup__button--left">
																		<i data-v-29633eb4=""
																			class="CartOptionEditingButtonGroup__buttonIcon idus-icon-cogwheel"></i>
																	</button>
																	<button data-v-29633eb4="" type="button"
																		class="CartOptionEditingButtonGroup__button CartOptionEditingButtonGroup__button--right">
																		<i data-v-29633eb4=""
																			class="CartOptionEditingButtonGroup__buttonIcon idus-icon-close"></i>
																	</button>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div data-v-5eae4d4e="" data-v-2389adcc="">
													<div data-v-5eae4d4e=""
														class="CartOrderMessageEditor__productOrderMessage">
														<div data-v-1934649e="" data-v-5eae4d4e=""
															class="CommonTextEditor">
															<textarea data-v-1934649e="" maxlength="500"
																placeholder="주문 요청사항을 입력해주세요"
																class="CommonTextEditor__textarea"></textarea>
															<em data-v-1934649e=""
																class="CommonTextEditor__maxLength">500</em>
														</div>
													</div>
													<!---->
												</div>
											</div>
										</div>
									</div>
								</ul>
							</section>
							<section data-v-a6596a66="" class="CartArtistItem__section">
								<div data-v-a6596a66="" class="CartArtistItem__label">작품
									가격</div>
								<em data-v-a6596a66="" class="CartArtistItem__price">20,000원</em>
							</section>
							<section data-v-a6596a66="" class="CartArtistItem__section">
								<div data-v-a6596a66="" class="CartArtistItem__label">배송비</div>
								<div data-v-a6596a66="" class="CartArtistItem__price">
									<div data-v-76555e5b="" data-v-a6596a66=""
										class="ShippingPrice">
										<em data-v-76555e5b="" class="ShippingPrice__price">4,000원</em>
										<div data-v-76555e5b="" class="ShippingPrice__desc">
											70,000원 이상 무료배송</div>
									</div>
								</div>
							</section>
							<!---->
						</div>
					</div>
					<div class="vue-sticky-placeholder" style="padding-top: 259.333px;"></div>
					<div data-v-56dfc770="" sticky-side="bottom"
						on-stick="handleChangeStickBottom"
						class="CartList__sticky vue-sticky-el bottom-sticky"
						style="position: fixed; top: auto; bottom: 0px; left: 105.333px; width: 800px; z-index: 10;">
						<div data-v-20c2da48="" data-v-6d930ad9=""
							class="CartCheckboxControl" data-v-56dfc770="">
							<div data-v-5e27c696="" data-v-20c2da48="" class="checkbox">
								<div data-v-5e27c696="" class="input-checkbox">
									<input data-v-5e27c696="" id="cart-product-all-check"
										type="checkbox" autocomplete="off" class="bp" value="">
								</div>
								<label data-v-5e27c696="" for="cart-product-all-check"><span
									data-v-20c2da48="" data-v-5e27c696=""
									class="CartCheckboxControl__label"> 전체 선택 (<span
										data-v-20c2da48="" data-v-5e27c696=""
										class="CartCheckboxControl__label--bold">1</span>/1)
								</span></label>
							</div>
							<button data-v-32d88566="" data-v-20c2da48=""
								class="CommonButton CommonButton--middle CommonButton--white ">
								선택 삭제</button>
						</div>
						<div data-v-261b598e="" data-v-6d930ad9="" class="CartCheckout"
							data-v-56dfc770="">
							<div data-v-46d2f086="" data-v-6d930ad9=""
								class="CartVipBanner CartVipBanner--sticked" data-v-261b598e="">
								<div data-v-895af704="" data-v-46d2f086=""
									class="CartVipBanner__tooltip tooltip 
    "
									style="right: 311px;">
									<span data-v-46d2f086="" data-v-895af704=""
										class="CartVipBanner__message"><p data-v-46d2f086=""
											data-v-895af704="">작가님당 10,000원 이상 구매 시</p> <strong
										data-v-46d2f086="" data-v-895af704=""
										class="CartVipBanner__message"> VIP 클럽 무료배송 <i
											data-v-46d2f086="" data-v-895af704=""
											class="idus-icon-arrow-right"></i></strong></span>
									<!---->
									<div data-v-895af704="" class="triangle bottom end">
										<div data-v-895af704="" class="before"></div>
										<div data-v-895af704="" class="after"></div>
									</div>
								</div>
							</div>
							<div data-v-e14558f4="" data-v-261b598e=""
								class="CartCheckoutDesktop">
								<div data-v-e14558f4="" class="CartCheckoutDesktop__item">
									<div data-v-e14558f4="" class="CartCheckoutDesktop__label">작품금액</div>
									<div data-v-e14558f4="" class="CartCheckoutDesktop__value">
										<span data-v-e14558f4="">20,000</span> <span
											data-v-e14558f4="" class="CartCheckoutDesktop__priceUnit">원</span>
									</div>
								</div>
								<div data-v-e14558f4="" class="CartCheckoutDesktop__item--fixed">+</div>
								<div data-v-e14558f4="" class="CartCheckoutDesktop__item">
									<div data-v-e14558f4="" class="CartCheckoutDesktop__label">배송비</div>
									<div data-v-e14558f4="" class="CartCheckoutDesktop__value">
										<span data-v-e14558f4="">4,000</span> <span data-v-e14558f4=""
											class="CartCheckoutDesktop__priceUnit">원</span>
										<!---->
									</div>
								</div>
								<!---->
								<div data-v-e14558f4="" class="CartCheckoutDesktop__item--fixed">=</div>
								<div data-v-e14558f4="" class="CartCheckoutDesktop__item">
									<div data-v-e14558f4="" class="CartCheckoutDesktop__label">결제
										예정금액</div>
									<div data-v-e14558f4=""
										class="CartCheckoutDesktop__value--highlight">
										<span data-v-e14558f4="">24,000</span> <span
											data-v-e14558f4="" class="CartCheckoutDesktop__priceUnit">원</span>
									</div>
								</div>
							</div>
						</div>
						<div data-v-6d930ad9="" data-v-56dfc770=""
							class="CartPage__bottom">
							<button data-v-32d88566="" data-v-6d930ad9=""
								class="CommonButton CartPage__paymentButton CommonButton--large CommonButton--red "
								data-v-56dfc770="">주문하기</button>
						</div>
					</div>
				</div>
				<!---->
				<!---->
			</div>
		</div>

		<script type="application/javascript">
			
    // 장바구니 pageview logging
    var Logger = vuepack.externals.IdusLog.Logger;
    var PageName = vuepack.externals.IdusLog.PageName;
    Logger.sendPageView(PageName.Cart);

    vuepack.createModal('[data-vue="ModalContainer"]', { title: "아이디어스 VIP 클럽", width: 370, component: 'VipPolicyContents', classname: "vip" });
    var vipModalData = {
        policies: {"vip_month":{"id":3,"membership_charge":18000,"discount_charge":3300,"title":"\uc6d4\ud68c\ube44","title_sub":"\ubd80\ub2f4 \uc5c6\ub294 \uc120\ud0dd!","price_sub":"\ubc30\uc1a1\ube44 \ud55c \ubc88 \uac00\uaca9","badge":{"type":"HOT","label":"\uc778\uae30"},"notice_label":"\u2022 \uc6d4\ud68c\ube44\ub294 \uac00\uc785\uc77c \uae30\uc900\uc73c\ub85c 30\uc77c\ub9c8\ub2e4 \uc790\ub3d9 \uacb0\uc81c\ub418\uba70, \uc5b8\uc81c\ub4e0\uc9c0 \ud574\uc9c0 \uac00\ub2a5\ud569\ub2c8\ub2e4."},"vip_year":{"id":1,"membership_charge":180000,"discount_charge":30000,"title":"\uc5f0\ud68c\ube44","title_sub":"\uac00\uc131\ube44 \ucd5c\uac15 \ud61c\ud0dd!","price_sub":"\ud55c \ub2ec\uc5d0 2,500\uc6d0","notice_label":"\u2022 \uc5f0\ud68c\ube44\ub294 \uac00\uc785\uc77c \uae30\uc900\uc73c\ub85c \ub9e4\ub144 \uc790\ub3d9 \uacb0\uc81c\ub418\uba70, \uc5b8\uc81c\ub4e0\uc9c0 \ud574\uc9c0 \uac00\ub2a5\ud569\ub2c8\ub2e4."},"guide_label":"<br\/>\n\u2022 VIP \ud074\ub7fd \uc11c\ube44\uc2a4\uc758 \ud68c\ube44\ub294 \ub9e4\ub144 \ub610\ub294 30\uc77c \ub9c8\ub2e4 \uac00\uc785\uc77c \uae30\uc900\uc73c\ub85c \uc815\uae30\uacb0\uc81c\ub418\uba70, \uc5b8\uc81c\ub4e0\uc9c0 \ud574\uc9c0 \uac00\ub2a5\ud569\ub2c8\ub2e4.<br\/>\n\u2022 \uae30\ubcf8 \ubc30\uc1a1\ub8cc\ub9cc \ud560\uc778 \ud61c\ud0dd\uc774 \uc801\uc6a9\ub429\ub2c8\ub2e4. (\uc81c\uc8fc\/\ub3c4\uc11c\uc0b0\uac04 \ucd94\uac00\ube44\uc6a9, \ucc29\ubd88 \uc694\uae08, \uc791\ud488 \uc635\uc158\uc73c\ub85c \uc124\uc815\ub41c \ubc30\uc1a1\ube44, \uac1c\uc778\ub9de\ucda4 \uacb0\uc81c \ube44\uc6a9 \uc81c\uc678)<br\/>\n\u2022 \ucfe0\ud3f0 \ub4f1\uc744 \uc801\uc6a9\ud55c \ucd5c\uc885 \uacb0\uc81c \uae08\uc561\uc744 \uae30\uc900\uc73c\ub85c \uad6c\ub9e4\ud558\ub294 \uc791\ud488\uae08\uc561\uc774 \uc791\uac00\ub2d8\ub2f9 10,000\uc6d0 \uc774\uc0c1\uc77c \uacbd\uc6b0, \ubc30\uc1a1\ube44 \ud560\uc778 \ud61c\ud0dd\uc774 \uc801\uc6a9\ub429\ub2c8\ub2e4.<br\/>\n\u2022 \uad50\ud658 \ubc0f \ud658\ubd88 \uc2dc\uc5d0\ub294 \uc9c0\uc6d0\ub41c \ubc30\uc1a1\ube44 \ud61c\ud0dd\uc774 \uc0ac\ub77c\uc9c0\uba70, \uace0\uac1d\ub2d8\uc774 \uad6c\ub9e4\uc2dc\uc758 \ubc30\uc1a1\ube44 \ubc0f \ubc18\uc1a1 \ubc30\uc1a1\ube44\ub97c \ubd80\ub2f4\ud569\ub2c8\ub2e4.<br\/>\n\u2022 VIP \ud074\ub7fd\uc758 \ud61c\ud0dd\uc740 \ub2f9\uc0ac \uc0ac\uc815\uc5d0 \uc758\ud574 \ubcc0\uacbd\ub420 \uc218 \uc788\uc73c\uba70, \uc774 \uacbd\uc6b0 \ubcc4\ub3c4 \uace0\uc9c0\ud569\ub2c8\ub2e4.<br\/>\n\u2022 VIP \ud074\ub7fd\uc744 \ud574\uc9c0\ud560 \uacbd\uc6b0, \uace0\uac1d\ub2d8\uc774 \ud560\uc778 \ubc1b\uc740 \ubc30\uc1a1\ube44\ub97c \uc81c\uc678\ud55c \uae08\uc561\uc774 \ud658\ubd88\ub418\uba70, \uac00\uc785 \uae30\uac04\uc5d0 \ub530\ub978 \ucde8\uc18c\uc218\uc218\ub8cc\uac00 \ubc1c\uc0dd\ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4.<br\/>\n\u2022 VIP \ud074\ub7fd \uc2e0\uccad\uc2dc <a href=\"https:\/\/cnn.idus.com\/terms\/client-membership\">VIP \ud074\ub7fd \uc774\uc6a9 \uc57d\uad00<\/a>\uc5d0 \ub3d9\uc758\ud55c \uac83\uc73c\ub85c \uac04\uc8fc\ud569\ub2c8\ub2e4.<br\/>"},
        link: "/mobile/link/app?idus_type=membership",
        setting: {"vip_month":{"id":3,"membership_charge":18000,"discount_charge":3300,"title":"\uc6d4\ud68c\ube44","title_sub":"\ubd80\ub2f4 \uc5c6\ub294 \uc120\ud0dd!","price_sub":"\ubc30\uc1a1\ube44 \ud55c \ubc88 \uac00\uaca9","badge":{"type":"HOT","label":"\uc778\uae30"},"notice_label":"\u2022 \uc6d4\ud68c\ube44\ub294 \uac00\uc785\uc77c \uae30\uc900\uc73c\ub85c 30\uc77c\ub9c8\ub2e4 \uc790\ub3d9 \uacb0\uc81c\ub418\uba70, \uc5b8\uc81c\ub4e0\uc9c0 \ud574\uc9c0 \uac00\ub2a5\ud569\ub2c8\ub2e4."},"vip_year":{"id":1,"membership_charge":180000,"discount_charge":30000,"title":"\uc5f0\ud68c\ube44","title_sub":"\uac00\uc131\ube44 \ucd5c\uac15 \ud61c\ud0dd!","price_sub":"\ud55c \ub2ec\uc5d0 2,500\uc6d0","notice_label":"\u2022 \uc5f0\ud68c\ube44\ub294 \uac00\uc785\uc77c \uae30\uc900\uc73c\ub85c \ub9e4\ub144 \uc790\ub3d9 \uacb0\uc81c\ub418\uba70, \uc5b8\uc81c\ub4e0\uc9c0 \ud574\uc9c0 \uac00\ub2a5\ud569\ub2c8\ub2e4."},"guide_label":"<br\/>\n\u2022 VIP \ud074\ub7fd \uc11c\ube44\uc2a4\uc758 \ud68c\ube44\ub294 \ub9e4\ub144 \ub610\ub294 30\uc77c \ub9c8\ub2e4 \uac00\uc785\uc77c \uae30\uc900\uc73c\ub85c \uc815\uae30\uacb0\uc81c\ub418\uba70, \uc5b8\uc81c\ub4e0\uc9c0 \ud574\uc9c0 \uac00\ub2a5\ud569\ub2c8\ub2e4.<br\/>\n\u2022 \uae30\ubcf8 \ubc30\uc1a1\ub8cc\ub9cc \ud560\uc778 \ud61c\ud0dd\uc774 \uc801\uc6a9\ub429\ub2c8\ub2e4. (\uc81c\uc8fc\/\ub3c4\uc11c\uc0b0\uac04 \ucd94\uac00\ube44\uc6a9, \ucc29\ubd88 \uc694\uae08, \uc791\ud488 \uc635\uc158\uc73c\ub85c \uc124\uc815\ub41c \ubc30\uc1a1\ube44, \uac1c\uc778\ub9de\ucda4 \uacb0\uc81c \ube44\uc6a9 \uc81c\uc678)<br\/>\n\u2022 \ucfe0\ud3f0 \ub4f1\uc744 \uc801\uc6a9\ud55c \ucd5c\uc885 \uacb0\uc81c \uae08\uc561\uc744 \uae30\uc900\uc73c\ub85c \uad6c\ub9e4\ud558\ub294 \uc791\ud488\uae08\uc561\uc774 \uc791\uac00\ub2d8\ub2f9 10,000\uc6d0 \uc774\uc0c1\uc77c \uacbd\uc6b0, \ubc30\uc1a1\ube44 \ud560\uc778 \ud61c\ud0dd\uc774 \uc801\uc6a9\ub429\ub2c8\ub2e4.<br\/>\n\u2022 \uad50\ud658 \ubc0f \ud658\ubd88 \uc2dc\uc5d0\ub294 \uc9c0\uc6d0\ub41c \ubc30\uc1a1\ube44 \ud61c\ud0dd\uc774 \uc0ac\ub77c\uc9c0\uba70, \uace0\uac1d\ub2d8\uc774 \uad6c\ub9e4\uc2dc\uc758 \ubc30\uc1a1\ube44 \ubc0f \ubc18\uc1a1 \ubc30\uc1a1\ube44\ub97c \ubd80\ub2f4\ud569\ub2c8\ub2e4.<br\/>\n\u2022 VIP \ud074\ub7fd\uc758 \ud61c\ud0dd\uc740 \ub2f9\uc0ac \uc0ac\uc815\uc5d0 \uc758\ud574 \ubcc0\uacbd\ub420 \uc218 \uc788\uc73c\uba70, \uc774 \uacbd\uc6b0 \ubcc4\ub3c4 \uace0\uc9c0\ud569\ub2c8\ub2e4.<br\/>\n\u2022 VIP \ud074\ub7fd\uc744 \ud574\uc9c0\ud560 \uacbd\uc6b0, \uace0\uac1d\ub2d8\uc774 \ud560\uc778 \ubc1b\uc740 \ubc30\uc1a1\ube44\ub97c \uc81c\uc678\ud55c \uae08\uc561\uc774 \ud658\ubd88\ub418\uba70, \uac00\uc785 \uae30\uac04\uc5d0 \ub530\ub978 \ucde8\uc18c\uc218\uc218\ub8cc\uac00 \ubc1c\uc0dd\ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4.<br\/>\n\u2022 VIP \ud074\ub7fd \uc2e0\uccad\uc2dc <a href=\"https:\/\/cnn.idus.com\/terms\/client-membership\">VIP \ud074\ub7fd \uc774\uc6a9 \uc57d\uad00<\/a>\uc5d0 \ub3d9\uc758\ud55c \uac83\uc73c\ub85c \uac04\uc8fc\ud569\ub2c8\ub2e4.<br\/>","remain_promotion":1504901,"remain_promotion_message":"\uc548\uc5d0 \uac00\uc785\ud558\uba74 <b>3,300\uc6d0 \uce90\uc2dc\ubc31!<\/b>","remain_promotion_message2":"\uc544\uc774\ub514\uc5b4\uc2a4 \uc571\uc5d0\uc11c"}    }

    var components = [];
    components.push({
        selector: '[data-vue="CartPage"]',
        component: 'CartPage',
        props: {
            title: '장바구니',
            steps: [{text: '장바구니', active: true }, { text: '주문결제' }, { text: '주문완료'}],
            homeUri: "/",
            cartList: [{"artist":{"id":"2010759","uuid":"402a05af-6c1c-4ce2-9858-35839922e287","artist_name":"\ub2f9\uadfc\uacfc\uc790\uc810","is_vacation":0,"vacation_msg":"","delivery_fee":4000,"delivery_free":70000,"delivery_remote":3000,"delivery_style":0,"price_delivery_fee":4000,"is_can_vip_club":true,"price_artist_total":20000},"product":[{"shopping_bag_uuid":"8b43d4c0-6a9f-45cb-8d3c-1ce15aec2ab5","product_uuid":"a640a8e0-7cbd-4160-9a02-9eacf4537750","category_uuid":"5c6bc7d4-7760-4702-b63f-7f29eca479e3","product_name":"[\ucd94\uc11d\ud560\uc778] \ud30c\uc6b4\ub4dc2\uc885+\ucfe0\ud0a42\uc885","product_image":"https:\/\/image.idus.com\/image\/files\/7f56c501be9349c5a52c88d340c45c7a_320.jpg","product_item_count":-1,"is_sale":1,"is_auth":0,"option_items":[{"option_md5":"a6ba006a19e5a527c7339af59204bd1b","option_txt":"\u2022 \ud30c\uc6b4\ub4dc1 : \uc5bc\uadf8\ub808\uc774\ud30c\uc6b4\ub4dc\n\u2022 \ud30c\uc6b4\ub4dc2 : \uc5bc\uadf8\ub808\uc774\ud30c\uc6b4\ub4dc\n\u2022 \ucfe0\ud0a4 : \ucd08\ucf54+\ucd08\ucf54\n\u2022 \uc120\ubb3c\ubc15\uc2a4 : \uc120\ud0dd\uc548\ud568","option_item_count":1,"option_price":0,"total_price":20000,"is_changed_option":0}],"order_message":"","is_shopping_bag":1,"is_removed":false}],"coupon":[]}],
            installIosUrl: '',
            installAndUrl: '',
            preparePaymentData: {"paymentable":false,"data":[]},
            vipModal: {"status":{"is_activated":false},"policies":{"vip_month":{"id":3,"membership_charge":18000,"discount_charge":3300,"title":"\uc6d4\ud68c\ube44","title_sub":"\ubd80\ub2f4 \uc5c6\ub294 \uc120\ud0dd!","price_sub":"\ubc30\uc1a1\ube44 \ud55c \ubc88 \uac00\uaca9","badge":{"type":"HOT","label":"\uc778\uae30"},"notice_label":"\u2022 \uc6d4\ud68c\ube44\ub294 \uac00\uc785\uc77c \uae30\uc900\uc73c\ub85c 30\uc77c\ub9c8\ub2e4 \uc790\ub3d9 \uacb0\uc81c\ub418\uba70, \uc5b8\uc81c\ub4e0\uc9c0 \ud574\uc9c0 \uac00\ub2a5\ud569\ub2c8\ub2e4."},"vip_year":{"id":1,"membership_charge":180000,"discount_charge":30000,"title":"\uc5f0\ud68c\ube44","title_sub":"\uac00\uc131\ube44 \ucd5c\uac15 \ud61c\ud0dd!","price_sub":"\ud55c \ub2ec\uc5d0 2,500\uc6d0","notice_label":"\u2022 \uc5f0\ud68c\ube44\ub294 \uac00\uc785\uc77c \uae30\uc900\uc73c\ub85c \ub9e4\ub144 \uc790\ub3d9 \uacb0\uc81c\ub418\uba70, \uc5b8\uc81c\ub4e0\uc9c0 \ud574\uc9c0 \uac00\ub2a5\ud569\ub2c8\ub2e4."},"guide_label":"<br\/>\n\u2022 VIP \ud074\ub7fd \uc11c\ube44\uc2a4\uc758 \ud68c\ube44\ub294 \ub9e4\ub144 \ub610\ub294 30\uc77c \ub9c8\ub2e4 \uac00\uc785\uc77c \uae30\uc900\uc73c\ub85c \uc815\uae30\uacb0\uc81c\ub418\uba70, \uc5b8\uc81c\ub4e0\uc9c0 \ud574\uc9c0 \uac00\ub2a5\ud569\ub2c8\ub2e4.<br\/>\n\u2022 \uae30\ubcf8 \ubc30\uc1a1\ub8cc\ub9cc \ud560\uc778 \ud61c\ud0dd\uc774 \uc801\uc6a9\ub429\ub2c8\ub2e4. (\uc81c\uc8fc\/\ub3c4\uc11c\uc0b0\uac04 \ucd94\uac00\ube44\uc6a9, \ucc29\ubd88 \uc694\uae08, \uc791\ud488 \uc635\uc158\uc73c\ub85c \uc124\uc815\ub41c \ubc30\uc1a1\ube44, \uac1c\uc778\ub9de\ucda4 \uacb0\uc81c \ube44\uc6a9 \uc81c\uc678)<br\/>\n\u2022 \ucfe0\ud3f0 \ub4f1\uc744 \uc801\uc6a9\ud55c \ucd5c\uc885 \uacb0\uc81c \uae08\uc561\uc744 \uae30\uc900\uc73c\ub85c \uad6c\ub9e4\ud558\ub294 \uc791\ud488\uae08\uc561\uc774 \uc791\uac00\ub2d8\ub2f9 10,000\uc6d0 \uc774\uc0c1\uc77c \uacbd\uc6b0, \ubc30\uc1a1\ube44 \ud560\uc778 \ud61c\ud0dd\uc774 \uc801\uc6a9\ub429\ub2c8\ub2e4.<br\/>\n\u2022 \uad50\ud658 \ubc0f \ud658\ubd88 \uc2dc\uc5d0\ub294 \uc9c0\uc6d0\ub41c \ubc30\uc1a1\ube44 \ud61c\ud0dd\uc774 \uc0ac\ub77c\uc9c0\uba70, \uace0\uac1d\ub2d8\uc774 \uad6c\ub9e4\uc2dc\uc758 \ubc30\uc1a1\ube44 \ubc0f \ubc18\uc1a1 \ubc30\uc1a1\ube44\ub97c \ubd80\ub2f4\ud569\ub2c8\ub2e4.<br\/>\n\u2022 VIP \ud074\ub7fd\uc758 \ud61c\ud0dd\uc740 \ub2f9\uc0ac \uc0ac\uc815\uc5d0 \uc758\ud574 \ubcc0\uacbd\ub420 \uc218 \uc788\uc73c\uba70, \uc774 \uacbd\uc6b0 \ubcc4\ub3c4 \uace0\uc9c0\ud569\ub2c8\ub2e4.<br\/>\n\u2022 VIP \ud074\ub7fd\uc744 \ud574\uc9c0\ud560 \uacbd\uc6b0, \uace0\uac1d\ub2d8\uc774 \ud560\uc778 \ubc1b\uc740 \ubc30\uc1a1\ube44\ub97c \uc81c\uc678\ud55c \uae08\uc561\uc774 \ud658\ubd88\ub418\uba70, \uac00\uc785 \uae30\uac04\uc5d0 \ub530\ub978 \ucde8\uc18c\uc218\uc218\ub8cc\uac00 \ubc1c\uc0dd\ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4.<br\/>\n\u2022 VIP \ud074\ub7fd \uc2e0\uccad\uc2dc <a href=\"https:\/\/cnn.idus.com\/terms\/client-membership\">VIP \ud074\ub7fd \uc774\uc6a9 \uc57d\uad00<\/a>\uc5d0 \ub3d9\uc758\ud55c \uac83\uc73c\ub85c \uac04\uc8fc\ud569\ub2c8\ub2e4.<br\/>"},"setting":{"vip_month":{"id":3,"membership_charge":18000,"discount_charge":3300,"title":"\uc6d4\ud68c\ube44","title_sub":"\ubd80\ub2f4 \uc5c6\ub294 \uc120\ud0dd!","price_sub":"\ubc30\uc1a1\ube44 \ud55c \ubc88 \uac00\uaca9","badge":{"type":"HOT","label":"\uc778\uae30"},"notice_label":"\u2022 \uc6d4\ud68c\ube44\ub294 \uac00\uc785\uc77c \uae30\uc900\uc73c\ub85c 30\uc77c\ub9c8\ub2e4 \uc790\ub3d9 \uacb0\uc81c\ub418\uba70, \uc5b8\uc81c\ub4e0\uc9c0 \ud574\uc9c0 \uac00\ub2a5\ud569\ub2c8\ub2e4."},"vip_year":{"id":1,"membership_charge":180000,"discount_charge":30000,"title":"\uc5f0\ud68c\ube44","title_sub":"\uac00\uc131\ube44 \ucd5c\uac15 \ud61c\ud0dd!","price_sub":"\ud55c \ub2ec\uc5d0 2,500\uc6d0","notice_label":"\u2022 \uc5f0\ud68c\ube44\ub294 \uac00\uc785\uc77c \uae30\uc900\uc73c\ub85c \ub9e4\ub144 \uc790\ub3d9 \uacb0\uc81c\ub418\uba70, \uc5b8\uc81c\ub4e0\uc9c0 \ud574\uc9c0 \uac00\ub2a5\ud569\ub2c8\ub2e4."},"guide_label":"<br\/>\n\u2022 VIP \ud074\ub7fd \uc11c\ube44\uc2a4\uc758 \ud68c\ube44\ub294 \ub9e4\ub144 \ub610\ub294 30\uc77c \ub9c8\ub2e4 \uac00\uc785\uc77c \uae30\uc900\uc73c\ub85c \uc815\uae30\uacb0\uc81c\ub418\uba70, \uc5b8\uc81c\ub4e0\uc9c0 \ud574\uc9c0 \uac00\ub2a5\ud569\ub2c8\ub2e4.<br\/>\n\u2022 \uae30\ubcf8 \ubc30\uc1a1\ub8cc\ub9cc \ud560\uc778 \ud61c\ud0dd\uc774 \uc801\uc6a9\ub429\ub2c8\ub2e4. (\uc81c\uc8fc\/\ub3c4\uc11c\uc0b0\uac04 \ucd94\uac00\ube44\uc6a9, \ucc29\ubd88 \uc694\uae08, \uc791\ud488 \uc635\uc158\uc73c\ub85c \uc124\uc815\ub41c \ubc30\uc1a1\ube44, \uac1c\uc778\ub9de\ucda4 \uacb0\uc81c \ube44\uc6a9 \uc81c\uc678)<br\/>\n\u2022 \ucfe0\ud3f0 \ub4f1\uc744 \uc801\uc6a9\ud55c \ucd5c\uc885 \uacb0\uc81c \uae08\uc561\uc744 \uae30\uc900\uc73c\ub85c \uad6c\ub9e4\ud558\ub294 \uc791\ud488\uae08\uc561\uc774 \uc791\uac00\ub2d8\ub2f9 10,000\uc6d0 \uc774\uc0c1\uc77c \uacbd\uc6b0, \ubc30\uc1a1\ube44 \ud560\uc778 \ud61c\ud0dd\uc774 \uc801\uc6a9\ub429\ub2c8\ub2e4.<br\/>\n\u2022 \uad50\ud658 \ubc0f \ud658\ubd88 \uc2dc\uc5d0\ub294 \uc9c0\uc6d0\ub41c \ubc30\uc1a1\ube44 \ud61c\ud0dd\uc774 \uc0ac\ub77c\uc9c0\uba70, \uace0\uac1d\ub2d8\uc774 \uad6c\ub9e4\uc2dc\uc758 \ubc30\uc1a1\ube44 \ubc0f \ubc18\uc1a1 \ubc30\uc1a1\ube44\ub97c \ubd80\ub2f4\ud569\ub2c8\ub2e4.<br\/>\n\u2022 VIP \ud074\ub7fd\uc758 \ud61c\ud0dd\uc740 \ub2f9\uc0ac \uc0ac\uc815\uc5d0 \uc758\ud574 \ubcc0\uacbd\ub420 \uc218 \uc788\uc73c\uba70, \uc774 \uacbd\uc6b0 \ubcc4\ub3c4 \uace0\uc9c0\ud569\ub2c8\ub2e4.<br\/>\n\u2022 VIP \ud074\ub7fd\uc744 \ud574\uc9c0\ud560 \uacbd\uc6b0, \uace0\uac1d\ub2d8\uc774 \ud560\uc778 \ubc1b\uc740 \ubc30\uc1a1\ube44\ub97c \uc81c\uc678\ud55c \uae08\uc561\uc774 \ud658\ubd88\ub418\uba70, \uac00\uc785 \uae30\uac04\uc5d0 \ub530\ub978 \ucde8\uc18c\uc218\uc218\ub8cc\uac00 \ubc1c\uc0dd\ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4.<br\/>\n\u2022 VIP \ud074\ub7fd \uc2e0\uccad\uc2dc <a href=\"https:\/\/cnn.idus.com\/terms\/client-membership\">VIP \ud074\ub7fd \uc774\uc6a9 \uc57d\uad00<\/a>\uc5d0 \ub3d9\uc758\ud55c \uac83\uc73c\ub85c \uac04\uc8fc\ud569\ub2c8\ub2e4.<br\/>","remain_promotion":1504901,"remain_promotion_message":"\uc548\uc5d0 \uac00\uc785\ud558\uba74 <b>3,300\uc6d0 \uce90\uc2dc\ubc31!<\/b>","remain_promotion_message2":"\uc544\uc774\ub514\uc5b4\uc2a4 \uc571\uc5d0\uc11c"},"link":"\/mobile\/link\/app?idus_type=membership"}        }
    })
    vuepack.create(components);

		</script>
		<script type="application/javascript">
			
    window.kakaoPixel && kakaoPixel('4255617525139617103').viewCart();

		</script>
		<div data-vue="ToastPopup"></div>
		<div data-vue="BottomSheet"></div>
		<div data-vue="WideBottomSheet"></div>
		<div data-vue="FooterModal"></div>
		<div data-vue="InactiveToast"></div>
		<a href="#header" class="to-top" data-ui="scroll-to-top" data-page="">
			<img src="/resources/dist/images/go-to-top-image.png" alt="go to top">
		</a>
		<jsp:include page="footer.jsp" />
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
