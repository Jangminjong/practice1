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
        <title>아이디어스 | 회원 정보 관리</title>
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
        <meta property="og:url" content="http://www.idus.com/w/me/personal"/>
        <meta property="og:image" content="http://www.idus.com/resources/dist/images/ogimg-idus.png?ver=2.0" />
        <link rel="canonical" href="http://www.idus.com/w/me/personal"/>
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
    </head>
    <body>
        <div data-vue="token"></div>
        <div data-vue="globalUser"></div>
        <div data-vue="resizeHandler"></div>
        <div class="wrap">
<jsp:include page="header_goods.jsp"/>
<div class="dimmed-background"></div><!-- 회원정보관리 -->
<div id="content" class="content" data-page="mypageinfo">
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
							</b> <a href="mypage_level.do" class="">회원 등급</a>
							<a href="mypage_info.do" class="">회원 정보 관리</a> 
								<a href="mypage_address.do" class="">주소(배송지) 관리</a>
								<a href="mypage_address.do" class="">주소(배송지) 관리</a>
						</nav>
					</div>
				</aside>
        <section>
            <form class="form-personal" action="/w/me/personal" method="post">
                <div class="title-style no-mt clf">
                    <a href="#" class="txt fl">회원 정보 관리</a>
                </div>

                <table class="table-style-head-left">
                    <tbody>
                        <tr>
                            <th>이름</th>
                            <td>
                                <div class="input-text size-m">
                                    <input
                                        type="text"
                                        name="username"
                                        value="이소희🎗"
                                        required
                                    >
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>이메일</th>
                            <td data-email="root">
                                <span id="new_email" data-email="origin-email">user@gmail.com</span>
                                <button
                                    data-email="change-email"
                                    class="btn btn-m btn-white"
                                    type="button"
                                >변경하기</button>

                                <div data-email="new-email-block" style="display:none">
                                    <p class="mt10">변경할 이메일 주소를 입력해주세요. (예.abcd@idus.me)</p>
                                    <div class="mt5">
                                        <div class="input-text size-m">
                                            <input
                                                type="email"
                                                data-email="new-email"
                                                name="new_email"
                                            >
                                        </div>
                                        <button
                                            class="btn btn-m btn-white"
                                            data-email="send-email"
                                            type="button">인증메일 발송</button>
                                    </div>
                                </div>

                                <div data-email="send-email-msg" class="sent-email" style="display:none">
                                    <span data-email="insert-new-email" class="c-sub">
                                    </span>
                                    로 인증메일을 발송하였습니다. <br>
                                    이메일에 포함된 이메일 주소 변경 완료 링크를 눌러 주세요.
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>전화</th>
                            <td>
                                <span id="cell_phone" data-auth="current-phone">010-0000-0000</span>
                                <button
                                    data-phone="change-phone"
                                    class="btn btn-m btn-white"
                                    type="button"
                                >변경하기</button>
                                <p class="f-comment mt10">주문, 배송시 등록된 번호로 SMS를 발송해 드립니다.</p>

                                <div data-auth="root" style="display:none">
                                    <div class="mt10">
                                        <p>변경할 전화번호를 입력해주세요.</p>
                                        <div class="mt5">
                                            <div class="input-text size-m">
                                                <input
                                                    type="tel"
                                                    name="cell_phone"
                                                    data-auth="cell_phone"
                                                    placeholder="010-1234-5678"
                                                >
                                            </div>
                                            <button type="button" class="btn btn-m btn-point btn-disabled" data-auth="request_btn">
                                                인증번호 요청
                                            </button>
                                        </div>
                                    </div>
                                    <div class="mt10">
                                        <div class="hidden" data-auth="auth_code_block">
                                            <div class="ui-input-btn-combo type-static">
                                                <div class="input-text size-m">
                                                    <input
                                                        type="text"
                                                        name="auth_code"
                                                        data-input-style="none"
                                                        data-auth="auth_code"
                                                        maxlength="4"
                                                        placeholder="인증코드를 입력해주세요."
                                                        class="filldisable"
                                                    >
                                                    <div data-auth="time_limit" class="time-limit"></div>
                                                </div>
                                                <button type="button" class="btn btn-m btn-white btn-disabled" data-auth="auth_code_submit">확인</button>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>성별</th>
                            <td>
                                                                <div class="radiogroup">
                                    <label class="radio_label">
                                        <input class="idus-icon-radio" type="radio" name="gender" value="female" checked>
                                        <span>여성</span>
                                    </label>
                                    <label class="radio_label">
                                        <input class="idus-icon-radio" type="radio" name="gender" value="male" >
                                        <span>남성</span>
                                    </label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>생일</th>
                            <td>
                                <div class="input-text size-s">
                                    <input
                                        type="text"
                                        name="birth"
                                        placeholder="2000-01-01"
                                        value="1996-04-01"
                                        class="filldisable"
                                    >
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>알림설정</th>
                            <td>
                                할인쿠폰/이벤트/감동적인 뉴스레터를 받아보시겠습니까?
                                <div class="mt10">
                                                                        <div class="radiogroup">
                                        <label>
                                            <input class="bp" type="checkbox" name="sms_agreement" >
                                            SMS
                                        </label>

                                        <label>
                                            <input class="bp" type="checkbox" name="email_agreement" >
                                            이메일
                                        </label>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>

                <div class="ta-r mt10">
                    <a href="/w/me/leave" class="btn btn-s btn-white">회원탈퇴</a>
                </div>

                <div class="form-submit ta-c">
                    <button
                        type="submit"
                        class="btn btn-m btn-point"
                    >회원 정보 수정하기</button>
                </div>
            </form>
        </section>
    </div>
</div>
<div data-vue="ToastPopup"></div>
<div data-vue="BottomSheet"></div>
<div data-vue="WideBottomSheet"></div>
<div data-vue="FooterModal"></div>
<div data-vue="InactiveToast"></div>
<a href="#header" class="to-top" data-ui="scroll-to-top" data-page="">
    <img src="/resources/dist/images/go-to-top-image.png" alt="go to top">
</a>
<jsp:include page="footer.jsp"/>

        </div>
        <!-- div WRAP -->
    </body>
</html>
