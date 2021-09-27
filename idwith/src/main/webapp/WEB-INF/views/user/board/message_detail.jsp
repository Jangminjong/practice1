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
<title>아이디어스 | 메시지</title>
<meta name="theme-color" content="#ffffff" />
<link rel="apple-touch-icon" sizes="384x384"
	href="/resources/images/icon_300.png">
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
<script type="text/javascript" src="resources/admin/js/aboutUser.js"></script>
</head>
<body>
	<div class="wrap">
		<jsp:include page="../header_goods.jsp" />

		<div class="dimmed-background"></div>
		<div id="content" class="content message" data-gnb-show="false">
			<div class="inner-w layout-split" data-layout-split="msg-board" style="margin-top:-130px;"
				data-main-view="1">
				<section class="msg-board" data-ui="message-board"
					data-fetching="false" style="height: 600px; width:100%;">
					<!-- 불러온 작가 정보 세팅 -->
					<div class="board-head">
						<div class="profile">
							<div class="img-bg"
								style="background-image: url(https://image.idus.com/image/files/e8534c6cbfb7488fbb5771f48db36e6d_320.jpg);"></div>
							<a href="seller_main.do"
								class="artist-link"> <span class="name">테스트 프로필</span> 
								<i class="idus-icon-home"></i>
							</a>
						</div>
						<button class="msg-btn">
							<a href="message.do" style="color: #fff;">돌아가기</a>
						<button>
					</div>

					<div class="msg-area"
						data-ui-paging="{ &quot;event&quot;:&quot;scroll&quot;, &quot;position&quot;: &quot;top&quot; }"
						data-endpoint="/w/message/2e754b3a-8c6e-4904-a8ab-9cac555cef5c/detail">
						<div class="msg-init">
							작가님께서 작품 제작 / 발송 준비 중이라면 실시간 응대가 어려울 수도 있습니다. <br> 궁금하신 점은
							메시지를 남겨주시면 확인하시는 대로 답장 드릴 거예요.
						</div>
						<c:forEach var="msg" items="${msgContextList}">
							<c:choose>
								<c:when test="${msg.msg_id eq email }">
									<div class="msg-card right ">
										<div class="inner">
											<p class="msg-txt">${msg.msg_context }</p>
											<div class="timestamp">
												<time>${msg.msg_date }</time>
											</div>
										</div>
									</div>
								</c:when>
								<c:when test="${msg.msg_id ne email }">
									<div class="msg-card left ">
										<div class="inner">
											<p class="msg-txt">${msg.msg_context }</p>
											<div class="timestamp">
												<time>${msg.msg_date }</time>
											</div>
										</div>
									</div>
								</c:when>
							</c:choose>
						</c:forEach>
					</div>

					<form action="insertMessage.do" data-ui="message-form" name="msgForm" id="msg-form" class="msg-form" onsubmit="return false">
						<label class="input-hide"> 
							<input class="hidden" type="file" name="attachment" value=""> 
							<i class="idus-icon-photo"></i>
						</label> 
						<label class="input-text placeholder-wrap" style="width:85%;"> 
							<textarea name="msg_context" placeholder="메시지를 입력하세요." data-placeholder-id="textarea-msg" style="width:95%;"></textarea> 
						</label> 
						<input type="hidden" name="style" value="0">
						<c:forEach var="msg" items="${msgContextList}">
							<c:if test="${ msg.msg_id ne email }">
								<input type="hidden" name="msgd_id" value="${msg.msg_id }"/>
							</c:if>
						</c:forEach>
							<input type="hidden" name="msgd_id" value="${msgd_id }"/>
						<input type="hidden" name="msg_id" value="${email }"/>
						<button type="submit" id="msg-form-submit" class="btn btn-m btn-point">전송</button>
					</form>
				</section>
			</div>
		</div>
	</div>
</body>
</html>
