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
        <meta name="naver-site-verification" content="a8c6e5633b597db7b48d05e4a7d247011f6794ec"/>
        <meta name="google-site-verification" content="NnaPRa-jWBb5SnBiwjEZkMqm1pFS2Y8mVdUG0nJqO4c" />
        <title>아이디어스 | 주소(배송지) 관리</title>
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
        <!-- Intersection Observer polyfill -->
        <script src="https://polyfill.io/v3/polyfill.js?features=IntersectionObserver&ua=ie/11"></script>
                <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0, user-scalable=0 viewport-fit=cover"/>
        <meta name="application-name" content="아이디어스" />
        <meta name="keywords" content="핸드메이드, 수공예, 수제 먹거리"/>
        <meta property="fb:app_id" content="1410666675867984" />
                <meta name="description" content="취향 맞춤 작품 구매부터 취미 생활까지, 아이디어스로 일상에 특별함을 잇다!" />
        <meta property="og:title" content="핸드메이드 라이프스타일 플랫폼, 아이디어스" />
        <meta property="og:type"   content="website" />
        <meta property="og:description" content="취향 맞춤 작품 구매부터 취미 생활까지, 아이디어스로 일상에 특별함을 잇다!" />
        <meta property="og:url" content="http://www.idus.com/w/me/address"/>
        <meta property="og:image" content="http://www.idus.com/resources/dist/images/ogimg-idus.png?ver=2.0" />
        <link rel="canonical" href="http://www.idus.com/w/me/address"/>
                <script>
            window.__client_env__ = 'production';
            window.CNN_DOMAIN = 'https://cnn.idus.com';
        </script>
        <!-- project src -->
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
        <link rel="stylesheet" href="resources/css/mypage.css"/>
        <link rel="stylesheet" href="resources/css/idus.web.min.css"/>
        <link rel="stylesheet" href="resources/css/vendor.client.min.css"/>
        <script src="/resources/dist/js/vendor.client.min.js?__v=1631078629"></script>
        <script src="/resources/dist/js/vuepack.js?__v=1631078629"></script>
        
        <link rel="stylesheet" href="//cdn.flowplayer.com/releases/native/v2.5.14/style/flowplayer.css">
        <script src="//cdn.flowplayer.com/releases/native/v2.5.14/flowplayer.min.js"></script>
        <script src="//cdn.flowplayer.com/releases/native/v2.5.14/plugins/dash.min.js"></script>
        <script src="//cdn.flowplayer.com/releases/native/v2.5.14/plugins/thumbnails.min.js"></script>
        <script src="//cdn.flowplayer.com/releases/native/v2.5.14/plugins/speed.min.js"></script>
        <script src="//cdn.flowplayer.com/releases/native/v2.5.14/plugins/hls.min.js"></script>
        <script src="//cdn.flowplayer.com/releases/native/v2.5.14/plugins/dash.min.js"></script>
        <script src="//cdn.flowplayer.com/releases/native/v2.5.14/plugins/keyboard.min.js"></script>
        <!-- <script src="//cdn.flowplayer.com/releases/native/stable/plugins/cuepoints.min.js"></script> -->

        <!-- Kakao web SDK -->
        <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
        <!-- Signin With Apple -->
        <script type="text/javascript" src="https://appleid.cdn-apple.com/appleauth/static/jsapi/appleid/1/en_US/appleid.auth.js"></script>

        <!-- tracker vendors -->
        <script async src="https://www.googletagmanager.com/gtag/js?id=AW-775263643"></script>
        <script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
        <script type="text/javascript" src="//static.criteo.net/js/ld/ld.js" async="true"></script>
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
        <jsp:include page="header_goods.jsp"/>
                        
