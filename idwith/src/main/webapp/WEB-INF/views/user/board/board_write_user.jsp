<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String email = (String) session.getAttribute("email");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 문의 | 새 글 작성</title>
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
				<form id="form-qna" name="qnaForm" class="form-qna" action="insertQnA.do" method="post" onsubmit="return false">
					<input type="hidden" name="user_id" class="qna-email" value="${email}"/>
					<div class="qna-title" style="margin-bottom:24px;">
						<select id="qna_type" name="board_category">
							<option>구분</option>
							<option>결제</option>
							<option>배송</option>
							<option>교환/반품/취소</option>
							<option>이용</option>
						</select>
						<div class="qna-title_input"><input type="text" id="qna_title_input_" name="board_title" class="title_input" placeholder="문의내용을 선택하시면 자동으로 설정됩니다.">
						</div>
					</div>
					<div class="qna-content" style="margin-bottom:24px;">
					<textarea rows="37" name="board_content"></textarea>
				</div>
				<div class="qna-checkbox" style="margin-bottom:24px;">
					<div class="qna-secret" >
						<input type="checkbox" name="board_secret" checked>
						<label><span>비밀글 설정</span></label>
					</div>
					<div class="qna-fix" >
						<input type="checkbox" name="board_fix">
						<label><span>고정글</span></label>
					</div>
				</div>
				<input type="submit" value="등록" id="qna-submit" class="qna-submit">
				</form>
				<a href="board.do"><button class="btn-qna-board">목록</button></a>
			</div>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>

</body>
</html>