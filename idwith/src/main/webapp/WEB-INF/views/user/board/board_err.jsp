<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<div class="inner-w cnn-board">
				<div class="board-err">
					<strong><span style="font-size: 50px; color: #f52e05;">조회 권한이 없습니다.</span></strong>
				</div>
				<a href="board.do" style="float: center;"><button class="btn-qna-board">목록으로 돌아가기</button></a>
			</div>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>