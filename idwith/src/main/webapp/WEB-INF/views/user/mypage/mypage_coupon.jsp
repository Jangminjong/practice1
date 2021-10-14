<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


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
<title>아이디위드 | 쿠폰함</title>
<meta name="theme-color" content="#ffffff" />
<link rel="apple-touch-icon" sizes="384x384"
	href="/resources/dist/images/app-icon/icon_300.png">


<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=5.0, user-scalable=0 viewport-fit=cover" />
<meta name="application-name" content="아이디위드" />
<meta name="keywords" content="핸드메이드, 수공예, 수제 먹거리" />
<meta property="fb:app_id" content="1410666675867984" />
<meta name="description"
	content="취향 맞춤 작품 구매부터 취미 생활까지, 아이디위드로 일상에 특별함을 잇다!" />
<meta property="og:title" content="핸드메이드 라이프스타일 플랫폼, 아이디위드" />
<meta property="og:type" content="website" />
<meta property="og:description"
	content="취향 맞춤 작품 구매부터 취미 생활까지, 아이디위드로 일상에 특별함을 잇다!" />
<meta property="og:url" content="http://www.idus.com/w/me/coupon" />
<meta property="og:image"
	content="http://www.idus.com/resources/dist/images/ogimg-idus.png?ver=2.0" />
<link rel="canonical" href="http://www.idus.com/w/me/coupon" />

<!-- project src -->
<link rel="icon" href="/resources/favicon_32.ico" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


<link rel="stylesheet" href="resources/css/mypage.css" />
<link rel="stylesheet" href="resources/css/idus.web.min.css" />
<link rel="stylesheet" href="resources/css/vendor.client.min.css" />
<script src="resourcesjs/vendor.client.min.js"></script>
<script src="resourcesjs/vuepack.js"></script>

</head>
<body>
	<div data-vue="token"></div>
	<div data-vue="globalUser"></div>
	<div data-vue="resizeHandler"></div>

	<div class="wrap">

		<jsp:include page="../header_goods.jsp"/>
		<div class="dimmed-background"></div>
		<!-- 회원정보관리 -->
		<div id="content" class="content" data-page="couponlist">
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
							</a> <strong data-profile="name">${user_name }</strong>
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
								href="mypage_goods_order_return.do" class="">취소/환불내역</a> <b> <span>알림
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


				<section>
					<div class="title-style no-mt clf">
						<a href="#" class="txt fl">쿠폰함</a>
					</div>

					<div data-vue="showroom-coupon-btn"></div>
					<div data-v-282f9cbe="" class="coupon-list">
					<c:forEach var="coupon" items="${couponList }">
						<div data-v-6ec8e2fd="" data-v-3862357e="" data-v-282f9cbe=""
							class="coupon">
							<div data-v-6ec8e2fd="" class="coupon__dotted-line top"></div>
							<div data-v-6ec8e2fd="" class="coupon__dotted-line bottom"></div>
							<div data-v-3862357e="" data-v-6ec8e2fd=""
								class="coupon-contents">
								<!---->
								<div data-v-3862357e="" data-v-6ec8e2fd=""
									class="coupon-contents__header">
									<img data-v-3862357e="" data-v-6ec8e2fd=""
										src="https://image.idus.com/static/idus_logo_new.png"
										alt="coupon thumbnail" class="coupon-contents__thumbnail-img">
									<div data-v-3862357e="" data-v-6ec8e2fd=""
										class="coupon-contents__title">${coupon.coupon_context }</div>
								</div>
								<div data-v-3862357e="" data-v-6ec8e2fd=""
									class="coupon-contents__body">
									<div data-v-3862357e="" data-v-6ec8e2fd=""
										class="coupon-contents__discount-value">
										${coupon.coupon_discount } <span data-v-3862357e="" data-v-6ec8e2fd=""
											class="point">원</span>
									</div>
									<!---->
								</div>
							</div>
						</div>
						</c:forEach>
					</div>

					<h2 class="title2-style">안내사항</h2>
					<div class="content-box">
						<p>
							‣ 할인쿠폰은 <span class="c-point">배송비를 제외한 작품 금액 기준</span>으로 적용됩니다.
						</p>
						<p>
							‣ 작가님 발행 쿠폰은 <span class="c-point">장바구니에서 작가님 별로 1개의 쿠폰만
								적용 가능</span>합니다.
						</p>
						<p>
							‣ 아이디위드 쿠폰은 <span class="c-point">주문결제 단계에서 주문 건당 1개의 쿠폰만
								적용 가능</span>합니다.
						</p>
						<p>
							‣ 쿠폰은 구매하신 작가님 별 <span class="c-point">구매금액 비율로 최종 할인이 적용</span>됩니다.
						</p>
					</div>

					<div data-vue="pagination"></div>
				</section>
			</div>
			<div data-vue="modal-container"></div>
		</div>

</body>
</html>
