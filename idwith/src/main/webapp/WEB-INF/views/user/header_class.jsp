<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String emailSplit = (String)session.getAttribute("emailSplit");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="resources/css/event_banner.css">
<link rel="stylesheet" href="resources/css/top.css">
<link rel="stylesheet" href="resources/css/idus.web.min.css">
<link rel="stylesheet" href="resources/css/vendor.client.min.css">
<script src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="resources/js/index.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
	integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
	crossorigin="anonymous">
<title>아이디어스 임시 메인</title>
</head>
<body>
	<div class="wrap">
		<div class="head_banner_group">
			<!-- 상단 리본 배너 -->
			<div class="download-ribbon top" style="background-color: #ff7b30"
				data-download="root" data-download-type="isRibbon">
				<div class="inner-w">
					<a href="sign_choice.do" class="download-ribbon-inner"> <img
						class="pc-img"
						src="https://image.idus.com/static/signup/web_benefit_banner.png">
					</a>
					<button class="download-ribbon-close" type="button">
						<i class="far fa-times-circle" aria-hidden="true"></i>
					</button>
				</div>
			</div>
		</div>

		<!-- <div id="skip-to-content"> <a href="#gnb">메뉴목록으로 바로가기</a> <a
                href="#content">컨텐츠로 바로가기</a> </div> -->

		<header id="header" class="header ">
			<input type="hidden" name="isLoggedIn" value="">
			<div class="top-navigation full-w">
				<div class="inner-w clf">
					<c:choose>
					<c:when test="${ emailSplit eq null }">
						<nav class="fr">
						<input type="text" id="current_user_email" class="hidden"
							name="current_user_email" value="" readonly="readonly"> <a
							id="gnb-login-button" href="login.do" class="nav-btn"
							data-log-object="login">로그인</a> <a href="sign_choice.do"
							class="nav-btn" data-log-object="member_join">회원가입</a> <a
							href="board.do" class="nav-btn" data-log-object="member__notice">공지사항</a>
						<a href="board.do" class="nav-btn" data-log-object="member_qna">1:1문의</a>

						<!-- <div class="nav-btn ui-dropdown">
                                    <button type="button" class="btn-dropdown">고객센터</button>
                                     <ul class="menu-dropdown">
                                        <li>
                                            <a href="/w/board/notice">공지사항</a>
                                        </li>
                                        <li>
                                            <a href="/w/board/faq">자주 묻는 질문</a>
                                        </li>
                                        <li>
                                            <a href="mailto:support@backpac.kr">메일로 문의</a>
                                        </li>
                                    </ul> 
                                </div> -->
						</nav>
					</c:when>
					<c:when test="${ emailSplit ne null }">
						<nav class="fr" style="margin-left: 65%;">
						<input type="text" id="current_user_email" class="hidden"
							name="current_user_email" value="" readonly="readonly">
						<div class="nav-btn ui-dropdown">
							<button type="button" class="btn-dropdown">
								<span data-profile="name">${emailSplit}</span> 님
								<!-- current user email address: for parsing -->
							</button>
							<ul class="menu-dropdown menu-first">
								<li><a href="mypage_order_goods.do">주문배송</a></li>
								<li><a href="mypage_interest_goods.do">관심리스트</a></li>
								<li><a href="mypage_coupon.do">쿠폰함</a></li>
								<li><a href="mypage_info.do">회원 정보관리</a></li>
								<li class="add-border"><a href="/w/logout">로그아웃</a></li>
							</ul>
						</div>
						<div class="nav-btn ui-dropdown message message-list">
							<button type="button" class="btn-dropdown"
								data-ui="load-message-btn"
								data-endpoint="/w/notification?page=gnb">
								<i class="far fa-bell"></i> <span class="title">알림</span>
							</button>
							<div class="menu-dropdown menu-second message-list alarm">
								<div class="alarm_title">
									<span class="title">알림</span>
								</div>
								<ul
									class="msg-lists mCustomScrollbar _mCS_1 mCS-autoHide mCS_no_scrollbar">
									<div id="mCSB_1"
										class="mCustomScrollBox mCS-minimal-dark mCS_vertical mCSB_outside">
										<div class="alarm-test">알림 테스트1</div>
										<div class="alarm-test">알림 테스트2</div>
										<div class="alarm-test">알림 테스트3</div>
										<div class="alarm-test">알림 테스트4</div>
									</div>
									<div id="mCSB_1_scrollbar_vertical"
										class="mCSB_scrollTools mCSB_1_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical">
										<div class="mCSB_draggerContainer">
											<div id="mCSB_1_dragger_vertical" class="mCSB_dragger">
												<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
												<div class="mCSB_draggerRail"></div>
											</div>
										</div>
									</div>
								</ul>
								<a data-log-noti-object="see_all" href="alarm.do"
									class="link-style">모두 보기</a>
							</div>
						</div>

						<a href="board.do" class="nav-btn" data-log-object="member__notice">공지사항</a>
						<a href="board.do" class="nav-btn" data-log-object="member_qna">1:1문의</a>

						<!-- <div class="nav-btn ui-dropdown">
                                    <button type="button" class="btn-dropdown">고객센터</button>
                                     <ul class="menu-dropdown">
                                        <li>
                                            <a href="/w/board/notice">공지사항</a>
                                        </li>
                                        <li>
                                            <a href="/w/board/faq">자주 묻는 질문</a>
                                        </li>
                                        <li>
                                            <a href="mailto:support@backpac.kr">메일로 문의</a>
                                        </li>
                                    </ul> 
                                </div> -->
						</nav>
					</c:when>
				</c:choose>
				</div>
			</div>

			<div class="bg-wrapper" data-vue="SearchHeader">
				<div class="inner-w top">
					<h1 class="logo" style="margin-top: -20px;">
						<a href="index.do" class="icon-iduslogo"><img
							src="resources/images/header/logo.svg"
							alt="IDUS, Unique Lifestyle Guide"></a>
					</h1>

					<nav class="service-nav">
						<a href="index.do" class="service goods">작품</a> <a
							href="class_index.do" class="service active">클래스</a>
					</nav>
					<div class="main-search">
						<form class="gnb-search-form">
							<input id="header-search" type="text" autocomplete="off"
								placeholder="추석할인을 검색해보세요"> <label class="searchLabel">
								<button type="submit" name="search">
									<i class="fas fa-search"></i>
								</button>
							</label>
						</form>
					</div>

					<nav class="profile-links">
						<a href="mypage_main.do" class="btn"> <i class="far fa-user"></i> 내 정보
						</a> <a id="my-cart-button" href="cart.do" class="btn"> <span
							class="cart-counter">0</span> <i class="fas fa-shopping-cart"></i>
							장바구니
						</a>
					</nav>

					<div class="bubble-space">
						<div class="bubble-speech bubble-center">
							<div class="message">오늘의 취미를 골라보세요!</div>
							<div class="triangle bottom center">
								<div class="before"></div>
								<div class="after"></div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="full-w gnb-scroll " data-ui="gnb-scroll"
				data-state="static">
				<div class="inner-w container_gnb" data-ui="gnb">
					<ul class="ui_gnb" data-state="" data-type="">
						<li class="ui_gnb__menu " data-state="active"><a href="class_index.do">홈</a>
						</li>
						<li class="ui_gnb__menu class-category"><a href="class_category.do">카테고리</a></li>
						<li class="ui_gnb__menu " data-state=""><a
							href="class_popular.do">인기 클래스</a></li>
						<li class="ui_gnb__menu " data-state=""><a href="class_region.do">지역별</a>
						</li>
					</ul>
					<button class="ui_btn toggle_gnb" aria-label="toggle nav ui">
						<i class="idus-icon-arrow-down"></i>
					</button>
				</div>
			</div>
		</header>
</body>
</html>