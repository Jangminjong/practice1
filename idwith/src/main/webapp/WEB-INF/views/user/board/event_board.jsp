<%@page import="com.idwith.mpweb.common.PagingVO"%>
<%@page import="com.idwith.mpweb.user.board.QnAListVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디어스 | 공지사항</title>
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
		<div id="content" class="content" data-gnb-show="true">
			<input id="email" type="hidden" value="${email}"/>
			<div class="title-style-block inner-w">
				<h2 class="txt">공지사항</h2>
			</div>
			<div class="inner-w mobile-full">
				<nav class="cnn-list">
					<a href="enterWriterNotice.do"> 
						<strong> 
							❑ 
							<span style="color: #ff7a31;">[작가 입점 안내]</span> 
							<span style="color: #666666; font-size: 16px;">금손이라면 누구나 작가가 될 수 있습니다.</span>
						</strong>
					</a>
					<c:forEach var="eventVO" items="${noticeEventList}">
							<a href="eventNotice_detail.do?user_event_board_seq=${eventVO.user_event_board_seq }">
								<div>
									<strong>
										<c:if test="${eventVO.user_event_board_category eq '공지' }">
											<span style="color: #f52e05;">[공지]</span>
										</c:if>
										<span style="color: #666;">❑</span>
										<span style="color: #ff6600;"> [ ${eventVO.user_event_board_title1 } ]</span>
										<span style="color:  #666;">${eventVO.user_event_board_title2 }</span>
									</strong>
								</div>
							</a>
					</c:forEach>
				</nav>
				<div class="paging" data-ui="paging" data-sync="false">
					<nav>
						<c:choose>
							<c:when test="${paging.nowPage eq 1 }">
								<span style="width: auto;">◀ 이전 |</span>
							</c:when>
							<c:when test="${paging.nowPage ne 1 }">
								<a href="/mpweb/eventNoticeBoard.do?nowPage=${paging.nowPage - 1 }&cntPerPage=${paging.cntPerPage}" style="width: auto;">◀ 이전 |</a>
							</c:when>
						</c:choose>
						<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
							<c:choose>
								<c:when test="${p eq paging.nowPage }">
									<a href="/mpweb/eventNoticeBoard.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}" class="active" onclick="return false">${p }</a>
								</c:when>
								<c:when test="${p ne paging.nowPage }">
									<a href="/mpweb/eventNoticeBoard.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
								</c:when>
							</c:choose>
						</c:forEach>
						<c:choose>
							<c:when test="${paging.endPage eq paging.lastPage}">
								<span style="width: auto;">| 다음 ▶</span>
							</c:when>
							<c:when test="${paging.endPage ne paging.lastPage}">
								<a href="/mpweb/eventNoticeBoard.do?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}" style="width: auto;">| 다음 ▶</a>
							</c:when>
						</c:choose>
						<!-- <a href="/w/board/notice?&amp;page=1" class="active">1</a> <a
							href="/w/board/notice?&amp;page=2" class="">2</a> <a
							href="/w/board/notice?&amp;page=2" class="next" aria-label="다음">
							<span>다음</span> <i class="fa fa-chevron-right" disabled=""></i>
						</a> -->
					</nav>
				</div>
				
			</div>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>

</body>
</html>