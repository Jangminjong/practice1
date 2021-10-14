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

</head>
<body>
	<div class="wrap">
		<jsp:include page="../header_goods.jsp" />

		<div class="dimmed-background"></div>
		<div id="content" class="content message" data-gnb-show="false">
			<div class="inner-w layout-split" data-layout-split="msg-board" style="margin-top:-130px;"
				data-main-view="1">
				<!-- 채팅방 목록 -->
				<section class="msg-aside"  style="height: 600px; width:100%;">
					<div class="msg-title">
						<h2>메시지</h2>
						<div>
							<a href="message_choice.do" data-ui="message-artist"
								class="link"><i class="fa fa-chevron-right" aria-hidden="true" style="font-size: 17px;"></i></span>
							</a>
						</div>
					</div>
					<input type="hidden" name="latest_timestamp" value="">
					
					<!-- 메시지 리스트 (왼쪽) -->
					<ul class="msg-lists" data-ui="message-list" style="border-left: 1px solid #d9d9d9;"
						data-ui-paging="{ &quot;event&quot;:&quot;scroll&quot;, &quot;position&quot;: &quot;bottom&quot;}"
						data-endpoint="/w/message">
						<c:forEach var="msg" items="${msgList}">
							<li class="msg-item"><a
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
					</ul>
				</section>
			</div>
		</div>
	</div>
</body>
</html>