<div class="dimmed-background"></div><!-- 회원정보관리 -->
<div id="content" class="content" data-page="mypageinfo address">
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
            <div class="title-style no-mt clf">
                <a href="#" class="txt fl">주소(배송지) 관리</a>
            </div>

                        <form class="form-address" action="/w/me/address/update" method="post">
                <input type="hidden" name="address_uuid" value="c89bec8d-2490-4686-a697-5dd1f6aaf1c6">
                <div class="section-address">
                    <table class="table-style-head-top">
                        <thead>
                            <tr>
                                <th>배송지 1</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <div class="address-info root">
                                        <div class="address-info item">
                                            <div class="address-info head">
                                                <em class="asterisk red">∗</em>
                                                <label for="receiver">받는분</label>
                                            </div>
                                            <div class="address-info body">
                                                <div class="input-text">
                                                    <input
                                                        class="readonly"
                                                        data-address="delivery_name"
                                                        name="delivery_name"
                                                        value="OOO"
                                                        type="text"
                                                        required
                                                        autocomplete="off"
                                                        readonly
                                                        placeholder="받는분 이름을 입력해주세요."
                                                    >
                                                </div>
                                            </div>
                                        </div>

                                        <div class="address-info item">
                                            <div class="address-info head">
                                                <em class="asterisk red">∗</em>
                                                <label for="receiver">전화번호</label>
                                            </div>
                                            <div class="address-info body">
                                                <div class="input-text">
                                                    <input
                                                        class="readonly"
                                                        data-address="delivery_phone"
                                                        name="delivery_phone"
                                                        value="010-0000-0000"
                                                        type="text"
                                                        required
                                                        autocomplete="off"
                                                        readonly
                                                        placeholder="전화번호를 입력해주세요"
                                                    >
                                                </div>
                                            </div>
                                        </div>

                                        <div class="address-info item">
                                            <div class="address-info head">
                                                <em class="asterisk red">∗</em>
                                                <label for="receiver">주소</label>
                                            </div>
                                            <div class="address-info body">
                                                        <div class="address-ui root">
            <div class="address-ui address">
                <div class="address-ui row">
                    <div class="input-text address-zip-code">
                        <input
                            data-address="delivery_zipcode"
                            type="text"
                            name="delivery_zipcode"
                            value="00000"
                            placeholder="우편번호"
                            required
                            autocomplete="off"
                            readonly
                                                            class="readonly"
                                                    >
                    </div>
                    <button
                                                    style="display: none"
                                                data-address="open"
                        class="btn btn-m btn-white"
                        type="button"
                    >주소 찾기</button>

                    <!-- 다음주소 layer -->
                    <div
                        class="daum-post-layer"
                        style="display:none;position:relative;width:auto;margin-top:10px;overflow:auto;-webkit-overflow-scrolling:touch;"
                    >
                        <img
                            src="//t1.daumcdn.net/localimg/localimages/07/postcode/320/close.png"
                            id="btnCloseLayer"
                            style="cursor:pointer;position:absolute;right:0;top:0;z-index:1"
                            alt="닫기 버튼"
                        >
                    </div>
                </div>

                <div class="address-ui row">
                    <div class="input-text address-address">
                        <input
                            data-address="delivery_address1"
                            type="text"
                            name="delivery_address1"
                            value="서울 광진구"
                            placeholder="기본 주소"
                            required
                            autocomplete="off"
                            readonly
                                                            class="readonly"
                                                    >
                    </div>
                </div>
                <div class="address-ui row">
                    <div class="input-text address-address2">
                        <input
                            data-address="delivery_address2"
                            type="text"
                            name="delivery_address2"
                            value=""
                            autocomplete="off"
                            placeholder="나머지 주소"
                                                        class="readonly"
                            readonly
                                                    >
                    </div>
                </div>

            </div>
        </div>

        <!-- iOS에서는 position:fixed 버그가 있음, 적용하는 사이트에 맞게 position:absolute 등을 이용하여 top,left값 조정 필요 -->
        <!-- <div
            id="layer"
            style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;"
        > -->
                                                        <div class="mt10" data-edit-address="done" style="display: none">
                                                    <button
                                                        class="btn btn-m btn-white"
                                                        type="button"
                                                        data-edit-address-btn="cancel"
                                                    >취소</button>
                                                    <button
                                                        class="btn btn-m btn-point"
                                                        type="submit"
                                                        data-edit-address-btn="submit"
                                                    >저장</button>
                                                </div>

                                                <div class="mt10" data-edit-address="edit">
                                                    <button
                                                        data-edit-address-btn="edit"
                                                        class="btn btn-m btn-white"
                                                        type="button"
                                                    >수정</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </form>
                        <form class="form-address" action="/w/me/address/update" method="post">
                <input type="hidden" name="address_uuid" value="149ec997-c398-4c66-b57e-14be4960b47e">
                <div class="section-address">
                    <table class="table-style-head-top">
                        <thead>
                            <tr>
                                <th>배송지 2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <div class="address-info root">
                                        <div class="address-info item">
                                            <div class="address-info head">
                                                <em class="asterisk red">∗</em>
                                                <label for="receiver">받는분</label>
                                            </div>
                                            <div class="address-info body">
                                                <div class="input-text">
                                                    <input
                                                        class="readonly"
                                                        data-address="delivery_name"
                                                        name="delivery_name"
                                                        value=""
                                                        type="text"
                                                        required
                                                        autocomplete="off"
                                                        readonly
                                                        placeholder="받는분 이름을 입력해주세요."
                                                    >
                                                </div>
                                            </div>
                                        </div>

                                        <div class="address-info item">
                                            <div class="address-info head">
                                                <em class="asterisk red">∗</em>
                                                <label for="receiver">전화번호</label>
                                            </div>
                                            <div class="address-info body">
                                                <div class="input-text">
                                                    <input
                                                        class="readonly"
                                                        data-address="delivery_phone"
                                                        name="delivery_phone"
                                                        value=""
                                                        type="text"
                                                        required
                                                        autocomplete="off"
                                                        readonly
                                                        placeholder="전화번호를 입력해주세요"
                                                    >
                                                </div>
                                            </div>
                                        </div>

                                        <div class="address-info item">
                                            <div class="address-info head">
                                                <em class="asterisk red">∗</em>
                                                <label for="receiver">주소</label>
                                            </div>
                                            <div class="address-info body">
                                                        <div class="address-ui root">
            <div class="address-ui address">
                <div class="address-ui row">
                    <div class="input-text address-zip-code">
                        <input
                            data-address="delivery_zipcode"
                            type="text"
                            name="delivery_zipcode"
                            value=""
                            placeholder="우편번호"
                            required
                            autocomplete="off"
                            readonly
                                                            class="readonly"
                                                    >
                    </div>
                    <button
                                                    style="display: none"
                                                data-address="open"
                        class="btn btn-m btn-white"
                        type="button"
                    >주소 찾기</button>

                    <!-- 다음주소 layer -->
                    <div
                        class="daum-post-layer"
                        style="display:none;position:relative;width:auto;margin-top:10px;overflow:auto;-webkit-overflow-scrolling:touch;"
                    >
                        <img
                            src="//t1.daumcdn.net/localimg/localimages/07/postcode/320/close.png"
                            id="btnCloseLayer"
                            style="cursor:pointer;position:absolute;right:0;top:0;z-index:1"
                            alt="닫기 버튼"
                        >
                    </div>
                </div>

                <div class="address-ui row">
                    <div class="input-text address-address">
                        <input
                            data-address="delivery_address1"
                            type="text"
                            name="delivery_address1"
                            value=""
                            placeholder="기본 주소"
                            required
                            autocomplete="off"
                            readonly
                                                            class="readonly"
                                                    >
                    </div>
                </div>
                <div class="address-ui row">
                    <div class="input-text address-address2">
                        <input
                            data-address="delivery_address2"
                            type="text"
                            name="delivery_address2"
                            value=""
                            autocomplete="off"
                            placeholder="나머지 주소"
                                                        class="readonly"
                            readonly
                                                    >
                    </div>
                </div>

            </div>
        </div>

        <!-- iOS에서는 position:fixed 버그가 있음, 적용하는 사이트에 맞게 position:absolute 등을 이용하여 top,left값 조정 필요 -->
        <!-- <div
            id="layer"
            style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;"
        > -->
                                                        <div class="mt10" data-edit-address="done" style="display: none">
                                                    <button
                                                        class="btn btn-m btn-white"
                                                        type="button"
                                                        data-edit-address-btn="cancel"
                                                    >취소</button>
                                                    <button
                                                        class="btn btn-m btn-point"
                                                        type="submit"
                                                        data-edit-address-btn="submit"
                                                    >저장</button>
                                                </div>

                                                <div class="mt10" data-edit-address="edit">
                                                    <button
                                                        data-edit-address-btn="edit"
                                                        class="btn btn-m btn-white"
                                                        type="button"
                                                    >수정</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </form>
                        <form class="form-address" action="/w/me/address/update" method="post">
                <input type="hidden" name="address_uuid" value="4b74b41c-870a-4c02-8d93-66bd5566997e">
                <div class="section-address">
                    <table class="table-style-head-top">
                        <thead>
                            <tr>
                                <th>배송지 3</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <div class="address-info root">
                                        <div class="address-info item">
                                            <div class="address-info head">
                                                <em class="asterisk red">∗</em>
                                                <label for="receiver">받는분</label>
                                            </div>
                                            <div class="address-info body">
                                                <div class="input-text">
                                                    <input
                                                        class="readonly"
                                                        data-address="delivery_name"
                                                        name="delivery_name"
                                                        value=""
                                                        type="text"
                                                        required
                                                        autocomplete="off"
                                                        readonly
                                                        placeholder="받는분 이름을 입력해주세요."
                                                    >
                                                </div>
                                            </div>
                                        </div>

                                        <div class="address-info item">
                                            <div class="address-info head">
                                                <em class="asterisk red">∗</em>
                                                <label for="receiver">전화번호</label>
                                            </div>
                                            <div class="address-info body">
                                                <div class="input-text">
                                                    <input
                                                        class="readonly"
                                                        data-address="delivery_phone"
                                                        name="delivery_phone"
                                                        value=""
                                                        type="text"
                                                        required
                                                        autocomplete="off"
                                                        readonly
                                                        placeholder="전화번호를 입력해주세요"
                                                    >
                                                </div>
                                            </div>
                                        </div>

                                        <div class="address-info item">
                                            <div class="address-info head">
                                                <em class="asterisk red">∗</em>
                                                <label for="receiver">주소</label>
                                            </div>
                                            <div class="address-info body">
                                                        <div class="address-ui root">
            <div class="address-ui address">
                <div class="address-ui row">
                    <div class="input-text address-zip-code">
                        <input
                            data-address="delivery_zipcode"
                            type="text"
                            name="delivery_zipcode"
                            value=""
                            placeholder="우편번호"
                            required
                            autocomplete="off"
                            readonly
                                                            class="readonly"
                                                    >
                    </div>
                    <button
                                                    style="display: none"
                                                data-address="open"
                        class="btn btn-m btn-white"
                        type="button"
                    >주소 찾기</button>

                    <!-- 다음주소 layer -->
                    <div
                        class="daum-post-layer"
                        style="display:none;position:relative;width:auto;margin-top:10px;overflow:auto;-webkit-overflow-scrolling:touch;"
                    >
                        <img
                            src="//t1.daumcdn.net/localimg/localimages/07/postcode/320/close.png"
                            id="btnCloseLayer"
                            style="cursor:pointer;position:absolute;right:0;top:0;z-index:1"
                            alt="닫기 버튼"
                        >
                    </div>
                </div>

                <div class="address-ui row">
                    <div class="input-text address-address">
                        <input
                            data-address="delivery_address1"
                            type="text"
                            name="delivery_address1"
                            value=""
                            placeholder="기본 주소"
                            required
                            autocomplete="off"
                            readonly
                                                            class="readonly"
                                                    >
                    </div>
                </div>
                <div class="address-ui row">
                    <div class="input-text address-address2">
                        <input
                            data-address="delivery_address2"
                            type="text"
                            name="delivery_address2"
                            value=""
                            autocomplete="off"
                            placeholder="나머지 주소"
                                                        class="readonly"
                            readonly
                                                    >
                    </div>
                </div>

            </div>
        </div>

        <!-- iOS에서는 position:fixed 버그가 있음, 적용하는 사이트에 맞게 position:absolute 등을 이용하여 top,left값 조정 필요 -->
        <!-- <div
            id="layer"
            style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;"
        > -->
                                                        <div class="mt10" data-edit-address="done" style="display: none">
                                                    <button
                                                        class="btn btn-m btn-white"
                                                        type="button"
                                                        data-edit-address-btn="cancel"
                                                    >취소</button>
                                                    <button
                                                        class="btn btn-m btn-point"
                                                        type="submit"
                                                        data-edit-address-btn="submit"
                                                    >저장</button>
                                                </div>

                                                <div class="mt10" data-edit-address="edit">
                                                    <button
                                                        data-edit-address-btn="edit"
                                                        class="btn btn-m btn-white"
                                                        type="button"
                                                    >수정</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </form>
                    </section>
    </div>
</div>
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
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
                <script type="text/javascript" src="/resources/dist/js/idus.web.min.js?__v=1631078629"></script>
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
