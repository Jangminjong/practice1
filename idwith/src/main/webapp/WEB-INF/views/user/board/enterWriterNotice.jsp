<%@page import="com.idwith.mpweb.user.board.QnABoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 문의 | 입점 안내</title>
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
				<strong>
					❑ 
					<span style="color: #ff7a31;">[작가 입점 안내]</span>
					<span style="color: #666666; font-size:16px;">금손이라면 누구나 작가가 될 수 있습니다.</span>
				</strong><br><br>

				<div style="margin-bottom: 24px;">
					<div name="board_content">
						<img alt="" src="resources/images/detail/enterWriterNoticeImage1.jpg" style="width:100%;">
						<img alt="" src="resources/images/detail/enterWriterNoticeImage2.jpg">
					</div>
					<div class="offer-btn-wrap">
						<button class="offer-btn"><a href="offer_product.do" style="color: white;">작품 입점 신청 하기</a></button>
						<button class="offer-btn"><a href="offer_class.do" style="color: white;">클래스 입점 신청 하기</a></button>
					</div>
				</div>
				<a href="board.do" ><button class="btn-qna-board">목록</button></a>
			</div>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>

</body>
</html>