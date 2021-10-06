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
<title>아이디어스 | 내가 쓴 구매 후기</title>
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
<!-- 파비콘 이미지 설정 -->
<link rel="shortcut icon" type="image/x-icon"
	href="resources/images/title/icon_300.PNG">
	
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
<meta property="og:url" content="http://www.idus.com/w/me/review/all" />
<meta property="og:image"
	content="http://www.idus.com/resources/dist/images/ogimg-idus.png?ver=2.0" />
<link rel="canonical" href="http://www.idus.com/w/me/review/all" />

<!-- project src -->
<link rel="icon" href="/resources/favicon_32.ico" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<script src="/resources/js/vendor.client.min.js"></script>
<script src="/resources/js/vuepack.js"></script>

<link rel="stylesheet" href="resources/css/mypage.css" />
<link rel="stylesheet" href="resources/css/idus.web.min.css" />
<link rel="stylesheet" href="resources/css/vendor.client.min.css" />
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="resources/js/review_write.js"></script>
</head>
<body>
	<div data-vue="token"></div>
	<div data-vue="globalUser"></div>
	<div data-vue="resizeHandler"></div>

	<div class="wrap">

		<div class="dimmed-background"></div>
		<jsp:include page="../header_goods.jsp" />
		<div id="content" class="content">
			<div class="inner-w layout-split mobile-full"
				data-layout-split="orderlist">
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

				<section class="reviewpage">
					<div class="title-style no-mt clf mobile-hide">
						<h2 class="txt fl">나의 구매후기</h2>
					</div>
					<p class="list-style-bg mobile-hide">
						여러분들이 작성해주시는 솔직한 구매후기는 핸드메이드 작품 선택을 고민하는 분들에게 선택의 도움을 줄 수 있답니다.<br>
						구매하신 작품마다 1회의 구매후기 작성이 가능합니다.<br> 단, 작성하신 구매후기를 삭제하면
						다시 작성할 수 없으니 신중히 평가해 주세요.<br> <br> 해당 작품과 무관한 내용이나 비방,
						욕설 등 부적합한 내용의 구매후기는 서비스 이용 약관이나 관련 법률에 의해 제재를 받을 수 있습니다.
					</p>
					<nav class="navstyle">
						<a href="mypage_review_before.do">구매후기 쓰기</a> <a class="active"
							href="mypage_review_after.do">내가 쓴 구매후기</a>
					</nav>
					<div class="m-spacing">
						<ul class="masonry-grid x2" data-col="2" data-ui="scroll-paging"
							data-query="next" data-param=""
							style="position: relative;">
							<c:forEach var="reviewAfter" items="${reviewAfterList}">
							<li class="card-style story"
								style="position: absolute; left: 0px; top: 0px;">
								<div class="bordering">
									<div class="area-txt">
										<div class="area-rating">
											<div class="img-bg"
												style="background-image: url(${reviewAfter.goods_photo[0]})"></div>
											<a href="detail_content.do?goods_code=${reviewAfter.goods_review_code }"
												target="_blank" class="title ellipsis">${reviewAfter.goods_name}</a>
											<div class="ui_rating" data-ui="rating" data-value="${reviewAfter.goods_review_point}">
												<c:forEach var="i" begin="1" end="${reviewAfter.goods_review_point}" >
													<i class="fa fa-star" aria-hidden="true" style="color:#f2b705;"></i>
												</c:forEach>
											</div>
										</div>
										<div class="split-hard">
											<span class="split crop-circ"
												style="background-image: url(https://image.idus.com/image/files/40c493d070b94d0d9e7203246b33cac3_320.jpg)">
											</span>
											<div class="split">
												<span class="txt-strong">${reviewAfter.goods_review_id.split("@")[0]}</span>
												<span class="txt">${reviewAfter.goods_review_date}</span>
											</div>
										</div>
										<p class="desc">${reviewAfter.goods_review_context }</p> <br>
										<br>
										<div class="area-img" style="background-image: url(resources/images/review/${reviewAfter.goods_review_image[0]})"></div>
									</div>
									<button class="review-del-btn"><a href="delete_review.do?goods_review_seq=${reviewAfter.goods_review_seq}">삭제</a></button>
								</div>
							</li>
							</c:forEach>
							<c:if test="${empty reviewAfterList}">
								<div class="banner-empty review-list-empty">
									<img src="resources/images/index/idwith_logo_back.png">
									<p>
										구매후기를 남겨주시면 작가님이<br>함박 웃음을 지으며 기뻐하신답니다!
									</p>
								</div>
							</c:if>
						</ul>
					</div>
				</section>
			</div>
		</div>
		<!-- 푸터자리 -->
		<div data-vue="ToastPopup"></div>
		<div data-vue="BottomSheet"></div>
		<div data-vue="WideBottomSheet"></div>
		<div data-vue="FooterModal"></div>
		<div data-vue="InactiveToast"></div>
		<a href="#header" class="to-top" data-ui="scroll-to-top" data-page="">
			<img src="/resources/dist/images/go-to-top-image.png" alt="go to top">
		</a>
	<jsp:include page="../footer.jsp" />
	</div>
	<!-- div WRAP -->
</body>
</html>