<%@page import="com.idwith.mpweb.user.board.QnABoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	QnABoardVO qnaVO = (QnABoardVO) session.getAttribute("qnaVO");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 문의 | 게시글 보기</title>
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
				<h2 class="txt">1:1 문의</h2>
			</div>
			<div class="inner-w cnn-board">
				<strong>❑ <span style="color: #ff6600; font-size:16px;">${qnaVO.board_title}</strong><br><br>
				
						<form name="qnaForm" action="updateQnA.do" method="post">
							<input name="seq" type="hidden" value="${qnaVO.seq}"/>
							<input name="user_id" type="hidden" value="${qnaVO.user_id}"/>
							<div class="qna-content qna-detail" style="margin-bottom:24px;">
							<c:choose>
								<c:when test="${qnaVO.board_answer eq null}">
									<textarea rows="26" name="board_content">${qnaVO.board_content}</textarea>
									<c:if test="${qnaVO.board_fix eq false }">
										<input type="submit" value="수정" id="qna-submit" class="btn-qna-board">
									</c:if>
								</c:when>
								<c:when test="${ qnaVO.board_answer ne null}">
									<textarea rows="26" name="board_content" readonly>${qnaVO.board_content}</textarea>
								</c:when>
							</c:choose>
							</div>
							<strong>❑ <span style="color: #ff6600; font-size:16px;">답변</strong><br><br>
							<div class="qna-content qna-answer">
								<div class="qna-answer-text" style="margin-bottom:10px;">
									${qnaVO.board_answer}
								</div>
							</div>
						</form>
				<a href="board.do" ><button class="btn-qna-board">목록</button></a>
				<c:if test="${qnaVO.board_answer eq null}">
					<c:if test="${qnaVO.board_fix eq false }">
						<a href="deleteQnA.do?seq=${qnaVO.seq }" ><button class="btn-qna-board">삭제</button></a>
					</c:if>
				</c:if>
			</div>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>

</body>
</html>