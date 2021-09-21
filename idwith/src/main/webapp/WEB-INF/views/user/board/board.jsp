<%@page import="com.idwith.mpweb.user.board.PagingVO"%>
<%@page import="com.idwith.mpweb.user.board.QnAListVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	List<QnAListVO> qnaList = (List<QnAListVO>) session.getAttribute("qnaList");
	List<QnAListVO> noticeList = (List<QnAListVO>) session.getAttribute("noticeList");
	PagingVO paging = new PagingVO();
	String email = (String) session.getAttribute("email");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
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
				<h2 class="txt">1:1 문의</h2>
			</div>
			<div class="inner-w mobile-full">
				<nav class="cnn-list">
				<c:if test="${paging.nowPage eq paging.startPage}">
					<c:forEach var="qnaVO" items="${noticeList}">
						<c:if test="${qnaVO.board_fix eq 'true'}">
							<a href="board_detail.do?seq=${qnaVO.seq}" class="qna-fix">
								<input class="qna-seq" id="qna-seq" name="seq" type="hidden" value="${qnaVO.seq}"/>
								<div>
									<strong style="float: left;">
										<span style="color: #f52e05;">[공지]</span>
										<span style="color: #666;">❑ ${qnaVO.board_title }</span>
									</strong>
								</div>
							</a>
						</c:if>
					</c:forEach>
				</c:if>
					<c:forEach var="qnaVO" items="${qnaList}">
						<c:if test="${qnaVO.board_fix eq false}">
							<a href="board_detail.do?seq=${qnaVO.seq}" class="qna-one">
								<input id="email" type="hidden" value="${email}"/>
								<input class="qna-seq" id="qna-seq" name="seq" type="hidden" value="${qnaVO.seq}"/>
								<input name="board_answer" type="hidden" value="${qnaVO.board_answer }"/>
								<div>
									<strong>
									<c:choose>
										<c:when test="${qnaVO.board_answer eq null }">
											<span style="color: #d9d9d9;">[미답변]</span>
										</c:when>
										<c:when test="${qnaVO.board_answer ne null}">
									 		<span style="color: #ff6600;">[답변완료]</span>
										</c:when>
									</c:choose>
									<span style="color: #666;">❑ ${qnaVO.board_title }</span>
									<span class="qna-list-writer" style="color: #666;">${qnaVO.user_id}</span>
									</strong>
								</div>
							</a>
						</c:if>
					</c:forEach>
				</nav>
				<div class="paging" data-ui="paging" data-sync="false">
					<nav>
						<c:choose>
							<c:when test="${paging.nowPage eq 1 }">
								<span style="width: auto;">◀ 이전 |</span>
							</c:when>
							<c:when test="${paging.nowPage ne 1 }">
								<a href="/mpweb/board.do?nowPage=${paging.nowPage - 1 }&cntPerPage=${paging.cntPerPage}" style="width: auto;">◀ 이전 |</a>
							</c:when>
						</c:choose>
						<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
							<c:choose>
								<c:when test="${p eq paging.nowPage }">
									<a href="/mpweb/board.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}" class="active" onclick="return false">${p }</a>
								</c:when>
								<c:when test="${p ne paging.nowPage }">
									<a href="/mpweb/board.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
								</c:when>
							</c:choose>
						</c:forEach>
						<c:choose>
							<c:when test="${paging.endPage eq paging.lastPage}">
								<span style="width: auto;">| 다음 ▶</span>
							</c:when>
							<c:when test="${paging.endPage ne paging.lastPage}">
								<a href="/mpweb/board.do?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}" style="width: auto;">| 다음 ▶</a>
							</c:when>
						</c:choose>
						<!-- <a href="/w/board/notice?&amp;page=1" class="active">1</a> <a
							href="/w/board/notice?&amp;page=2" class="">2</a> <a
							href="/w/board/notice?&amp;page=2" class="next" aria-label="다음">
							<span>다음</span> <i class="fa fa-chevron-right" disabled=""></i>
						</a> -->
					</nav>
				</div>
				
				<button id="btn-qna-write" class="btn-qna-board">문의하기</button>			</div>
		</div>
		<jsp:include page="../footer.jsp" />
	</div>

</body>
</html>