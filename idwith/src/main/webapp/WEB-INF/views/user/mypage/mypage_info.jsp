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
<title>아이디어스 | 회원 정보 관리</title>

<link rel="stylesheet" href="resources/css/mypage.css" />
<link rel="stylesheet" href="resources/css/idus.web.min.css" />
<link rel="stylesheet" href="resources/css/vendor.client.min.css" />

<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="resources/js/mypage.js"></script>

<!-- 파비콘 이미지 설정 -->
<link rel="shortcut icon" type="image/x-icon"
	href="resources/images/title/icon_300.PNG">

<link rel="stylesheet"
	href="//cdn.flowplayer.com/releases/native/v2.5.14/style/flowplayer.css">
</head>
<body>
        <div data-vue="token"></div>
        <div data-vue="globalUser"></div>
        <div data-vue="resizeHandler"></div>
        <div class="wrap">
<jsp:include page="../header_goods.jsp"/>
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
								<span>${user_grade} &gt;</span>
							</a> <strong data-profile="name">${user_name}</strong>
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
                                        name="user_name"
                                        value="${user_name}"
                                        required
                                    >
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>이메일</th>
                            <td data-email="root">
                                <span id="new_email" data-email="origin-email">${user_id }</span>
                                <button
                                    data-email="change-email"
                                    class="btn btn-m btn-white" id="email_update"
                                    type="button"
                                >변경하기</button>

                                <div data-email="new-email-block" class="email-update" style="display:none">
                                    <p class="mt10">변경할 이메일 주소를 입력해주세요. (예.abcd@idus.me)</p>
                                    <div class="mt5">
                                        <div class="input-text size-m">
                                            <input
                                                type="email"
                                                data-email="new-email"
                                                name="new_email"
                                                class="new-email"
                                            >
                                        </div>
                                        <button
                                            class="btn btn-m btn-white new-email-btn"
                                            data-email="send-email"
                                            type="button" id="${user_id}" onclick="myEmailUpdate(this.id)">인증메일 발송</button>
                                    </div>
                                </div>

                                <div data-email="send-email-msg" class="sent-email" style="display:none">
                                    <span data-email="insert-new-email" class="c-sub">
                                    </span>
                                    로 인증메일을 발송하였습니다. <br>
                                    이메일에 포함된 이메일 주소 변경 완료 링크를 눌러 주세요.
                                </div>
                                <label id="new_email-error" class="form-error form-error-block" for="new_email" style="display:none">기존 이메일과 같습니다.</label>
                            </td>
                        </tr>
                        <tr>
                            <th>전화</th>
                            <td>
                                <span id="cell_phone" data-auth="current-phone">${user_phone }</span>
                                <button
                                    data-phone="change-phone"
                                    class="btn btn-m btn-white" id="phone_update"
                                    type="button"
                                >변경하기</button>
                                <p class="f-comment mt10">주문, 배송시 등록된 번호로 SMS를 발송해 드립니다.</p>

                                <div data-auth="root" class="phone-update" style="display:none">
                                    <div class="mt10">
                                        <p>변경할 전화번호를 입력해주세요.</p>
                                        <div class="mt5">
                                            <div class="input-text size-m">
                                                <input
                                                    type="tel"
                                                    name="cell_phone"
                                                    data-auth="cell_phone"
                                                    placeholder="010-1234-5678"
                                                    id="input-text"
                                                    class="cell_phone"
                                                >
                                            </div>
                                            <button type="button" class="btn btn-m btn-point btn-disabled" id="auth_code_btn" data-auth="request_btn" onclick="sendSMS('sendSms')">
                                                인증번호 요청
                                            </button>
                                        </div>
                                    </div>
                                    <div class="mt10">
                                        <div id="hiddenDiv" data-auth="auth_code_block" style="display: none">
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
                                                        id="input_auth_code"
                                                    >
                                                    <div data-auth="time_limit" class="time-limit" id="timer"></div>
                                                </div>
                                                <input type="hidden" name="randomPIN" id="randomPIN" value="">
                                                <button type="button" class="btn btn-m btn-white btn-disabled auth_check" id="${user_id }" data-auth="auth_code_submit" onclick="updateCheckPIN(this.id)">확인</button>
                                            </div>
                                            <span id="failPIN" class="form-error" style="display:none">인증을 실패하였습니다.</span>
                                        </div>
                                    </div>

                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>성별</th>
                            <td>
                                                                <div class="radiogroup">
                                    <!-- <label class="radio_label">
                                        <input class="idus-icon-radio" type="radio" name="gender" value="female" checked>
                                        <span>여성</span>
                                    </label>
                                    <label class="radio_label">
                                        <input class="idus-icon-radio" type="radio" name="gender" value="male" >
                                        <span>남성</span>
                                    </label> -->
                                    
									<input type="radio" name="gender" value="female" checked>
										<span>여성</span>
									<input type="radio" name="gender" value="male" >
										<span>남성</span>
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
                                        value="${user_birth}"
                                        class="filldisable"
                                        id="user_birth"
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
                        type="submit" id="${user_id }"
                        class="btn btn-m btn-point" onclick="updateUserInfo(this.id)"
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
<jsp:include page="../footer.jsp"/>

        </div>
        <!-- div WRAP -->
    </body>
</html>
