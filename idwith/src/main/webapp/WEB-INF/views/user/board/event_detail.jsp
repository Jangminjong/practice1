<%@page import="com.idwith.mpweb.user.board.QnABoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 | 게시글 보기</title>
<link rel="stylesheet" href="resources/css/idus.web.min.css">
<link rel="stylesheet" href="resources/css/vendor.client.min.css">
<link rel="stylesheet" href="resources/css/board.css">
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="resources/js/board/qna_board.js"></script>
<!-- 파비콘 이미지 설정 -->
<link rel="shortcut icon" type="image/x-icon"
	href="resources/images/title/icon_300.PNG">

</head>
<body>
	<div class="wrap">
		<jsp:include page="../header_goods.jsp" />
		<div id="content" class="content" data-gnb-show="true"
			data-page="board">
			<div class="title-style-block inner-w">
				<h2 class="txt">공지사항</h2>
			</div>
			<div class="inner-w cnn-board">
				<strong>❑ 
					<span style="color: #ff6600; font-size:16px;">[${eventVO.user_event_board_title1}]</span>
					<span style="color: #666; font-size:16px;"> ${eventVO.user_event_board_title2}</span>
				</strong><br><br>
				
				<div class="qna-content qna-detail" style="margin-bottom: 24px;">
					<textarea rows="26" name="board_content">${eventVO.user_event_board_content}</textarea>
					<div class="event-board-img"></div>
				</div>
				<a href="eventNoticeBoard.do" ><button class="btn-qna-board">목록</button></a>
			</div>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>

</body>
</html>