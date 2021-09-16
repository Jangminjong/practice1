<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디어스 | 아이디 비밀번호 찾기</title>

<link rel="stylesheet" href="resources/css/account.css" />
<link rel="stylesheet" href="resources/css/vendor.client.min.css" />
<link rel="stylesheet" href="resources/css/idus.web.min.css" />

<!-- 파비콘 이미지 설정 -->
<link rel="shortcut icon" type="image/x-icon"
	href="resources/images/title/icon_300.PNG">
</head>
<body>
	<div data-v-5c4ca915=""></div>
	<div data-v-3d910efc=""></div>
	<!---->
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
                vuepack.externals.IdusLog.Logger.setIdentityId('ap-northeast-2:5bcd1171-fdc1-4d62-b188-bc0ea9146525');
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
                appVersion: '1631599100'
            }
        });
        </script>

	<div class="wrap-login">
		<div class="login wrap">
			<div class="login section root">
				<div class="login logo">
					<h1>
						<a href="index.do"> <img src="resources/images/header/logo.svg"
							alt="IDUS, Unique Lifestyle Guide">
						</a>
					</h1>
				</div>

				<section class="login section">
					<h2 class="login title">계정 확인</h2>
					<div class="login img-bg"
						style="background-image: url('https://image.idus.com/image/files/d247655ca3e545e89a48a43aa9318b3f.jpg');"></div>
					<p class="login para">
						<strong>010-9159-2149</strong>로 <br>회원가입한 계정을 찾았습니다.
					</p>
					<div class="login input-group">
						<a class="ui_btn--red" href="account_step1.do">이 계정은 내꺼에요.</a> <a
							class="ui_btn--redline" href="/w/reauth/request/idus">처음 보는
							계정이에요.</a>
					</div>
				</section>
			</div>
		</div>

		<script>
    (function () {
        var Logger = vuepack.externals.IdusLog.Logger;
        var PageName = vuepack.externals.IdusLog.PageName;
        var LogLabel = vuepack.externals.IdusLog.LogLabel;
        Logger.sendPageView(PageName.ReauthCheckUser, {
            logLabel: LogLabel.FindIdPw
        });
    })();
