<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<!--[if lt IE 7]><html class="lt-ie9 lt-ie8 lt-ie7"><![endif]-->
<!--[if IE 7]><html class="lt-ie9 lt-ie8"><![endif]-->
<!--[if IE 8]><html class="lt-ie9"><![endif]-->
<!--[if gt IE 8]><html class="ie9"><![endif]-->
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="naver-site-verification"
	content="a8c6e5633b597db7b48d05e4a7d247011f6794ec" />
<meta name="google-site-verification"
	content="NnaPRa-jWBb5SnBiwjEZkMqm1pFS2Y8mVdUG0nJqO4c" />
<title>아이디어스 | 장바구니</title>
<meta name="theme-color" content="#ffffff" />
<link rel="stylesheet" href="resources/css/cart.css" />
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
	href="/resources/dist/css/idus.web.min.css?__v=1630657354">
<link rel="stylesheet"
	href="/resources/dist/css/vendor.client.min.css?__v=1630657354">
<script src="/resources/dist/js/vendor.client.min.js?__v=1630657354"></script>
<script src="/resources/dist/js/vuepack.js?__v=1630657354"></script>

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
							id : 8004804,
							thumb : 'https://image.idus.com/image/files/d247655ca3e545e89a48a43aa9318b3f.jpg',
							age : 0,
							gender : 'none',
							grade : 1,
							uuid : 'e62e192c-a56d-4802-8300-4463a73e4d5d',
							isVip : false
						});
		vuepack
				.createToken(
						'[data-vue="token"]',
						{
							token : {
								"token_type" : "Bearer",
								"access_token" : "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6ODAwNDgwNCwicGVybWlzc2lvbiI6IlVTRVIiLCJ0eXBlIjoiY2xpZW50IiwidG9rZW5fdHlwZSI6ImFjY2VzcyIsImV4cCI6MTYzODkzODA1OCwic2FsdCI6Ijg1MzVkNzAxLTFhYWUtNDAxNi05MDRjLTUzNzIxNGZlYzU1NiIsImNyZWF0ZWQiOiIyMDIxLTA5LTA4VDEzOjM0OjE4KzA5OjAwIn0.nGY1vg_tD0NTHmkjn3UypPXPkCSAn6fioyI68pedrv4",
								"refresh_token" : "$2y$10$einR0ft6oogmwFOOuHoleuD6X1tSVCtWQQpv\/HcTPjFPJIsvhF6Se",
								"expired_access_token" : "2021-12-08 13:34:18+09:00",
								"expired_refresh_token" : "2022-03-08 13:34:18+09:00"
							},
							userId : 8004804
						});

		/* Idus Log V2 */
		vuepack.externals.IdusLog.Logger
				.setIdentityId('ap-northeast-2:2dc1cfd9-6d87-4b2e-86e9-527ab8d8b91b');
		vuepack.externals.IdusLog.Logger
				.initialize({
					isApp : false,
					region : 'ap-northeast-2',
					identityPoolId : 'ap-northeast-2:f4c028af-cb84-43cc-a8e5-b047d272b323',
					accountId : '773161815152',
					userData : {
						userId : '8004804',
						userAge : '',
						userGrade : '1',
						userGender : 'none'
					},
					appData : {
						env : 'prod',
						appVersion : '1630657354'
					}
				});
	</script>

	<div class="wrap">
		<div class="dimmed-background"></div>
		<div id="content" class="content" data-page="shoppingBag">
			<!---->
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
									for="2b971783-c0b9-4e2c-8913-15ed3b2f419f"><div
										data-v-5e27c696="" data-v-a6596a66="" class="checkbox">
										<div data-v-5e27c696="" class="input-checkbox">
											<input data-v-5e27c696="" id="" type="checkbox"
												autocomplete="off" class="bp"
												value="2b971783-c0b9-4e2c-8913-15ed3b2f419f">
										</div>
										<!---->
									</div> <span data-v-a6596a66="" class="CartArtistItem__title">
										영주진연농원 (안순천) 작가님 </span></label>
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
																	autocomplete="off" class="bp"
																	value="[추석9월 14일 마감] 영주사과 홍로사과 맛있는사과 ">
															</div>
															<!---->
														</div>
													</div>
													<img data-v-2389adcc="" alt=""
														class="CartProductListItem__productImage"
														src="resources/images/cart/order01.PNG">
												</div>
												<div data-v-2389adcc=""
													class="CartProductListItem__productInfoTextGroup">
													<a data-v-2389adcc=""
														href="/w/product/d846fd4c-728a-4451-b7aa-16d4f76851c1"
														class="CartProductListItem__productName">[추석9월 14일 마감]
														영주사과 홍로사과 맛있는사과 </a> <em data-v-2389adcc=""
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
																class="CartOptionListItem__optionText"> • 사과 2.5kg
																: 홍로사과 3kg( 대과 5~8과)(8,000원) </em>
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
																class="CartOptionListItem__totalPrice"> 27,900원 </em>
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
								<em data-v-a6596a66="" class="CartArtistItem__price">27,900원</em>
							</section>
							<section data-v-a6596a66="" class="CartArtistItem__section">
								<div data-v-a6596a66="" class="CartArtistItem__label">배송비</div>
								<div data-v-a6596a66="" class="CartArtistItem__price">
									<div data-v-76555e5b="" data-v-a6596a66=""
										class="ShippingPrice">
										<em data-v-76555e5b="" class="ShippingPrice__price">3,000원</em>
										<div data-v-76555e5b="" class="ShippingPrice__desc">
											50,000원 이상 무료배송</div>
									</div>
								</div>
							</section>
							<!---->
						</div>
					</div>
					<div class="vue-sticky-placeholder" style="padding-top: 0px;"></div>
					<div data-v-56dfc770="" sticky-side="bottom"
						on-stick="handleChangeStickBottom"
						class="CartList__sticky vue-sticky-el"
						style="position: static; top: auto; bottom: auto; left: auto; width: auto; z-index: 10;">
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
							<div data-v-46d2f086="" data-v-6d930ad9="" class="CartVipBanner"
								data-v-261b598e="">
								<div data-v-895af704="" data-v-46d2f086=""
									class="CartVipBanner__tooltip tooltip 
    "
									style="right: 311px;">
									<!--  <span data-v-46d2f086="" data-v-895af704=""
										class="CartVipBanner__message"><p data-v-46d2f086=""
											data-v-895af704="">작가님당 10,000원 이상 구매 시</p> <strong
										data-v-46d2f086="" data-v-895af704=""
										class="CartVipBanner__message"> VIP 클럽 무료배송 <i
											data-v-46d2f086="" data-v-895af704=""
											class="idus-icon-arrow-right"></i></strong></span>-->
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
										<span data-v-e14558f4="">27,900</span> <span
											data-v-e14558f4="" class="CartCheckoutDesktop__priceUnit">원</span>
									</div>
								</div>
								<div data-v-e14558f4="" class="CartCheckoutDesktop__item--fixed">+</div>
								<div data-v-e14558f4="" class="CartCheckoutDesktop__item">
									<div data-v-e14558f4="" class="CartCheckoutDesktop__label">배송비</div>
									<div data-v-e14558f4="" class="CartCheckoutDesktop__value">
										<span data-v-e14558f4="">3,000</span> <span data-v-e14558f4=""
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
										<span data-v-e14558f4="">30,900</span> <span
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



		<div data-vue="ModalContainer"></div>
		<div data-vue="CartPage"></div>

		<!--  ========================================================================================== -->
		<script type="application/javascript">
			
			
			
    // 장바구니 pageview logging
    var Logger = vuepack.externals.IdusLog.Logger;
    var PageName = vuepack.externals.IdusLog.PageName;
    Logger.sendPageView(PageName.Cart);

    vuepack.createModal('[data-vue="ModalContainer"]', { title: "아이디어스 VIP 클럽", width: 370, component: 'VipPolicyContents', classname: "vip" });
    var vipModalData = {
        policies: {"vip_month":{"id":3,"membership_charge":18000,"discount_charge":3300,"title":"\uc6d4\ud68c\ube44","title_sub":"\ubd80\ub2f4 \uc5c6\ub294 \uc120\ud0dd!","price_sub":"\ubc30\uc1a1\ube44 \ud55c \ubc88 \uac00\uaca9","badge":{"type":"HOT","label":"\uc778\uae30"},"notice_label":"\u2022 \uc6d4\ud68c\ube44\ub294 \uac00\uc785\uc77c \uae30\uc900\uc73c\ub85c 30\uc77c\ub9c8\ub2e4 \uc790\ub3d9 \uacb0\uc81c\ub418\uba70, \uc5b8\uc81c\ub4e0\uc9c0 \ud574\uc9c0 \uac00\ub2a5\ud569\ub2c8\ub2e4."},"vip_year":{"id":1,"membership_charge":180000,"discount_charge":30000,"title":"\uc5f0\ud68c\ube44","title_sub":"\uac00\uc131\ube44 \ucd5c\uac15 \ud61c\ud0dd!","price_sub":"\ud55c \ub2ec\uc5d0 2,500\uc6d0","notice_label":"\u2022 \uc5f0\ud68c\ube44\ub294 \uac00\uc785\uc77c \uae30\uc900\uc73c\ub85c \ub9e4\ub144 \uc790\ub3d9 \uacb0\uc81c\ub418\uba70, \uc5b8\uc81c\ub4e0\uc9c0 \ud574\uc9c0 \uac00\ub2a5\ud569\ub2c8\ub2e4."},"guide_label":"<br\/>\n\u2022 VIP \ud074\ub7fd \uc11c\ube44\uc2a4\uc758 \ud68c\ube44\ub294 \ub9e4\ub144 \ub610\ub294 30\uc77c \ub9c8\ub2e4 \uac00\uc785\uc77c \uae30\uc900\uc73c\ub85c \uc815\uae30\uacb0\uc81c\ub418\uba70, \uc5b8\uc81c\ub4e0\uc9c0 \ud574\uc9c0 \uac00\ub2a5\ud569\ub2c8\ub2e4.<br\/>\n\u2022 \uae30\ubcf8 \ubc30\uc1a1\ub8cc\ub9cc \ud560\uc778 \ud61c\ud0dd\uc774 \uc801\uc6a9\ub429\ub2c8\ub2e4. (\uc81c\uc8fc\/\ub3c4\uc11c\uc0b0\uac04 \ucd94\uac00\ube44\uc6a9, \ucc29\ubd88 \uc694\uae08, \uc791\ud488 \uc635\uc158\uc73c\ub85c \uc124\uc815\ub41c \ubc30\uc1a1\ube44, \uac1c\uc778\ub9de\ucda4 \uacb0\uc81c \ube44\uc6a9 \uc81c\uc678)<br\/>\n\u2022 \ucfe0\ud3f0 \ub4f1\uc744 \uc801\uc6a9\ud55c \ucd5c\uc885 \uacb0\uc81c \uae08\uc561\uc744 \uae30\uc900\uc73c\ub85c \uad6c\ub9e4\ud558\ub294 \uc791\ud488\uae08\uc561\uc774 \uc791\uac00\ub2d8\ub2f9 10,000\uc6d0 \uc774\uc0c1\uc77c \uacbd\uc6b0, \ubc30\uc1a1\ube44 \ud560\uc778 \ud61c\ud0dd\uc774 \uc801\uc6a9\ub429\ub2c8\ub2e4.<br\/>\n\u2022 \uad50\ud658 \ubc0f \ud658\ubd88 \uc2dc\uc5d0\ub294 \uc9c0\uc6d0\ub41c \ubc30\uc1a1\ube44 \ud61c\ud0dd\uc774 \uc0ac\ub77c\uc9c0\uba70, \uace0\uac1d\ub2d8\uc774 \uad6c\ub9e4\uc2dc\uc758 \ubc30\uc1a1\ube44 \ubc0f \ubc18\uc1a1 \ubc30\uc1a1\ube44\ub97c \ubd80\ub2f4\ud569\ub2c8\ub2e4.<br\/>\n\u2022 VIP \ud074\ub7fd\uc758 \ud61c\ud0dd\uc740 \ub2f9\uc0ac \uc0ac\uc815\uc5d0 \uc758\ud574 \ubcc0\uacbd\ub420 \uc218 \uc788\uc73c\uba70, \uc774 \uacbd\uc6b0 \ubcc4\ub3c4 \uace0\uc9c0\ud569\ub2c8\ub2e4.<br\/>\n\u2022 VIP \ud074\ub7fd\uc744 \ud574\uc9c0\ud560 \uacbd\uc6b0, \uace0\uac1d\ub2d8\uc774 \ud560\uc778 \ubc1b\uc740 \ubc30\uc1a1\ube44\ub97c \uc81c\uc678\ud55c \uae08\uc561\uc774 \ud658\ubd88\ub418\uba70, \uac00\uc785 \uae30\uac04\uc5d0 \ub530\ub978 \ucde8\uc18c\uc218\uc218\ub8cc\uac00 \ubc1c\uc0dd\ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4.<br\/>\n\u2022 VIP \ud074\ub7fd \uc2e0\uccad\uc2dc <a href=\"https:\/\/cnn.idus.com\/terms\/client-membership\">VIP \ud074\ub7fd \uc774\uc6a9 \uc57d\uad00<\/a>\uc5d0 \ub3d9\uc758\ud55c \uac83\uc73c\ub85c \uac04\uc8fc\ud569\ub2c8\ub2e4.<br\/>"},
        link: "/mobile/link/app?idus_type=membership",
        setting: {"vip_month":{"id":3,"membership_charge":18000,"discount_charge":3300,"title":"\uc6d4\ud68c\ube44","title_sub":"\ubd80\ub2f4 \uc5c6\ub294 \uc120\ud0dd!","price_sub":"\ubc30\uc1a1\ube44 \ud55c \ubc88 \uac00\uaca9","badge":{"type":"HOT","label":"\uc778\uae30"},"notice_label":"\u2022 \uc6d4\ud68c\ube44\ub294 \uac00\uc785\uc77c \uae30\uc900\uc73c\ub85c 30\uc77c\ub9c8\ub2e4 \uc790\ub3d9 \uacb0\uc81c\ub418\uba70, \uc5b8\uc81c\ub4e0\uc9c0 \ud574\uc9c0 \uac00\ub2a5\ud569\ub2c8\ub2e4."},"vip_year":{"id":1,"membership_charge":180000,"discount_charge":30000,"title":"\uc5f0\ud68c\ube44","title_sub":"\uac00\uc131\ube44 \ucd5c\uac15 \ud61c\ud0dd!","price_sub":"\ud55c \ub2ec\uc5d0 2,500\uc6d0","notice_label":"\u2022 \uc5f0\ud68c\ube44\ub294 \uac00\uc785\uc77c \uae30\uc900\uc73c\ub85c \ub9e4\ub144 \uc790\ub3d9 \uacb0\uc81c\ub418\uba70, \uc5b8\uc81c\ub4e0\uc9c0 \ud574\uc9c0 \uac00\ub2a5\ud569\ub2c8\ub2e4."},"guide_label":"<br\/>\n\u2022 VIP \ud074\ub7fd \uc11c\ube44\uc2a4\uc758 \ud68c\ube44\ub294 \ub9e4\ub144 \ub610\ub294 30\uc77c \ub9c8\ub2e4 \uac00\uc785\uc77c \uae30\uc900\uc73c\ub85c \uc815\uae30\uacb0\uc81c\ub418\uba70, \uc5b8\uc81c\ub4e0\uc9c0 \ud574\uc9c0 \uac00\ub2a5\ud569\ub2c8\ub2e4.<br\/>\n\u2022 \uae30\ubcf8 \ubc30\uc1a1\ub8cc\ub9cc \ud560\uc778 \ud61c\ud0dd\uc774 \uc801\uc6a9\ub429\ub2c8\ub2e4. (\uc81c\uc8fc\/\ub3c4\uc11c\uc0b0\uac04 \ucd94\uac00\ube44\uc6a9, \ucc29\ubd88 \uc694\uae08, \uc791\ud488 \uc635\uc158\uc73c\ub85c \uc124\uc815\ub41c \ubc30\uc1a1\ube44, \uac1c\uc778\ub9de\ucda4 \uacb0\uc81c \ube44\uc6a9 \uc81c\uc678)<br\/>\n\u2022 \ucfe0\ud3f0 \ub4f1\uc744 \uc801\uc6a9\ud55c \ucd5c\uc885 \uacb0\uc81c \uae08\uc561\uc744 \uae30\uc900\uc73c\ub85c \uad6c\ub9e4\ud558\ub294 \uc791\ud488\uae08\uc561\uc774 \uc791\uac00\ub2d8\ub2f9 10,000\uc6d0 \uc774\uc0c1\uc77c \uacbd\uc6b0, \ubc30\uc1a1\ube44 \ud560\uc778 \ud61c\ud0dd\uc774 \uc801\uc6a9\ub429\ub2c8\ub2e4.<br\/>\n\u2022 \uad50\ud658 \ubc0f \ud658\ubd88 \uc2dc\uc5d0\ub294 \uc9c0\uc6d0\ub41c \ubc30\uc1a1\ube44 \ud61c\ud0dd\uc774 \uc0ac\ub77c\uc9c0\uba70, \uace0\uac1d\ub2d8\uc774 \uad6c\ub9e4\uc2dc\uc758 \ubc30\uc1a1\ube44 \ubc0f \ubc18\uc1a1 \ubc30\uc1a1\ube44\ub97c \ubd80\ub2f4\ud569\ub2c8\ub2e4.<br\/>\n\u2022 VIP \ud074\ub7fd\uc758 \ud61c\ud0dd\uc740 \ub2f9\uc0ac \uc0ac\uc815\uc5d0 \uc758\ud574 \ubcc0\uacbd\ub420 \uc218 \uc788\uc73c\uba70, \uc774 \uacbd\uc6b0 \ubcc4\ub3c4 \uace0\uc9c0\ud569\ub2c8\ub2e4.<br\/>\n\u2022 VIP \ud074\ub7fd\uc744 \ud574\uc9c0\ud560 \uacbd\uc6b0, \uace0\uac1d\ub2d8\uc774 \ud560\uc778 \ubc1b\uc740 \ubc30\uc1a1\ube44\ub97c \uc81c\uc678\ud55c \uae08\uc561\uc774 \ud658\ubd88\ub418\uba70, \uac00\uc785 \uae30\uac04\uc5d0 \ub530\ub978 \ucde8\uc18c\uc218\uc218\ub8cc\uac00 \ubc1c\uc0dd\ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4.<br\/>\n\u2022 VIP \ud074\ub7fd \uc2e0\uccad\uc2dc <a href=\"https:\/\/cnn.idus.com\/terms\/client-membership\">VIP \ud074\ub7fd \uc774\uc6a9 \uc57d\uad00<\/a>\uc5d0 \ub3d9\uc758\ud55c \uac83\uc73c\ub85c \uac04\uc8fc\ud569\ub2c8\ub2e4.<br\/>","remain_promotion":1937947,"remain_promotion_message":"\uc548\uc5d0 \uac00\uc785\ud558\uba74 <b>3,300\uc6d0 \uce90\uc2dc\ubc31!<\/b>","remain_promotion_message2":"\uc544\uc774\ub514\uc5b4\uc2a4 \uc571\uc5d0\uc11c"}    }

    var components = [];
    components.push({
        selector: '[data-vue="CartPage"]',
        component: 'CartPage',
        props: {
            title: '장바구니',
            steps: [{text: '장바구니', active: true }, { text: '주문결제' }, { text: '주문완료'}],
            homeUri: "/",
            cartList: [{"artist":{"id":"6346613","uuid":"2b971783-c0b9-4e2c-8913-15ed3b2f419f","artist_name":"\uc601\uc8fc\uc9c4\uc5f0\ub18d\uc6d0 (\uc548\uc21c\ucc9c)","is_vacation":0,"vacation_msg":"\uc548\ub155\ud558\uc138\uc694 \uc601\uc8fc\uc9c4\uc5f0\ub18d\uc6d0 \ub18d\uc7a5\uc8fc \uc785\ub2c8\ub2e4\r\n\ucd94\uc11d\uc5d0 \ud55c\ub2ec\ub3d9\uc548 \ub4dc\uc2e4 \uc218 \uc788\ub294 \ud64d\ub85c\uc0ac\uacfc\uac00 \uc774\uc81c \uace7 \uc218\ud655\uc744 \uae30\ub2e4\ub9ac\uace0 \uc788\uc2b5\ub2c8\ub2e4\r\n\uace0\uac1d\ub2d8\ub4e4 \uc870\uae08\ub9cc \uae30\ub2e4\ub824 \uc8fc\uc138\uc694\r\n\uace7 \ucc3e\uc544 \ubd59\ub3c4\ub85d \ud558\uaca0\uc2b5\ub2c8\ub2e4 ","delivery_fee":3000,"delivery_free":50000,"delivery_remote":5000,"delivery_style":0,"price_delivery_fee":3000,"is_can_vip_club":true,"price_artist_total":27900},"product":[{"shopping_bag_uuid":"9cf445e0-a181-44f7-a0a8-771d5b66fc9f","product_uuid":"d846fd4c-728a-4451-b7aa-16d4f76851c1","category_uuid":"4a8cbc36-3af8-4b75-af01-8795782df80d","product_name":"[\ucd94\uc11d9\uc6d4 14\uc77c \ub9c8\uac10] \uc601\uc8fc\uc0ac\uacfc \ud64d\ub85c\uc0ac\uacfc \ub9db\uc788\ub294\uc0ac\uacfc ","product_image":"https:\/\/image.idus.com\/image\/files\/184d33e0d33343979c5cc6136fe81db4_320.jpg","product_item_count":-1,"is_sale":1,"is_auth":0,"option_items":[{"option_md5":"4d3bec89828c154457397c6ec721d5df","option_txt":"\u2022 \uc0ac\uacfc 2.5kg : \ud64d\ub85c\uc0ac\uacfc 3kg( \ub300\uacfc 5~8\uacfc)(8,000\uc6d0)","option_item_count":1,"option_price":8000,"total_price":27900,"is_changed_option":0}],"order_message":"","is_shopping_bag":1,"is_removed":false}],"coupon":[]}],
            installIosUrl: '',
            installAndUrl: '',
            preparePaymentData: {"paymentable":false,"data":[]},
            vipModal: {"status":{"is_activated":false},"policies":{"vip_month":{"id":3,"membership_charge":18000,"discount_charge":3300,"title":"\uc6d4\ud68c\ube44","title_sub":"\ubd80\ub2f4 \uc5c6\ub294 \uc120\ud0dd!","price_sub":"\ubc30\uc1a1\ube44 \ud55c \ubc88 \uac00\uaca9","badge":{"type":"HOT","label":"\uc778\uae30"},"notice_label":"\u2022 \uc6d4\ud68c\ube44\ub294 \uac00\uc785\uc77c \uae30\uc900\uc73c\ub85c 30\uc77c\ub9c8\ub2e4 \uc790\ub3d9 \uacb0\uc81c\ub418\uba70, \uc5b8\uc81c\ub4e0\uc9c0 \ud574\uc9c0 \uac00\ub2a5\ud569\ub2c8\ub2e4."},"vip_year":{"id":1,"membership_charge":180000,"discount_charge":30000,"title":"\uc5f0\ud68c\ube44","title_sub":"\uac00\uc131\ube44 \ucd5c\uac15 \ud61c\ud0dd!","price_sub":"\ud55c \ub2ec\uc5d0 2,500\uc6d0","notice_label":"\u2022 \uc5f0\ud68c\ube44\ub294 \uac00\uc785\uc77c \uae30\uc900\uc73c\ub85c \ub9e4\ub144 \uc790\ub3d9 \uacb0\uc81c\ub418\uba70, \uc5b8\uc81c\ub4e0\uc9c0 \ud574\uc9c0 \uac00\ub2a5\ud569\ub2c8\ub2e4."},"guide_label":"<br\/>\n\u2022 VIP \ud074\ub7fd \uc11c\ube44\uc2a4\uc758 \ud68c\ube44\ub294 \ub9e4\ub144 \ub610\ub294 30\uc77c \ub9c8\ub2e4 \uac00\uc785\uc77c \uae30\uc900\uc73c\ub85c \uc815\uae30\uacb0\uc81c\ub418\uba70, \uc5b8\uc81c\ub4e0\uc9c0 \ud574\uc9c0 \uac00\ub2a5\ud569\ub2c8\ub2e4.<br\/>\n\u2022 \uae30\ubcf8 \ubc30\uc1a1\ub8cc\ub9cc \ud560\uc778 \ud61c\ud0dd\uc774 \uc801\uc6a9\ub429\ub2c8\ub2e4. (\uc81c\uc8fc\/\ub3c4\uc11c\uc0b0\uac04 \ucd94\uac00\ube44\uc6a9, \ucc29\ubd88 \uc694\uae08, \uc791\ud488 \uc635\uc158\uc73c\ub85c \uc124\uc815\ub41c \ubc30\uc1a1\ube44, \uac1c\uc778\ub9de\ucda4 \uacb0\uc81c \ube44\uc6a9 \uc81c\uc678)<br\/>\n\u2022 \ucfe0\ud3f0 \ub4f1\uc744 \uc801\uc6a9\ud55c \ucd5c\uc885 \uacb0\uc81c \uae08\uc561\uc744 \uae30\uc900\uc73c\ub85c \uad6c\ub9e4\ud558\ub294 \uc791\ud488\uae08\uc561\uc774 \uc791\uac00\ub2d8\ub2f9 10,000\uc6d0 \uc774\uc0c1\uc77c \uacbd\uc6b0, \ubc30\uc1a1\ube44 \ud560\uc778 \ud61c\ud0dd\uc774 \uc801\uc6a9\ub429\ub2c8\ub2e4.<br\/>\n\u2022 \uad50\ud658 \ubc0f \ud658\ubd88 \uc2dc\uc5d0\ub294 \uc9c0\uc6d0\ub41c \ubc30\uc1a1\ube44 \ud61c\ud0dd\uc774 \uc0ac\ub77c\uc9c0\uba70, \uace0\uac1d\ub2d8\uc774 \uad6c\ub9e4\uc2dc\uc758 \ubc30\uc1a1\ube44 \ubc0f \ubc18\uc1a1 \ubc30\uc1a1\ube44\ub97c \ubd80\ub2f4\ud569\ub2c8\ub2e4.<br\/>\n\u2022 VIP \ud074\ub7fd\uc758 \ud61c\ud0dd\uc740 \ub2f9\uc0ac \uc0ac\uc815\uc5d0 \uc758\ud574 \ubcc0\uacbd\ub420 \uc218 \uc788\uc73c\uba70, \uc774 \uacbd\uc6b0 \ubcc4\ub3c4 \uace0\uc9c0\ud569\ub2c8\ub2e4.<br\/>\n\u2022 VIP \ud074\ub7fd\uc744 \ud574\uc9c0\ud560 \uacbd\uc6b0, \uace0\uac1d\ub2d8\uc774 \ud560\uc778 \ubc1b\uc740 \ubc30\uc1a1\ube44\ub97c \uc81c\uc678\ud55c \uae08\uc561\uc774 \ud658\ubd88\ub418\uba70, \uac00\uc785 \uae30\uac04\uc5d0 \ub530\ub978 \ucde8\uc18c\uc218\uc218\ub8cc\uac00 \ubc1c\uc0dd\ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4.<br\/>\n\u2022 VIP \ud074\ub7fd \uc2e0\uccad\uc2dc <a href=\"https:\/\/cnn.idus.com\/terms\/client-membership\">VIP \ud074\ub7fd \uc774\uc6a9 \uc57d\uad00<\/a>\uc5d0 \ub3d9\uc758\ud55c \uac83\uc73c\ub85c \uac04\uc8fc\ud569\ub2c8\ub2e4.<br\/>"},"setting":{"vip_month":{"id":3,"membership_charge":18000,"discount_charge":3300,"title":"\uc6d4\ud68c\ube44","title_sub":"\ubd80\ub2f4 \uc5c6\ub294 \uc120\ud0dd!","price_sub":"\ubc30\uc1a1\ube44 \ud55c \ubc88 \uac00\uaca9","badge":{"type":"HOT","label":"\uc778\uae30"},"notice_label":"\u2022 \uc6d4\ud68c\ube44\ub294 \uac00\uc785\uc77c \uae30\uc900\uc73c\ub85c 30\uc77c\ub9c8\ub2e4 \uc790\ub3d9 \uacb0\uc81c\ub418\uba70, \uc5b8\uc81c\ub4e0\uc9c0 \ud574\uc9c0 \uac00\ub2a5\ud569\ub2c8\ub2e4."},"vip_year":{"id":1,"membership_charge":180000,"discount_charge":30000,"title":"\uc5f0\ud68c\ube44","title_sub":"\uac00\uc131\ube44 \ucd5c\uac15 \ud61c\ud0dd!","price_sub":"\ud55c \ub2ec\uc5d0 2,500\uc6d0","notice_label":"\u2022 \uc5f0\ud68c\ube44\ub294 \uac00\uc785\uc77c \uae30\uc900\uc73c\ub85c \ub9e4\ub144 \uc790\ub3d9 \uacb0\uc81c\ub418\uba70, \uc5b8\uc81c\ub4e0\uc9c0 \ud574\uc9c0 \uac00\ub2a5\ud569\ub2c8\ub2e4."},"guide_label":"<br\/>\n\u2022 VIP \ud074\ub7fd \uc11c\ube44\uc2a4\uc758 \ud68c\ube44\ub294 \ub9e4\ub144 \ub610\ub294 30\uc77c \ub9c8\ub2e4 \uac00\uc785\uc77c \uae30\uc900\uc73c\ub85c \uc815\uae30\uacb0\uc81c\ub418\uba70, \uc5b8\uc81c\ub4e0\uc9c0 \ud574\uc9c0 \uac00\ub2a5\ud569\ub2c8\ub2e4.<br\/>\n\u2022 \uae30\ubcf8 \ubc30\uc1a1\ub8cc\ub9cc \ud560\uc778 \ud61c\ud0dd\uc774 \uc801\uc6a9\ub429\ub2c8\ub2e4. (\uc81c\uc8fc\/\ub3c4\uc11c\uc0b0\uac04 \ucd94\uac00\ube44\uc6a9, \ucc29\ubd88 \uc694\uae08, \uc791\ud488 \uc635\uc158\uc73c\ub85c \uc124\uc815\ub41c \ubc30\uc1a1\ube44, \uac1c\uc778\ub9de\ucda4 \uacb0\uc81c \ube44\uc6a9 \uc81c\uc678)<br\/>\n\u2022 \ucfe0\ud3f0 \ub4f1\uc744 \uc801\uc6a9\ud55c \ucd5c\uc885 \uacb0\uc81c \uae08\uc561\uc744 \uae30\uc900\uc73c\ub85c \uad6c\ub9e4\ud558\ub294 \uc791\ud488\uae08\uc561\uc774 \uc791\uac00\ub2d8\ub2f9 10,000\uc6d0 \uc774\uc0c1\uc77c \uacbd\uc6b0, \ubc30\uc1a1\ube44 \ud560\uc778 \ud61c\ud0dd\uc774 \uc801\uc6a9\ub429\ub2c8\ub2e4.<br\/>\n\u2022 \uad50\ud658 \ubc0f \ud658\ubd88 \uc2dc\uc5d0\ub294 \uc9c0\uc6d0\ub41c \ubc30\uc1a1\ube44 \ud61c\ud0dd\uc774 \uc0ac\ub77c\uc9c0\uba70, \uace0\uac1d\ub2d8\uc774 \uad6c\ub9e4\uc2dc\uc758 \ubc30\uc1a1\ube44 \ubc0f \ubc18\uc1a1 \ubc30\uc1a1\ube44\ub97c \ubd80\ub2f4\ud569\ub2c8\ub2e4.<br\/>\n\u2022 VIP \ud074\ub7fd\uc758 \ud61c\ud0dd\uc740 \ub2f9\uc0ac \uc0ac\uc815\uc5d0 \uc758\ud574 \ubcc0\uacbd\ub420 \uc218 \uc788\uc73c\uba70, \uc774 \uacbd\uc6b0 \ubcc4\ub3c4 \uace0\uc9c0\ud569\ub2c8\ub2e4.<br\/>\n\u2022 VIP \ud074\ub7fd\uc744 \ud574\uc9c0\ud560 \uacbd\uc6b0, \uace0\uac1d\ub2d8\uc774 \ud560\uc778 \ubc1b\uc740 \ubc30\uc1a1\ube44\ub97c \uc81c\uc678\ud55c \uae08\uc561\uc774 \ud658\ubd88\ub418\uba70, \uac00\uc785 \uae30\uac04\uc5d0 \ub530\ub978 \ucde8\uc18c\uc218\uc218\ub8cc\uac00 \ubc1c\uc0dd\ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4.<br\/>\n\u2022 VIP \ud074\ub7fd \uc2e0\uccad\uc2dc <a href=\"https:\/\/cnn.idus.com\/terms\/client-membership\">VIP \ud074\ub7fd \uc774\uc6a9 \uc57d\uad00<\/a>\uc5d0 \ub3d9\uc758\ud55c \uac83\uc73c\ub85c \uac04\uc8fc\ud569\ub2c8\ub2e4.<br\/>","remain_promotion":1937947,"remain_promotion_message":"\uc548\uc5d0 \uac00\uc785\ud558\uba74 <b>3,300\uc6d0 \uce90\uc2dc\ubc31!<\/b>","remain_promotion_message2":"\uc544\uc774\ub514\uc5b4\uc2a4 \uc571\uc5d0\uc11c"},"link":"\/mobile\/link\/app?idus_type=membership"}        }
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
		<!--  
<a href="#header" class="to-top" data-ui="scroll-to-top" data-page="">
    <img src="/resources/dist/images/go-to-top-image.png" alt="go to top">
</a>-->
		<%-- <jsp:include page="footer.jsp" /> --%>
		<script>
			function escrowPopup() {
				var url = 'https://pg.nicepay.co.kr/issue/IssueEscrow.jsp?Mid=iduscom01m&CoNo=1078783297';
				var newWindow = window
						.open(url, 'name', 'height=450,width=400');

				if (window.focus)
					newWindow.focus();
				return false;
			}

			vuepack.create([ {
				selector : '[data-vue="BottomSheet"]',
				component : 'BottomSheet'
			}, {
				selector : '[data-vue="WideBottomSheet"]',
				component : 'WideBottomSheet'
			}, {
				selector : '[data-vue="FooterModal"]',
				component : 'FooterModal'
			}, {
				selector : '[data-vue="ToastPopup"]',
				component : 'ToastPopup'
			}, {
				selector : '[data-vue="InactiveToast',
				component : 'InactiveToast'
			} ]);
		</script>
	</div>
	<!-- div WRAP -->
	<script type="text/javascript"
		src="/resources/dist/js/idus.web.min.js?__v=1630657354"></script>
	<script>
		(function() {
			var applink = new vuepack.externals.Applink();
			var scheme = applink.locationToAppScheme();

			var isIOS = (navigator.userAgent.match('iPhone') != null
					|| navigator.userAgent.match('iPod') != null || navigator.userAgent
					.match('iPad') != null);

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
		vuepack.externals.VendorLogger.sendLog([ {
			vendorName : 'naver',
		}, ]);
	</script>
</body>
</html>
