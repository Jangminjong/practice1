<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
<title>아이디어스 | 알림</title>
<meta name="theme-color" content="#ffffff" />
<!-- 파비콘 이미지 설정 -->
<link rel="shortcut icon" type="image/x-icon"
	href="resources/images/title/icon_300.PNG">
<link rel="manifest" href="/manifest.json">

<!-- Intersection Observer polyfill -->
<script
	src="https://polyfill.io/v3/polyfill.js?features=IntersectionObserver&ua=ie/11"></script>
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
<meta property="og:url" content="http://www.idus.com/w/notification" />
<meta property="og:image"
	content="http://www.idus.com/resources/dist/images/ogimg-idus.png?ver=2.0" />
<link rel="canonical" href="http://www.idus.com/w/notification" />

<!-- project src -->
<link rel="icon" href="/resources/favicon_32.ico" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
<link rel="stylesheet" href="resources/css/idus.web.min.css">
<link rel="stylesheet" href="resources/css/vendor.client.min.css">
<link rel="stylesheet" href="resources/css/alarm.css">
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="resources/js/board/alarm.js"></script>
</head>
<body>
	<div class="wrap">
		<jsp:include page="../header_goods.jsp" />

		<div class="dimmed-background"></div>
		<div id="content" class="content" data-page="notification" style="margin-top:-42px;">
			<div class="title-style-block inner-w">
				<h2 class="txt">알림</h2>
			</div>
			<div class="inner-w layout-split" data-layout-split="notification">
				<section class="notice-area">
					<ul class="msg-lists mCustomScrollbar _mCS_3 mCS-autoHide" style="position: relative; overflow: auto;">
						<div id="mCSB_3"mclass="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside" tabindex="0" style="max-height: none;">
							<div class="notification_important_layout_conatiner">
								<p class="title">중요한 이벤트 알림</p>
								<div class="notification_important_container">
									<a href="javascript:dueDateCheck(${newEvent.user_event_board_seq})" class="notification_important_link">
									<img src="C:/myProject/idwith/idwith/src/main/webapp/resources/images/title/icon_300.PNG" class="notification_important_artist_img mCS_img_loaded">
										<div class="notification_important_content_box">
											<p class="label">이벤트</p>
											<p class="title">${newEvent.user_event_board_title2}</p>
											<p class="message" style="overflow: hidden;">${newEvent.user_event_board_content }</p>
											<p class="notification_important_date">${newEvent.user_event_board_start }</p>
										</div> 
									</a>
								</div>
							</div>
							<div id="mCSB_3_container" class="mCSB_container" style="position: relative; top: 0; left: 0;" dir="ltr">
								<c:forEach var="event" items="${event}">
								<div class="notification_card_container">
									<input type="hidden" name="paging_param"> 
									<a href="javascript:dueDateCheck(${event.user_event_board_seq})" class="notification_card_link">
										<img src="https://image.idus.com/image/files/1b943d7e4df14e029705d57b9c2e55ed.jpg" class="notification_card_artist_img mCS_img_loaded">
										<div class="notification_card_content_box">
											<p class="label">이벤트</p>
											<p class="title">${event.user_event_board_title2}</p>
											<p class="message" style="overflow: hidden;">${event.user_event_board_content }</p>
										</div>
										<p class="notification_card_date">${event.user_event_board_start }</p>
									</a>
									
								</div>
								</c:forEach>
							</div>
						</div>
					</ul>
				</section>
			</div>
		</div>
		<a href="#header" class="to-top" data-ui="scroll-to-top" data-page="">
			<img src="/resources/dist/images/go-to-top-image.png" alt="go to top">
		</a>
		<jsp:include page="../footer.jsp" />
	</div>
	<!-- div WRAP -->
	<script type="text/javascript"
		src="/resources/dist/js/idus.web.min.js?__v=1631255393"></script>
</body>
</html>
