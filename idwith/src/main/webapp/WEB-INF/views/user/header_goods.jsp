<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<script type="text/javascript" src="resources/js/cart.js"></script>

<link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
  />
<title>아이디어스 임시 메인</title>
</head>
<body id="body">
	<input type="hidden" id="email" value="${email }"/>
	<div class="wrap">
		<div class="head_banner_group" id="header-banner">
			<!-- 상단 리본 배너 -->
			<div class="download-ribbon top" style="background-color: #ff7b30"
				data-download="root" data-download-type="isRibbon">
				<div class="inner-w">
					<a href="sign.do" class="download-ribbon-inner"> <img
						class="pc-img"
						src="https://image.idus.com/static/signup/web_benefit_banner.png">
					</a>
					<button class="download-ribbon-close" type="button">
						<i class="fa fa-times-circle" aria-hidden="true" onclick="bannerHide()"></i>
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
						<nav class="fr" style="margin-left: 700px;">
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
						<nav class="fr" style="margin-left: 55%;">
						<input type="text" id="current_user_email" class="hidden"
							name="current_user_email" value="" readonly="readonly">
						<div class="nav-btn ui-dropdown mymenu">
							<button type="button" class="btn-dropdown btn-first">
								<span data-profile="name">${emailSplit}</span> 님
								<!-- current user email address: for parsing -->
							</button>
							<ul class="menu-dropdown menu-first">
								<li><a href="mypage_order_goods.do">주문배송</a></li>
								<li><a href="mypage_interest_goods.do">관심리스트</a></li>
								<li><a href="mypage_coupon.do">쿠폰함</a></li>
								<li><a href="mypage_info.do">회원 정보관리</a></li>
								<li class="add-border"><a href="logout.do">로그아웃</a></li>
							</ul>
						</div>
						<div class="nav-btn ui-dropdown message message-list" id="message-list-alarm" onmouseover="alarmView()">
							<button type="button" class="btn-dropdown btn-second"
								data-ui="load-message-btn"
								data-endpoint="/w/notification?page=gnb">
								<i class="fa fa-bell-o" aria-hidden="true"></i><span class="title">알림</span>
							</button>
							<div class="menu-dropdown menu-second alarm" style="width:360px; margin-left: -160px;">
								<div class="alarm_title">
									<span class="title">알림</span>
								</div>
								<ul class="msg-lists mCustomScrollbar _mCS_1 mCS-autoHide mCS_no_scrollbar alarm-dropdown">
									<div id="mCSB_1" class="mCustomScrollBox mCS-minimal-dark mCS_vertical mCSB_outside">
												<c:forEach var="event" items="${event}">
													<div class="notification_card_container">
														<input type="hidden" name="paging_param"> 
														<a href="javascript:dueDateCheck(${event.user_event_board_seq})" class="notification_card_link alarm-card-link">
															<div>
																<img src="resources/images/title/icon_300.PNG" class="notification_card_artist_img mCS_img_loaded alarm-logo">
															</div>
															<div class="notification_card_content_box alarm-box">
																<p class="label" style="font-weight:bold; color:#ff7b30;">이벤트</p>
																<p class="title">${event.user_event_board_title2}</p>
																<p class="message" style="overflow: hidden;">${event.user_event_board_content }</p>
															</div>
															<div>
																<p class="notification_card_date" style="float:right;">${event.user_event_board_start }</p>
															</div>
														</a>

													</div>
												</c:forEach>
											</div>
									
									<a data-log-noti-object="see_all" href="alarm.do" class="dropdown-link-style link-style">모두 보기</a>
								</ul>
							</div>
						</div>
						<div class="nav-btn ui-dropdown message message-list" id="message-list-msg" onmouseover="messageView()">
							<button type="button" class="btn-dropdown btn-third"
								data-ui="load-message-btn">
								<i class="fa fa-commenting-o" aria-hidden="true"></i> <span class="title">메시지</span>
							</button>
							<div class="menu-dropdown menu-third message"  style="margin-left: -140px;">
								<div class="message_title">
									<span class="title">메시지</span>
								</div>
								<ul class="msg-lists mCustomScrollbar _mCS_1 mCS-autoHide mCS_no_scrollbar">
									<div id="mCSB_2" class="mCustomScrollBox mCS-minimal-dark mCS_vertical mCSB_outside">
												<c:forEach var="msg" items="${msgList}">
													<li class="msg-item" style="width:100%; height:auto;"><a
														href="message_detail.do?msgd_id=${msg.msg_id }">
															<div class="split">
																<div class="img-bg"
																	style="background-image: url('https://image.idus.com/image/files/e8534c6cbfb7488fbb5771f48db36e6d_320.jpg');"></div>
																<div class="area-txt">
																	<span>${msg.msg_id }</span>
																	<p class="txt">${msg.msg_context }</p>
																</div>
															</div>
															<div class="split fixed">
																<time class="timestamp">${msg.msg_date}</time>
															</div>
													</a></li>
												</c:forEach>
											</div>
									<a data-log-noti-object="see_all" href="message.do" class="dropdown-link-style link-style">모두 보기</a>
								</ul>
							</div>
						</div>

						<a href="eventNoticeBoard.do" class="nav-btn" data-log-object="member__notice">공지사항</a>
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

			<div class="bg-wrapper" id="header-main" data-vue="SearchHeader">
				<div class="inner-w top">
					<h1 class="logo" style="margin-top: -20px;">
						<a href="index.do" class="icon-iduslogo"><img
							src="resources/images/index/idwith_logo_back.png"
							alt="IDUS, Unique Lifestyle Guide" style="height: 85px;"></a>
					</h1>

					<nav class="service-nav">
						<a href="index.do" class="service active goods">작품</a> <a
							href="class_index.do" class="service">클래스</a>
					</nav>
					<div class="main-search">
						<form class="gnb-search-form">
							<input id="header-search" type="text" autocomplete="off"
								placeholder="추석할인을 검색해보세요"> <label class="searchLabel">
								<button type="submit" name="search">
									<i class="fa fa-search" aria-hidden="true"></i>
								</button>
							</label>
						</form>
					</div>

					<nav class="profile-links">
						<c:choose>
							<c:when test="${ sellerCheck ne null }">
								<a href="main.wdo" class="btn"> <i class="fa fa-user" aria-hidden="true"></i> 작가 페이지</a>
							</c:when>
						</c:choose>

						<a href="mypage.do" class="btn"> <i class="fa fa-user-o" aria-hidden="true"></i> 내 정보
						<!-- <a href="mypage.do" class="btn"> <i class="far fa-user"></i> 내 정보 -->
						</a> 
							<a id="my-cart-button" href="cart.do" class="btn"> <span
								class="cart-counter">0</span> <i class="fa fa-shopping-cart" aria-hidden="true"></i>
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

			<div class="full-w gnb-scroll " data-ui="gnb-scroll" id="topBar"
				data-state="static">
				<div class="inner-w container_gnb" data-ui="gnb">
					<ul class="ui_gnb" data-state="" data-type="">
						<li class="ui_gnb__menu class-category">
							<span>카테고리</span>
							<div class="ui_gnb__submenu" style="width: 450px;">
							<c:set var="i" value="-1"/>
								<c:if test="${i eq -1 }">
								<ul style="width: 50%">
								</c:if>
								<c:forEach var="category" items="${getAllGoodsCategory }">
									<c:set var="i" value="${i + 1}"/>
										<li>
											<a href="goods_category.do?goods_category=${category.goods_category_code }" data-log-label="product_category">${category.goods_category_name }</a>
											<i class="fa fa-chevron-right" aria-hidden="true" style="color:#ff7a31;"></i>
										</li>
									<c:if test="${i eq 9 }">
									</ul>
									<ul style="width: 50%">
									</c:if>
								</c:forEach>
								</ul>
							</div>
						</li>
						<li class="ui_gnb__menu " data-state="active"><a href="/">홈</a>
						</li>
						<li class="ui_gnb__menu " data-state=""><a
							href="goods_popular.do">인기 작품</a></li>
						<li class="ui_gnb__menu " data-state=""><a href="story.do">스토리</a>
						</li>
						<li class="ui_gnb__menu " data-state="" style="display: inline-block;"><a
							href="seller_list.do">인기작가</a></li>
					</ul>
					<button class="ui_btn toggle_gnb" aria-label="toggle nav ui">
						<i class="idus-icon-arrow-down"></i>
					</button>
				</div>
			</div>
		</header>
</body>
</html>