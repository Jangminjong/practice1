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
        <meta
            name="naver-site-verification"
            content="a8c6e5633b597db7b48d05e4a7d247011f6794ec"/>
        <meta
            name="google-site-verification"
            content="NnaPRa-jWBb5SnBiwjEZkMqm1pFS2Y8mVdUG0nJqO4c"/>
        <title>아이디어스 | 인기 클래스</title>
        <meta name="theme-color" content="#ffffff"/>
<!-- 파비콘 이미지 설정 -->
<link rel="shortcut icon" type="image/x-icon"
	href="resources/images/title/icon_300.PNG">
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
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1.0, maximum-scale=5.0, user-scalable=0 viewport-fit=cover"/>
        <meta name="application-name" content="아이디어스"/>
        <meta name="keywords" content="핸드메이드, 수공예, 수제 먹거리"/>
        <meta property="fb:app_id" content="1410666675867984"/>
        <meta name="description" content="취향 맞춤 작품 구매부터 취미 생활까지, 아이디어스로 일상에 특별함을 잇다!"/>
        <meta property="og:title" content="핸드메이드 라이프스타일 플랫폼, 아이디어스"/>
        <meta property="og:type" content="website"/>
        <meta
            property="og:description"
            content="취향 맞춤 작품 구매부터 취미 생활까지, 아이디어스로 일상에 특별함을 잇다!"/>
        <meta property="og:url" content="http://www.idus.com/c/popular"/>
        <meta
            property="og:image"
            content="http://www.idus.com/resources/dist/images/ogimg-idus.png?ver=2.0"/>
        <link rel="canonical" href="http://www.idus.com/c/popular"/>
        <script>
            window.__client_env__ = 'production';
            window.CNN_DOMAIN = 'https://cnn.idus.com';
        </script>
        <!-- project src -->
        <link rel="icon" href="/resources/favicon_32.ico"/>
        <link
            rel="stylesheet"
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
        <link href="resources/css/content.css" rel="stylesheet"/>
        <link rel="stylesheet" href="resources/css/idus.web.min.css">
        <link rel="stylesheet" href="resources/css/vendor.client.min.css">

        <link
            rel="stylesheet"
            href="//cdn.flowplayer.com/releases/native/v2.5.14/style/flowplayer.css">
        <script src="//cdn.flowplayer.com/releases/native/v2.5.14/flowplayer.min.js"></script>
        <script src="//cdn.flowplayer.com/releases/native/v2.5.14/plugins/dash.min.js"></script>
        <script
            src="//cdn.flowplayer.com/releases/native/v2.5.14/plugins/thumbnails.min.js"></script>
        <script src="//cdn.flowplayer.com/releases/native/v2.5.14/plugins/speed.min.js"></script>
        <script src="//cdn.flowplayer.com/releases/native/v2.5.14/plugins/hls.min.js"></script>
        <script src="//cdn.flowplayer.com/releases/native/v2.5.14/plugins/dash.min.js"></script>
        <script
            src="//cdn.flowplayer.com/releases/native/v2.5.14/plugins/keyboard.min.js"></script>
        <!-- <script
        src="//cdn.flowplayer.com/releases/native/stable/plugins/cuepoints.min.js"></script>
        -->

        <!-- Kakao web SDK -->
        <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
        <!-- Signin With Apple -->
        <script
            type="text/javascript"
            src="https://appleid.cdn-apple.com/appleauth/static/jsapi/appleid/1/en_US/appleid.auth.js"></script>

        <!-- tracker vendors -->
        <script
            async="async"
            src="https://www.googletagmanager.com/gtag/js?id=AW-775263643"></script>
        <script
            type="text/javascript"
            charset="UTF-8"
            src="//t1.daumcdn.net/adfit/static/kp.js"></script>
        <script
            type="text/javascript"
            src="//static.criteo.net/js/ld/ld.js"
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
                id: 0,
                thumb: '',
                age: 0,
                gender: 'none',
                grade: 0,
                uuid: '',
                isVip: false
            });
            vuepack.createToken('[data-vue="token"]', {
                token: {},
                userId: 0
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
                        userId: '',
                        userAge: '',
                        userGrade: '',
                        userGender: 'none'
                    },
                    appData: {
                        env: 'prod',
                        appVersion: '1631255393'
                    }
                });
        </script>

        <div class="wrap">

            <jsp:include page="header_class.jsp"/>
            <div class="dimmed-background"></div>
            <script
                type="text/javascript"
                src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b8f8a6447c4b332f56469b63c9b7a010&libraries=services"></script>

            <div id="content" class="content" data-page="edu-search">
                <div class="inner-w mobile-full padded-top">
                    <div class="breadcrumb_container">
                        <nav class="breadcrumb">
                            <a href="/c">클래스<i class="idus-icon-arrow-right"></i>
                            </a>
                            <a href="/c/popular">인기 클래스</a>
                        </nav>
                    </div>
                </div>

                <div class="inner-w">
                    <div class="ui_grid ">
                        <ul
                            class="ui_grid__cols--4 ui_grid__cols--m2"
                            data-ui="scroll-paging"
                            data-param="2070988418">
                            <li class="ui_grid__item">
                                <div
                                    class="ui_card--white loadevent"
                                    data-ui="eduCard"
                                    data-target-id="5690"
                                    data-stats-artist="3776366"
                                    data-stats-category-depth1="3"
                                    data-stats-category-depth2="15"
                                    data-lazy-loaded="false"
                                    data-logging="edu_list_item">
                                    <span class="ui_card__overlay--left">
                                        <em class="icon-num" data-ranking="1">1</em>
                                    </span>

                                    <button
                                        type="button"
                                        class="ui_card__overlay btn-ico sp-icon icon-favorite "
                                        aria-label="좋아하는 클래스 추가"
                                        data-ui="stats-star"
                                        data-starred-type="edu"
                                        data-target-id="5690"
                                        data-stats-artist="3776366"
                                        data-stats-category-depth1="3"
                                        data-stats-category-depth2="15"
                                        data-state=""></button>
                                    <div class="ui_card__imgcover">
                                        <a
                                            href="/c/class/5690"
                                            target="_blank"
                                            class="ui_card__img"
                                            data-lazy-img="https://image.idus.com/image/files/ae76ba38f64d4fc598cf6d08d3d95b14_320.jpg"
                                            style="background-image: url('https://image.idus.com/image/files/ae76ba38f64d4fc598cf6d08d3d95b14_320.jpg');"></a>
                                    </div>
                                    <div class="ui_card__txtarea">
                                        <div class="ui_card__info">
                                            <a href="/c/class/5690" target="_blank" class="ui_card__label">공예</a>
                                            <a href="/c/class/5690" target="_blank" class="ui_card__title">
                                                <b>귀여운 미니테라조캔들&왁스타블렛 클래스</b>
                                            </a>
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
                                <div
                                    class="ui_card--white loadevent"
                                    data-ui="eduCard"
                                    data-target-id="4721"
                                    data-stats-artist="3390248"
                                    data-stats-category-depth1="6"
                                    data-stats-category-depth2="40"
                                    data-lazy-loaded="false"
                                    data-logging="edu_list_item">
                                    <span class="ui_card__overlay--left">
                                        <em class="icon-num" data-ranking="2">2</em>
                                    </span>

                                    <button
                                        type="button"
                                        class="ui_card__overlay btn-ico sp-icon icon-favorite "
                                        aria-label="좋아하는 클래스 추가"
                                        data-ui="stats-star"
                                        data-starred-type="edu"
                                        data-target-id="4721"
                                        data-stats-artist="3390248"
                                        data-stats-category-depth1="6"
                                        data-stats-category-depth2="40"
                                        data-state=""></button>
                                    <div class="ui_card__imgcover">
                                        <a
                                            href="/c/class/4721"
                                            target="_blank"
                                            class="ui_card__img"
                                            data-lazy-img="https://image.idus.com/image/files/97577405bca543b1845836ce221f13ae_320.png"
                                            style="background-image: url('https://image.idus.com/image/files/97577405bca543b1845836ce221f13ae_320.png');"></a>
                                    </div>
                                    <div class="ui_card__txtarea">
                                        <div class="ui_card__info">
                                            <a href="/c/class/4721" target="_blank" class="ui_card__label">뷰티</a>
                                            <a href="/c/class/4721" target="_blank" class="ui_card__title">
                                                <b>[담백한 비누 클래스] 커피수상으로 만드는 코코넛 주방비누 만들기</b>
                                            </a>
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
                                <div
                                    class="ui_card--white loadevent"
                                    data-ui="eduCard"
                                    data-target-id="3590"
                                    data-stats-artist="521226"
                                    data-stats-category-depth1="4"
                                    data-stats-category-depth2="28"
                                    data-lazy-loaded="false"
                                    data-logging="edu_list_item">
                                    <span class="ui_card__overlay--left">
                                        <em class="icon-num" data-ranking="3">3</em>
                                    </span>

                                    <button
                                        type="button"
                                        class="ui_card__overlay btn-ico sp-icon icon-favorite "
                                        aria-label="좋아하는 클래스 추가"
                                        data-ui="stats-star"
                                        data-starred-type="edu"
                                        data-target-id="3590"
                                        data-stats-artist="521226"
                                        data-stats-category-depth1="4"
                                        data-stats-category-depth2="28"
                                        data-state=""></button>
                                    <div class="ui_card__imgcover">
                                        <a
                                            href="/c/class/3590"
                                            target="_blank"
                                            class="ui_card__img"
                                            data-lazy-img="https://image.idus.com/image/files/9de8cf70b68a448b90200c6df3abf320_320.jpg"
                                            style="background-image: url('https://image.idus.com/image/files/9de8cf70b68a448b90200c6df3abf320_320.jpg');"></a>
                                    </div>
                                    <div class="ui_card__txtarea">
                                        <div class="ui_card__info">
                                            <a href="/c/class/3590" target="_blank" class="ui_card__label">미술</a>
                                            <a href="/c/class/3590" target="_blank" class="ui_card__title">
                                                <b>[서울 홍대] 원하는 그림이 다 되는 '그림다방'</b>
                                            </a>
                                        </div>
                                        <div class="ui_card__rating">
                                            <div class="ui_card__vcenter">
                                                <div class="ui_rating" data-ui="rating" data-value="5">
                                                    <i class="idus-icon-star-fill"></i>
                                                    <i class="idus-icon-star-fill"></i>
                                                    <i class="idus-icon-star-fill"></i>
                                                    <i class="idus-icon-star-fill"></i>
                                                    <i class="idus-icon-star-fill"></i>
                                                    <em class="ui_rating__label">(7)</em>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="ui_grid__item">
                                <div
                                    class="ui_card--white loadevent"
                                    data-ui="eduCard"
                                    data-target-id="6097"
                                    data-stats-artist="4360066"
                                    data-stats-category-depth1="3"
                                    data-stats-category-depth2="15"
                                    data-lazy-loaded="false"
                                    data-logging="edu_list_item">
                                    <span class="ui_card__overlay--left">
                                        <em class="icon-num" data-ranking="4">4</em>
                                    </span>

                                    <button
                                        type="button"
                                        class="ui_card__overlay btn-ico sp-icon icon-favorite "
                                        aria-label="좋아하는 클래스 추가"
                                        data-ui="stats-star"
                                        data-starred-type="edu"
                                        data-target-id="6097"
                                        data-stats-artist="4360066"
                                        data-stats-category-depth1="3"
                                        data-stats-category-depth2="15"
                                        data-state=""></button>
                                    <div class="ui_card__imgcover">
                                        <a
                                            href="/c/class/6097"
                                            target="_blank"
                                            class="ui_card__img"
                                            data-lazy-img="https://image.idus.com/image/files/6f1b6b7291e046f489a76ff268ceb015_320.png"
                                            style="background-image: url('https://image.idus.com/image/files/6f1b6b7291e046f489a76ff268ceb015_320.png');"></a>
                                    </div>
                                    <div class="ui_card__txtarea">
                                        <div class="ui_card__info">
                                            <a href="/c/class/6097" target="_blank" class="ui_card__label">공예</a>
                                            <a href="/c/class/6097" target="_blank" class="ui_card__title">
                                                <b>[추석선물] 향기 가득한 추석선물세트 추석한상차림 캔들클래스</b>
                                            </a>
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
                                <div
                                    class="ui_card--white loadevent"
                                    data-ui="eduCard"
                                    data-target-id="5739"
                                    data-stats-artist="7559077"
                                    data-stats-category-depth1="4"
                                    data-stats-category-depth2="32"
                                    data-lazy-loaded="false"
                                    data-logging="edu_list_item">
                                    <span class="ui_card__overlay--left">
                                        <em class="icon-num" data-ranking="5">5</em>
                                    </span>

                                    <button
                                        type="button"
                                        class="ui_card__overlay btn-ico sp-icon icon-favorite "
                                        aria-label="좋아하는 클래스 추가"
                                        data-ui="stats-star"
                                        data-starred-type="edu"
                                        data-target-id="5739"
                                        data-stats-artist="7559077"
                                        data-stats-category-depth1="4"
                                        data-stats-category-depth2="32"
                                        data-state=""></button>
                                    <div class="ui_card__imgcover">
                                        <a
                                            href="/c/class/5739"
                                            target="_blank"
                                            class="ui_card__img"
                                            data-lazy-img="https://image.idus.com/image/files/1ba9b42d543e4c7a8bfdfcbec761aa69_320.jpg"
                                            style="background-image: url('https://image.idus.com/image/files/1ba9b42d543e4c7a8bfdfcbec761aa69_320.jpg');"></a>
                                    </div>
                                    <div class="ui_card__txtarea">
                                        <div class="ui_card__info">
                                            <a href="/c/class/5739" target="_blank" class="ui_card__label">미술</a>
                                            <a href="/c/class/5739" target="_blank" class="ui_card__title">
                                                <b>커스텀 손수건 프린팅!실크스크린 원데이클래스</b>
                                            </a>
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
                                <div
                                    class="ui_card--white loadevent"
                                    data-ui="eduCard"
                                    data-target-id="5486"
                                    data-stats-artist="4143087"
                                    data-stats-category-depth1="2"
                                    data-stats-category-depth2="10"
                                    data-lazy-loaded="false"
                                    data-logging="edu_list_item">
                                    <span class="ui_card__overlay--left">
                                        <em class="icon-num" data-ranking="6">6</em>
                                    </span>

                                    <button
                                        type="button"
                                        class="ui_card__overlay btn-ico sp-icon icon-favorite "
                                        aria-label="좋아하는 클래스 추가"
                                        data-ui="stats-star"
                                        data-starred-type="edu"
                                        data-target-id="5486"
                                        data-stats-artist="4143087"
                                        data-stats-category-depth1="2"
                                        data-stats-category-depth2="10"
                                        data-state=""></button>
                                    <div class="ui_card__imgcover">
                                        <a
                                            href="/c/class/5486"
                                            target="_blank"
                                            class="ui_card__img"
                                            data-lazy-img="https://image.idus.com/image/files/253cc364bec0491eb736f6fdded38766_320.jpg"
                                            style="background-image: url('https://image.idus.com/image/files/253cc364bec0491eb736f6fdded38766_320.jpg');"></a>
                                    </div>
                                    <div class="ui_card__txtarea">
                                        <div class="ui_card__info">
                                            <a href="/c/class/5486" target="_blank" class="ui_card__label">요리</a>
                                            <a href="/c/class/5486" target="_blank" class="ui_card__title">
                                                <b>[시간협의필수] JMT! 달콤꾸덕한 아메리칸 쿠키 만들기</b>
                                            </a>
                                        </div>
                                        <div class="ui_card__rating">
                                            <div class="ui_card__vcenter">
                                                <div class="ui_rating" data-ui="rating" data-value="5">
                                                    <i class="idus-icon-star-fill"></i>
                                                    <i class="idus-icon-star-fill"></i>
                                                    <i class="idus-icon-star-fill"></i>
                                                    <i class="idus-icon-star-fill"></i>
                                                    <i class="idus-icon-star-fill"></i>
                                                    <em class="ui_rating__label">(3)</em>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="ui_grid__item">
                                <div
                                    class="ui_card--white loadevent"
                                    data-ui="eduCard"
                                    data-target-id="1490"
                                    data-stats-artist="425917"
                                    data-stats-category-depth1="6"
                                    data-stats-category-depth2="40"
                                    data-lazy-loaded="false"
                                    data-logging="edu_list_item">
                                    <span class="ui_card__overlay--left">
                                        <em class="icon-num" data-ranking="7">7</em>
                                    </span>

                                    <button
                                        type="button"
                                        class="ui_card__overlay btn-ico sp-icon icon-favorite "
                                        aria-label="좋아하는 클래스 추가"
                                        data-ui="stats-star"
                                        data-starred-type="edu"
                                        data-target-id="1490"
                                        data-stats-artist="425917"
                                        data-stats-category-depth1="6"
                                        data-stats-category-depth2="40"
                                        data-state=""></button>
                                    <div class="ui_card__imgcover">
                                        <a
                                            href="/c/class/1490"
                                            target="_blank"
                                            class="ui_card__img"
                                            data-lazy-img="https://image.idus.com/image/files/6f01d1aaf5da4fc5a0998214aef74024_320.png"
                                            style="background-image: url('https://image.idus.com/image/files/6f01d1aaf5da4fc5a0998214aef74024_320.png');"></a>
                                    </div>
                                    <div class="ui_card__txtarea">
                                        <div class="ui_card__info">
                                            <a href="/c/class/1490" target="_blank" class="ui_card__label">뷰티</a>
                                            <a href="/c/class/1490" target="_blank" class="ui_card__title">
                                                <b>직접 cp비누를 만들며 힐링타임 :) 나만의 디자인비누 만들기</b>
                                            </a>
                                        </div>
                                        <div class="ui_card__rating">
                                            <div class="ui_card__vcenter">
                                                <div class="ui_rating" data-ui="rating" data-value="5">
                                                    <i class="idus-icon-star-fill"></i>
                                                    <i class="idus-icon-star-fill"></i>
                                                    <i class="idus-icon-star-fill"></i>
                                                    <i class="idus-icon-star-fill"></i>
                                                    <i class="idus-icon-star-fill"></i>
                                                    <em class="ui_rating__label">(1)</em>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="ui_grid__item">
                                <div
                                    class="ui_card--white loadevent"
                                    data-ui="eduCard"
                                    data-target-id="4264"
                                    data-stats-artist="5726190"
                                    data-stats-category-depth1="3"
                                    data-stats-category-depth2="18"
                                    data-lazy-loaded="false"
                                    data-logging="edu_list_item">
                                    <span class="ui_card__overlay--left">
                                        <em class="icon-num" data-ranking="8">8</em>
                                    </span>

                                    <button
                                        type="button"
                                        class="ui_card__overlay btn-ico sp-icon icon-favorite "
                                        aria-label="좋아하는 클래스 추가"
                                        data-ui="stats-star"
                                        data-starred-type="edu"
                                        data-target-id="4264"
                                        data-stats-artist="5726190"
                                        data-stats-category-depth1="3"
                                        data-stats-category-depth2="18"
                                        data-state=""></button>
                                    <div class="ui_card__imgcover">
                                        <a
                                            href="/c/class/4264"
                                            target="_blank"
                                            class="ui_card__img"
                                            data-lazy-img="https://image.idus.com/image/files/5bd8584347c24a86a341203da4f4a63a_320.png"
                                            style="background-image: url('https://image.idus.com/image/files/5bd8584347c24a86a341203da4f4a63a_320.png');"></a>
                                    </div>
                                    <div class="ui_card__txtarea">
                                        <div class="ui_card__info">
                                            <a href="/c/class/4264" target="_blank" class="ui_card__label">공예</a>
                                            <a href="/c/class/4264" target="_blank" class="ui_card__title">
                                                <b>하비라이크_간단한 재봉으로 왕골 라탄 st 가방 만들기
                                                </b>
                                            </a>
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
                </div>
            </div>

            <script>
                (function () {
                    var Logger = vuepack.externals.IdusLog.Logger;
                    var PageName = vuepack.externals.IdusLog.PageName;
                    var LogLabel = vuepack.externals.IdusLog.LogLabel;
                    Logger.sendPageView(PageName.ClassListPopular, {logLabel: LogLabel.EduOff})
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
        <script
            type="text/javascript"
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