</script>
	</div>
	<!-- div WRAP -->
	<script type="text/javascript"
		src="/resources/dist/js/idus.web.min.js?__v=1631599100"></script>
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


	<svg xmlns="http://www.w3.org/2000/svg"
		xmlns:xlink="http://www.w3.org/1999/xlink" id="fp-icons"
		style="display: none;">
		<defs>
		<path id="FS" d="M1 9V1h12"></path>
		<path id="fp-play-button"
			d="M19.201 4.78l18.546 30.001a2.001 2.001 0 0 1-1.707 3.052H-1.046a2 2 0 0 1-1.701-3.052l18.545-30a2 2 0 0 1 3.403 0"
			transform="rotate(90 20 25.4)"></path>
		<g id="fp-pause-lines">
		<rect class="fp-rect" x="8.5" y="5" width="11" height="36"></rect>
		<rect class="fp-rect" x="26.5" y="5" width="11" height="36"></rect></g>
		<path id="fp-speaker"
			d="M39.389,13.769 L22.235,28.606 L6,28.606 L6,47.699 L21.989,47.699 L39.389,62.75 L39.389,13.769z"></path></defs>
		<g id="fp-play" class="fp-fill">
		<use xlink:href="#fp-play-button"></use></g>
		<g id="fp-play-circle" class="fp-fill">
		<circle cx="22.9" cy="22.9" r="23.5" class="fp-thin-stroke"
			fill="none"></circle>
		<use xlink:href="#fp-play-button"
			transform="translate(11.5, 9.8) scale(.57)"></use></g>
		<g id="fp-play-stroke" fill="none" class="fp-thin-stroke">
		<use xlink:href="#fp-play-button"></use></g>
		<g id="fp-pause" class="fp-fill">
		<use xlink:href="#fp-pause-lines"></use></g>
		<g id="fp-pause-stroke" fill="none" class="fp-thin-stroke">
		<use xlink:href="#fp-pause-lines"></use></g>
		<g id="fp-volume" class="fp-fill">
		<path class="fp-rect" d="M0 15h30v24H0z"></path>
		<path d="M1 27L31 0v54z"></path></g>
		<g id="fp-fs" fill="none" class="fp-thin-stroke">
		<use xlink:href="#FS"></use>
		<use xlink:href="#FS" transform="matrix(1 0 0 -1 0 26)"></use>
		<use xlink:href="#FS" transform="matrix(-1 0 0 1 36 0)"></use>
		<use xlink:href="#FS" transform="rotate(180 18 13)"></use></g>
		<g id="fp-exit" fill="none" class="fp-thin-stroke">
		<use xlink:href="#FS" transform="translate(22 17)"></use>
		<use xlink:href="#FS" transform="matrix(-1 0 0 1 13 17)"></use>
		<use xlink:href="#FS" transform="rotate(180 6.5 4.5)"></use>
		<use xlink:href="#FS" transform="matrix(1 0 0 -1 22 9)"></use></g>
		<g id="fp-facebook">
		<path fill="#4469B0"
			d="M448 56.7v398.5c0 13.7-11.1 24.7-24.7 24.7H309.1V306.5h58.2l8.7-67.6h-67v-43.2c0-19.6 5.4-32.9 33.5-32.9h35.8v-60.5c-6.2-.8-27.4-2.7-52.2-2.7-51.6 0-87 31.5-87 89.4v49.9h-58.4v67.6h58.4V480H24.7C11.1 480 0 468.9 0 455.3V56.7C0 43.1 11.1 32 24.7 32h398.5c13.7 0 24.8 11.1 24.8 24.7z"></path></g>
		<g id="fp-link">
		<path fill="currentColor"
			d="M301.148 394.702l-79.2 79.19c-50.778 50.799-133.037 50.824-183.84 0-50.799-50.778-50.824-133.037 0-183.84l79.19-79.2a132.833 132.833 0 0 1 3.532-3.403c7.55-7.005 19.795-2.004 20.208 8.286.193 4.807.598 9.607 1.216 14.384.481 3.717-.746 7.447-3.397 10.096-16.48 16.469-75.142 75.128-75.3 75.286-36.738 36.759-36.731 96.188 0 132.94 36.759 36.738 96.188 36.731 132.94 0l79.2-79.2.36-.36c36.301-36.672 36.14-96.07-.37-132.58-8.214-8.214-17.577-14.58-27.585-19.109-4.566-2.066-7.426-6.667-7.134-11.67a62.197 62.197 0 0 1 2.826-15.259c2.103-6.601 9.531-9.961 15.919-7.28 15.073 6.324 29.187 15.62 41.435 27.868 50.688 50.689 50.679 133.17 0 183.851zm-90.296-93.554c12.248 12.248 26.362 21.544 41.435 27.868 6.388 2.68 13.816-.68 15.919-7.28a62.197 62.197 0 0 0 2.826-15.259c.292-5.003-2.569-9.604-7.134-11.67-10.008-4.528-19.371-10.894-27.585-19.109-36.51-36.51-36.671-95.908-.37-132.58l.36-.36 79.2-79.2c36.752-36.731 96.181-36.738 132.94 0 36.731 36.752 36.738 96.181 0 132.94-.157.157-58.819 58.817-75.3 75.286-2.651 2.65-3.878 6.379-3.397 10.096a163.156 163.156 0 0 1 1.216 14.384c.413 10.291 12.659 15.291 20.208 8.286a131.324 131.324 0 0 0 3.532-3.403l79.19-79.2c50.824-50.803 50.799-133.062 0-183.84-50.802-50.824-133.062-50.799-183.84 0l-79.2 79.19c-50.679 50.682-50.688 133.163 0 183.851z"></path></g>
		<g id="fp-share" class="fp-fill">
		<path
			d="M448 416c0 53.019-42.981 96-96 96s-96-42.981-96-96c0-12.965 2.576-25.327 7.235-36.61l-95.45-59.657C150.199 339.525 124.558 352 96 352c-53.019 0-96-42.981-96-96s42.981-96 96-96c28.558 0 54.199 12.475 71.784 32.267l95.45-59.657C258.576 121.327 256 108.965 256 96c0-53.019 42.981-96 96-96s96 42.981 96 96-42.981 96-96 96c-28.558 0-54.199-12.475-71.784-32.267l-95.451 59.656c9.661 23.396 9.641 49.87 0 73.22l95.451 59.656C297.801 332.475 323.442 320 352 320c53.019 0 96 42.981 96 96zM352 32c-35.29 0-64 28.71-64 64s28.71 64 64 64 64-28.71 64-64-28.71-64-64-64M96 192c-35.29 0-64 28.71-64 64s28.71 64 64 64 64-28.71 64-64-28.71-64-64-64m256 160c-35.29 0-64 28.71-64 64s28.71 64 64 64 64-28.71 64-64-28.71-64-64-64"></path></g>
		<g id="fp-twitter">
		<path fill="#29A3EF"
			d="M459.37 151.716c.325 4.548.325 9.097.325 13.645 0 138.72-105.583 298.558-298.558 298.558-59.452 0-114.68-17.219-161.137-47.106 8.447.974 16.568 1.299 25.34 1.299 49.055 0 94.213-16.568 130.274-44.832-46.132-.975-84.792-31.188-98.112-72.772 6.498.974 12.995 1.624 19.818 1.624 9.421 0 18.843-1.3 27.614-3.573-48.081-9.747-84.143-51.98-84.143-102.985v-1.299c13.969 7.797 30.214 12.67 47.431 13.319-28.264-18.843-46.781-51.005-46.781-87.391 0-19.492 5.197-37.36 14.294-52.954 51.655 63.675 129.3 105.258 216.365 109.807-1.624-7.797-2.599-15.918-2.599-24.04 0-57.828 46.782-104.934 104.934-104.934 30.213 0 57.502 12.67 76.67 33.137 23.715-4.548 46.456-13.32 66.599-25.34-7.798 24.366-24.366 44.833-46.132 57.827 21.117-2.273 41.584-8.122 60.426-16.243-14.292 20.791-32.161 39.308-52.628 54.253z"></path></g>
		<g id="fp-airplay">
		<path d="M116.364 477.091h279.272L256 337.455z"></path>
		<path
			d="M465.455 34.909H46.545C20.945 34.909 0 55.855 0 81.455v279.273c0 25.6 20.945 46.545 46.545 46.545h93.091v-46.545H46.545V81.455h418.909v279.273h-93.091v46.545h93.091c25.6 0 46.545-20.945 46.545-46.545V81.455c.001-25.6-20.944-46.546-46.544-46.546z"></path></g>
		<g id="fp-skip-next" fill="#fff" fill-rule="evenodd">
		<path
			d="M33.23 22.696L3.56 41.223A2 2 0 0 1 .5 39.527V2.473A2 2 0 0 1 3.56.776l29.67 18.527a2 2 0 0 1 0 3.393z"></path>
		<rect x="33" y=".5" width="7" height="41" rx="2"></rect></g>
		<g id="fp-skip-prev">
		<use xlink:href="#fp-skip-next" transform="rotate(180 21 21)"></use></g>
		<g id="fp-close" class="fp-float-player-icons">
		<path d="M 48.651772,50.269646 69.395223,25.971024"></path>
		<path d="M 69.395223,50.269646 48.651772,25.971024"></path></g>
		<g id="fp-unmute" class="fp-float-player-icons">
		<use xlink:href="#fp-speaker"></use>
		<path fill="none"
			d="M48,27.6a19.5,19.5 0 0 1 0,21.4M55.1,20.5a30,30 0 0 1 0,35.6M61.6,14a38.8,38.8 0 0 1 0,48.6"></path></g>
		<g id="fp-mute" class="fp-float-player-icons">
		<use xlink:href="#fp-speaker"></use>
		<use xlink:href="#fp-close"></use></g></svg>
	<div id="criteo-tags-div" style="display: none;"></div>
</body>
</html>