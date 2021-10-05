<%@page import="com.idwith.mpweb.admin.board.AdminQnABoardListVO"%>
<%@page import="com.idwith.mpweb.common.PagingVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description"
	content="Responsive Admin &amp; Dashboard Template based on Bootstrap 5">
<meta name="author" content="AdminKit">
<meta name="keywords"
	content="adminkit, bootstrap, bootstrap 5, admin, dashboard, template, responsive, css, sass, html, theme, front-end, ui kit, web">

<link rel="shortcut icon" href="resources/admin/img/tabIcon.png" />

<title>IDWITH - 관리자</title>

<link href="resources/admin/css/app.css" rel="stylesheet">
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="resources/admin/js/aboutUser.js"></script>
</head>

<body>
	<div class="wrapper">
		<nav id="sidebar" class="sidebar">
			<div class="sidebar-content js-simplebar">
				<a class="sidebar-brand" href="main.mdo"> <span
					class="align-middle"> <img src="resources/admin/img/white_logo.png"
						style="margin-bottom: 0px; margin-top: 15px; margin-left: 30px; max-width: 150px; height: auto;">
				</span>
				</a>

				<ul class="sidebar-nav">
					<li class="sidebar-header"></li>

					<li class="sidebar-item"><a class="sidebar-link"
						href="main.mdo"> <i class="align-middle" data-feather="home"></i>
							<span class="align-middle">메인페이지</span>
					</a></li>
					<li class="sidebar-header">Management</li>

					<li class="sidebar-item"><a class="sidebar-link"
						href="userList.mdo"> <i class="align-middle"
							data-feather="user"></i> <span class="align-middle">회원 관리</span>
					</a></li>

					<li class="sidebar-item"><a data-target="#forms"
						data-toggle="collapse" class="sidebar-link collapsed"> <i
							class="align-middle" data-feather="users"></i> <span
							class="align-middle">작가 관리</span>
					</a>
						<ul id="forms" class="sidebar-dropdown list-unstyled collapse "
							data-parent="#sidebar">
							<li class="sidebar-item"><a class="sidebar-link"
								href="storePropose.mdo">입점신청관리</a></li>
							<li class="sidebar-item"><a class="sidebar-link"
								href="writerList.mdo">작가목록</a></li>

						</ul></li>

					<li class="sidebar-item"><a class="sidebar-link"
						href="adminList.mdo"> <i class="align-middle"
							data-feather="eye"></i> <span class="align-middle">관리자 계정</span>
					</a></li>


					<li class="sidebar-item"><a data-target="#notice"
						data-toggle="collapse" class="sidebar-link collapsed"> <i
							class="align-middle" data-feather="command"></i> <span
							class="align-middle">공지사항</span>
					</a>
						<ul id="notice" class="sidebar-dropdown list-unstyled collapse "
							data-parent="#sidebar">
							<li class="sidebar-item"><a class="sidebar-link"
								href="adminNotice.mdo">관리자 공지사항</a></li>
							<li class="sidebar-item"><a class="sidebar-link"
								href="userNotice.mdo">사용자 공지사항</a></li>

						</ul></li>

					<li class="sidebar-item"><a class="sidebar-link"
						href="qna.mdo"> <i class="align-middle"
							data-feather="bell"></i> <span class="align-middle">QnA</span>
					</a></li>

					<li class="sidebar-item"><a data-target="#coupon"
						data-toggle="collapse" class="sidebar-link collapsed"> <i
							class="align-middle" data-feather="check-circle"></i> <span
							class="align-middle">쿠폰</span>
					</a>
						<ul id="coupon" class="sidebar-dropdown list-unstyled collapse "
							data-parent="#sidebar">
							<li class="sidebar-item"><a class="sidebar-link"
								href="couponList.mdo">쿠폰리스트</a></li>
							<li class="sidebar-item"><a class="sidebar-link"
								href="requestCoupon.mdo">쿠폰 요청 리스트</a></li>
						</ul></li>

					<li class="sidebar-item"><a class="sidebar-link"
						href="category.mdo"> <i class="align-middle" data-feather="edit-2"></i>
							<span class="align-middle">카테고리</span>
					</a></li>

					<li class="sidebar-item"><a data-target="#sales"
						data-toggle="collapse" class="sidebar-link collapsed"> <i
							class="align-middle" data-feather="check-circle"></i> <span
							class="align-middle">매출 & 정산</span>
					</a>
						<ul id="sales" class="sidebar-dropdown list-unstyled collapse "
							data-parent="#sidebar">
							<li class="sidebar-item"><a class="sidebar-link"
								href="sales.mdo">매출</a></li>
							<li class="sidebar-item"><a class="sidebar-link"
								href="calculate.mdo">정산</a></li>
						</ul></li>
				</ul>
			</div>
		</nav>

		<div class="main">
			<nav class="navbar navbar-expand navbar-light navbar-bg">
				<a class="sidebar-toggle d-flex"> <i
					class="hamburger align-self-center"></i>
				</a>

				<div class="navbar-collapse collapse" style="display: flex; justify-content: flex-end;">
						<h3>${admin_name} 님</h3>
						<a class="nav-link d-none d-sm-inline-block" href="adminLogout.mdo"> 
							<i class="align-middle" data-feather="log-out" style="color: black;"></i>
								<span class="text-dark">로그아웃</span>
						</a>
				</div>
			</nav>

			<main>
				<div class="content">
					<div class="row">
						<div class="container-fluid p-0">
							<div class="row mb-2 mb-xl-3">
								<div class="col-auto d-none d-sm-block">
									<h3>Q&A</h3>
								</div>
							</div>

							<div class="row">
								<div class="col-md-2 text-left">
									<select id="qna_type" name="board_category"
										onchange="setQnACategory()" class="form-control mb-3" style="width: 120px;">
										<option value="구분">구분</option>
										<option value="공지">공지</option>
										<option value="결제">결제</option>
										<option value="배송">배송</option>
										<option value="교환/반품/취소">교환/반품/취소</option>
										<option>이용</option>
									</select>
								</div>
								<div class="col-md-2 text-center"></div>
								<div class="col-md-2 text-center"></div>
								<div class="col-md-2 text-center"></div>
								<div class="col-md-2 text-center"></div>
								<div class="col-md-2 text-right" style="margin-bottom: 10px;">
									<a href="userInsertFAQ.mdo">
										<button class="btn btn-warning">글쓰기</button>
									</a>
								</div>
							</div>

						</div>

						<div class="col-12">
							<div class="card">
								<div class="table-responsive">
									<table class="table mb-0">
										<thead>
											<tr>
												<th scope="col">No.</th>
												<th scope="col">분류</th>
												<th scope="col">제목</th>
												<th scope="col">작성자</th>
												<th scope="col">날짜</th>
												<th scope="col">답변상태</th>
												<th scope="col">답변</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="adminQnA" items="${adminQnAList}">
												<tr>
													<th scope="row">${adminQnA.rownum}</th>
													<td>${adminQnA.board_category }</td>
													<td>${adminQnA.board_title }</td>
													<td>${adminQnA.user_id }</td>
													<td>
														<fmt:formatDate value="${adminQnA.board_date }" pattern="yyyy.MM.dd"/>
													</td>
													<c:choose>
														<c:when test="${ adminQnA.board_answer eq null }">
															<c:if test="${ adminQnA.board_fix eq true }">
																<td><span class="badge bg-info">***</span></td>
															</c:if>
															<c:if test="${ adminQnA.board_fix eq false }">
																<td><span class="badge bg-warning">답변전</span></td>
															</c:if>
														</c:when>
														<c:when test="${ adminQnA.board_answer ne null }">
															<c:if test="${ adminQnA.board_fix eq true }">
																<td><span class="badge bg-info">***</span></td>
															</c:if>
															<c:if test="${ adminQnA.board_fix eq false }">
																<td><span class="badge bg-success">답변완료</span></td>
															</c:if>
														</c:when>
													</c:choose>
													<c:choose>
														<c:when test="${ adminQnA.board_fix eq false }">
															<td><a href="answer.mdo?seq=${adminQnA.seq}">
																	<button class="btn btn-primary">답변하기</button>
															</a></td>
														</c:when>
														<c:when test="${ adminQnA.board_fix eq true }">
															<td><a href="detailFAQ.mdo?seq=${adminQnA.seq}">
																	<button class="btn btn-primary"
																		style="background-color: #6c757d; border-color: #6c757d;">내용조회</button>
															</a></td>
														</c:when>
													</c:choose>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<!-- 페이징 처리 -->
						<div class="paging" data-ui="paging" data-sync="false">
							<nav style="float: center;" aria-label="Page navigation example">
								<ul class="pagination justify-content-end">
									<c:choose>
										<c:when test="${paging.nowPage eq 1 }">
											<li class="page-item"><span style="width: auto;"
												class="page-link">Previous</span></li>
										</c:when>
										<c:when test="${paging.nowPage ne 1 }">
											<li class="page-item"><a
												href="/mpweb/qna.mdo?nowPage=${paging.nowPage - 1 }&cntPerPage=${paging.cntPerPage}&set=${paging.set}"
												style="width: auto;" class="page-link">Previous</a></li>
										</c:when>
									</c:choose>
									<c:forEach begin="${paging.startPage }"
										end="${paging.endPage }" var="p">
										<c:choose>
											<c:when test="${p eq paging.nowPage }">
												<li class="page-item"><a
													href="/mpweb/qna.mdo?nowPage=${p }&cntPerPage=${paging.cntPerPage}&set=${paging.set}"
													onclick="return false" class="page-link">${p }</a></li>
											</c:when>
											<c:when test="${p ne paging.nowPage }">
												<li class="page-item"><a
													href="/mpweb/qna.mdo?nowPage=${p }&cntPerPage=${paging.cntPerPage}&set=${paging.set}"
													class="page-link">${p }</a></li>
											</c:when>
										</c:choose>
									</c:forEach>
									<c:choose>
										<c:when test="${paging.endPage eq paging.lastPage}">
											<li class="page-item"><span style="width: auto;"
												class="page-link">Next</span></li>
										</c:when>
										<c:when test="${paging.endPage ne paging.lastPage}">
											<li class="page-item"><a
												href="/mpweb/qna.mdo?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}&set=${paging.set}"
												style="width: auto;" class="page-link">Next</a></li>
										</c:when>
									</c:choose>
								</ul>
							</nav>
						</div>
						<!-- 페이징 처리 끝 -->
					</div>
				</div>
		</div>
		</main>
		<script src="resources/admin/js/app.js"></script>
	</div>
	</div>
</body>

</html>