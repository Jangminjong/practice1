<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	String emailSplit = (String)session.getAttribute("emailSplit");

%>

<!DOCTYPE html>
<!--[if lt IE 7]><html class="lt-ie9 lt-ie8 lt-ie7"><![endif]-->
<!--[if IE 7]><html class="lt-ie9 lt-ie8"><![endif]-->
<!--[if IE 8]><html class="lt-ie9"><![endif]-->
<!--[if gt IE 8]><html class="ie9"><![endif]-->
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>아이디어스 | 내 정보</title>
<meta name="theme-color" content="#ffffff" />
<!-- 파비콘 이미지 설정 -->
<link rel="shortcut icon" type="image/x-icon"
	href="resources/images/title/icon_300.PNG">
<link rel="manifest" href="/manifest.json">

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
<!-- project src -->
<link rel="icon" href="/resources/favicon_32.ico" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
	integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
	crossorigin="anonymous">
<link rel="stylesheet" href="resources/css/mypage.css" />
<link rel="stylesheet" href="resources/css/idus.web.min.css" />
<link rel="stylesheet" href="resources/css/vendor.client.min.css" />
</head>
<body>
	<div data-vue="token"></div>
	<div data-vue="globalUser"></div>
	<div data-vue="resizeHandler"></div>

	<div class="wrap">

		<c:choose>
			<c:when test="${ emailSplit eq null }">
				<jsp:include page="header_goods.jsp" />
			</c:when>
			<c:when test="${ emailSplit ne null }">
				<jsp:include page="header_goods_login.jsp" />
			</c:when>
		</c:choose>

		<div class="dimmed-background"></div>
		<div id="content" class="content" data-page="my-info">
			<div class="inner-w layout-split mobile-full"
				data-layout-split="orderlist" data-page="me-main">
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
								<c:forEach items="${user}" var="user" >
									<a href="mypage_level.do"> <span class="sp-icon grade-01-s"></span>
									<span>${user.user_grade} &gt;</span>
									</a> <strong data-profile="name">${user.user_name}</strong>
								</c:forEach>
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
								<a href="mypage_address.do" class="">주소(배송지) 관리</a>
						</nav>
					</div>
				</aside>
				<!-- 본문 -->
				<section class="my-dashboard">
					<div class="title-style-bar">
						<h1 class="txt">내 정보</h1>
						<span class="subtxt"></span>
					</div>

					<ul class="dashboard-list">
						<li><strong class="label">적립금</strong> <a href="/w/me/point"
							class="value">0P</a></li>
						<li><strong class="label">할인 쿠폰 수</strong> <a
							href="mypage_coupon.do" class="value">2</a></li>
						<li>
							<div class="title">
								<strong class="label">작가 발송 완료</strong>
								<div class="ui-dropdown right">
									<button type="button" class="btn-dropdown" aria-label="?">
										<i class="idus-icon-info"></i>
									</button>
									<div class="menu-dropdown">
										<p class="para">최근 1개월 기준</p>
									</div>
								</div>
							</div> <a href="mypage_order_goods.do" class="value">0</a>
						</li>
						<li>
							<div class="title">
								<strong class="label">취소/환불 완료</strong>
								<div class="ui-dropdown right">
									<button type="button" class="btn-dropdown" aria-label="?">
										<i class="idus-icon-info"></i>
									</button>
									<div class="menu-dropdown">
										<p class="para">최근 1개월 기준</p>
									</div>
								</div>
							</div> <a href="mypage_order_return.do" class="value">0</a>
						</li>
					</ul>

					<div data-vue="frequency-event-desktop"></div>

					<div class="title-style-sub">
						<h2 class="txt">최근 주문내역</h2>
						<a href="mypage_order_goods.do" class="to-right link">더보기<i
							class="fas fa-chevron-right"></i>
						</a>
					</div>

					<div class="tab_group--3">
						<span class="tab_group__tab--borderless" data-state="active"
							style="width: 50%;">작품</span> 
							<a href="mypage_order_class.do"
							class="tab_group__tab" style="width: 50%;">클래스</a>
					</div>

					<p class="empty-msg">최근 1개월 이내에 주문한 작품이 없습니다.</p>

					<div class="btn-container">
						<a href="mypage_order_goods.do" class="ui_btn--large"> <strong>최근
								주문내역 더보기</strong>
						</a>
					</div>

					<div class="ui_grid board-split">
						<div class="ui_grid__cols--2">
							<div class="ui_grid__item">
								<div class="title-style-sub">
									<h2 class="txt">안 읽은 메시지</h2>
									<a href="message.do" class="to-right link">더보기<i
										class="fas fa-chevron-right"></i>
									</a>
								</div>
								<p class="empty-msg">모든 메시지를 읽었습니다.</p>
							</div>
							<div class="ui_grid__item">
								<div class="title-style-sub">
									<h2 class="txt">알림</h2>
									<a data-log-object="see_all" href="alarm.do"
										class="to-right link">더보기<i class="fas fa-chevron-right"></i>
									</a>
								</div>
								<ul class="msg-item-list-auto">
									<div data-vue="notification-card48895011"></div>

									<div data-vue="notification-card48855723"></div>

									<div data-vue="notification-card48791118"></div>

									<div data-vue="notification-card48778988"></div>

									<div data-vue="notification-card48769555"></div>

									<div data-vue="notification-card48721787"></div>

									<div data-vue="notification-card48699104"></div>

									<div data-vue="notification-card48689139"></div>

									<div data-vue="notification-card48674091"></div>

									<div data-vue="notification-card48662673"></div>

									<div data-vue="notification-card48650192"></div>

									<div data-vue="notification-card48611017"></div>

									<div data-vue="notification-card48558171"></div>

									<div data-vue="notification-card48535680"></div>

									<div data-vue="notification-card48501631"></div>

									<div data-vue="notification-card48477576"></div>

									<div data-vue="notification-card48443423"></div>

									<div data-vue="notification-card48435948"></div>

									<div data-vue="notification-card48435863"></div>

									<div data-vue="notification-card48380521"></div>

									<div data-vue="notification-card48338383"></div>

									<div data-vue="notification-card48326297"></div>
									<div data-vue="notification-card48326296"></div>

									<div data-vue="notification-card48326295"></div>

									<div data-vue="notification-card48326294"></div>

								</ul>
							</div>
						</div>
					</div>

					<div class="title-style-sub">
						<h2 class="txt">찜한 작품</h2>
						<a href="mypage_interest_goods.do" class="to-right link">더보기<i
							class="fas fa-chevron-right"></i>
						</a>
					</div>
					<p class="empty-msg">찜한 작품이 없습니다.</p>

					<div class="title-style-sub">
						<h2 class="txt">팔로우하는 작가</h2>
						<a href="mypage_follow.do" class="to-right link">더보기<i
							class="fas fa-chevron-right"></i>
						</a>
					</div>
					<ul class="artist-list">
						<li data-v-1ae32da5="" class="following-artist-container">
							<div data-v-1ae32da5="" class="artist-profile-area">
								<div data-v-1ae32da5="" class="artist-thumbnail"
									style="background-image: url(&quot;https://image.idus.com/image/files/e8534c6cbfb7488fbb5771f48db36e6d_324.jpg&quot;);">
									<!---->
								</div>
								<div data-v-1ae32da5="" class="artist-profile">
									<div data-v-1ae32da5="" class="text-area">
										<h2 data-v-1ae32da5="" class="artist-name">늘해랑 떡공방</h2>
										<p data-v-1ae32da5="" class="artist-introduce">안녕하세요 건강하고
											예쁜떡을 만드는 늘해랑입니다.</p>
									</div>
									<button data-v-b534333e="" data-v-1ae32da5="" type="button"
										class="following"
										style="background-color: rgb(255, 255, 255); min-width: 96px; width: 96px; height: 32px; font-size: 12px; color: rgb(51, 51, 51); border: 1px solid rgb(217, 217, 217); border-radius: 4px;">
										<i data-v-b534333e="" class="idus-icon-check"
											style="font-size: 12px;"></i> 팔로잉
									</button>
								</div>
							</div>
							<div data-v-1ae32da5="" class="product-thumbnails">
								<a data-v-1ae32da5=""
									href="/w/artist/2e754b3a-8c6e-4904-a8ab-9cac555cef5c/product"
									target="_blank" class="thumbnail-wrapper">
									<div data-v-1ae32da5="" class="product-thumbnail"
										style="background-image: url(&quot;https://image.idus.com/image/files/7fbae09755274fc3a4ab80f30f8f86f3_512.jpg&quot;);"></div>
								</a> <a data-v-1ae32da5=""
									href="/w/artist/2e754b3a-8c6e-4904-a8ab-9cac555cef5c/product"
									target="_blank" class="thumbnail-wrapper">
									<div data-v-1ae32da5="" class="product-thumbnail"
										style="background-image: url(&quot;https://image.idus.com/image/files/1ef90b19bca24bfdbe150b17348e85db_512.jpg&quot;);"></div>
								</a> <a data-v-1ae32da5=""
									href="/w/artist/2e754b3a-8c6e-4904-a8ab-9cac555cef5c/product"
									target="_blank" class="thumbnail-wrapper">
									<div data-v-1ae32da5="" class="product-thumbnail"
										style="background-image: url(&quot;https://image.idus.com/image/files/8a53329ed3894cd4830ff22cde836d9f_512.jpg&quot;);"></div>
								</a>
							</div>
						</li>
					</ul>

					<div class="title-style-sub">
						<h2 class="txt">최근 본 작품</h2>
						<a href="mypage_recent.do" class="to-right link">더보기<i
							class="fas fa-chevron-right"></i>
						</a>
					</div>
					<div class="ui_grid">
						<ul class="ui_grid__cols--4">
							<li class="ui_grid__item">
								<div class="ui_card ">
									<button type="button"
										class="ui_card__overlay btn-ico sp-icon icon-favorite"
										aria-label="찜하기" data-name="starred-toolbar"
										data-starred-type="product" data-init="" data-starred=""
										data-target-id="85688add-1d2a-4a0f-99ae-3c08400fd6a3"></button>

									<div class="ui_card__imgcover">
										<a href="/w/product/85688add-1d2a-4a0f-99ae-3c08400fd6a3"
											target="_blank" aria-label="⭐️입점 쫀득쫀득 진-한 유기농재료 휘낭시에 8종 🧈"
											class="ui_card__img lazy "
											data-product-id="85688add-1d2a-4a0f-99ae-3c08400fd6a3"
											style="background-image: url('https://image.idus.com/image/files/7ebe95f039c041298181294b5bd4cc8e_512.jpg')"></a>
									</div>

									<div class="ui_card__info">
										<a href="/w/artist/66b76d8c-95c5-4e0c-bf7b-522d7a8bdb1a"
											class="ui_card__label" target="_blank">소소한 양과자점</a> <a
											href="/w/product/85688add-1d2a-4a0f-99ae-3c08400fd6a3"
											class="ui_card__title" target="_blank">⭐️입점 쫀득쫀득 진-한
											유기농재료 휘낭시에 8종 🧈</a>
									</div>

								</div>
							</li>
							<li class="ui_grid__item">
								<div class="ui_card ">
									<button type="button"
										class="ui_card__overlay btn-ico sp-icon icon-favorite"
										aria-label="찜하기" data-name="starred-toolbar"
										data-starred-type="product" data-init="" data-starred=""
										data-target-id="854c3f48-cb4c-4e0b-8a71-cdc0e993b2a5"></button>

									<div class="ui_card__imgcover">
										<a href="/w/product/854c3f48-cb4c-4e0b-8a71-cdc0e993b2a5"
											target="_blank" aria-label="[더맛있어진]겉바속촉, 휘낭시에"
											class="ui_card__img lazy "
											data-product-id="854c3f48-cb4c-4e0b-8a71-cdc0e993b2a5"
											style="background-image: url('https://image.idus.com/image/files/825f8f0dfa514cbcbb9d9520d5bc9905_512.png')"></a>
									</div>

									<div class="ui_card__info">
										<a href="/docheon" class="ui_card__label" target="_blank">도.천.빵.집</a>
										<a href="/w/product/854c3f48-cb4c-4e0b-8a71-cdc0e993b2a5"
											class="ui_card__title" target="_blank">[더맛있어진]겉바속촉, 휘낭시에</a>
									</div>

								</div>
							</li>
							<li class="ui_grid__item">
								<div class="ui_card ">
									<button type="button"
										class="ui_card__overlay btn-ico sp-icon icon-favorite"
										aria-label="찜하기" data-name="starred-toolbar"
										data-starred-type="product" data-init="" data-starred=""
										data-target-id="f156831e-7182-4761-ad8a-31868ddea800"></button>

									<div class="ui_card__imgcover">
										<a href="/w/product/f156831e-7182-4761-ad8a-31868ddea800"
											target="_blank" aria-label="10일출고 추석선물🎁❣휘낭시에 11종"
											class="ui_card__img lazy "
											data-product-id="f156831e-7182-4761-ad8a-31868ddea800"
											style="background-image: url('https://image.idus.com/image/files/94c4cee4fea34a4595ad546cbd8deb1e_512.jpg')"></a>
									</div>

									<div class="ui_card__info">
										<a href="/minirong" class="ui_card__label" target="_blank">디디얌</a>
										<a href="/w/product/f156831e-7182-4761-ad8a-31868ddea800"
											class="ui_card__title" target="_blank">10일출고 추석선물🎁❣휘낭시에
											11종</a>
									</div>

								</div>
							</li>
							<li class="ui_grid__item">
								<div class="ui_card ">
									<button type="button"
										class="ui_card__overlay btn-ico sp-icon icon-favorite"
										aria-label="찜하기" data-name="starred-toolbar"
										data-starred-type="product" data-init="" data-starred=""
										data-target-id="663f0625-685c-4740-a15c-1d9c741b61e9"></button>

									<div class="ui_card__imgcover">
										<a href="/w/product/663f0625-685c-4740-a15c-1d9c741b61e9"
											target="_blank" aria-label="✨곰돌이 3중 블랭킷✨거즈 담요"
											class="ui_card__img lazy "
											data-product-id="663f0625-685c-4740-a15c-1d9c741b61e9"
											style="background-image: url('https://image.idus.com/image/files/b498906e98354a9abbadd6f3008c625f_512.jpg')"></a>
									</div>

									<div class="ui_card__info">
										<a href="/wetica" class="ui_card__label" target="_blank">wetica</a>
										<a href="/w/product/663f0625-685c-4740-a15c-1d9c741b61e9"
											class="ui_card__title" target="_blank">✨곰돌이 3중 블랭킷✨거즈 담요</a>
									</div>

								</div>
							</li>
						</ul>
					</div>
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
		<jsp:include page="footer.jsp" />
	</div>
</body>
</html>
