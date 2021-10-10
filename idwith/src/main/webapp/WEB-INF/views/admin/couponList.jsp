<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

<link rel="shortcut icon" href="resources/admin/img/tabIcon.png" />

<title>Idwith[admin]</title>

<link href="resources/admin/css/app.css" rel="stylesheet">
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
									<h3>Coupon List</h3>
								</div>
							</div>

							<div class="row">
								<div class="col-md-2 text-center"></div>
								<div class="col-md-2 text-center"></div>
								<div class="col-md-2 text-center"></div>
								<div class="col-md-2 text-center"></div>
								<div class="col-md-2 text-center"></div>
								<div class="col-md-2 text-right" style="margin-bottom: 10px;">
									<a href="insertCoupon.mdo">
										<button class="btn btn-warning">쿠폰 발행</button>
									</a>
								</div>
							</div>

							<div class="row">
								<div class="col-12">
									<div class="card flex-fill">
										<table class="table table-hover my-0">
											<thead>
												<tr>
													<th>#</th>
													<th>쿠폰 코드</th>
													<th class="d-none d-xl-table-cell">쿠폰 이름</th>
													<th class="d-none d-xl-table-cell">배포 대상</th>
													<th class="d-none d-md-table-cell">쿠폰 금액</th>
													<th>쿠폰 발행일</th>
													<th>쿠폰 종료일</th>
													<th>배포 상태</th>
													<th>배포</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="couponList" items="${couponListAll}" varStatus="couponStatus">
												<tr>
													<td scope="row">${couponStatus.count}</td>
													<td><a href="detailCoupon.mdo?couponCode=${couponList.couponCode}">${couponList.couponCode}</a></td>
													<td class="d-none d-xl-table-cell">${couponList.couponName}</td>
													<td class="d-none d-xl-table-cell">${couponList.couponTarget}</td>
													<td class="d-none d-md-table-cell">${couponList.couponDiscount}원</td>
													<td>
														<fmt:formatDate value="${couponList.couponStartdate}" pattern="yyyy.MM.dd"/>
													</td>
													
													<td>
														<fmt:formatDate value="${couponList.couponEnddate}" pattern="yyyy.MM.dd"/>
													</td>
														<c:set var="status" value="${couponList.couponStatus}" />
														<c:choose>
															<c:when test="${status eq 0}">
																<td><span class="badge bg-warning">배포요청중</span></td>
																<td><button class="btn btn-primary" id="couponRelease">배포</button></td>
															</c:when>
															<c:otherwise>
																<td><span class="badge bg-success">배포완료</span></td>
																<td><button class="btn btn-primary" disabled="disabled">배포</button></td>
															</c:otherwise>
														</c:choose>
												</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							 <!-- 페이징 처리 -->
									<div class="couponPaging" data-ui="couponPaging" data-sync="false">
										<nav style="float: center;" aria-label="Page navigation example">
											<ul class="pagination justify-content-end">
												<c:choose>
													<c:when test="${couponPaging.nowPage eq 1 }">
														<li class="page-item"><span style="width: auto;"
															class="page-link">Previous</span></li>
													</c:when>
													<c:when test="${couponPaging.nowPage ne 1 }">
														<li class="page-item"><a
															href="/mpweb/couponList.mdo?nowPage=${couponPaging.nowPage - 1 }&cntPerPage=${couponPaging.cntPerPage}"
															style="width: auto;" class="page-link">Previous</a></li>
													</c:when>
												</c:choose>
												<c:forEach begin="${couponPaging.startPage }"
													end="${couponPaging.endPage }" var="p">
													<c:choose>
														<c:when test="${p eq couponPaging.nowPage }">
															<li class="page-item"><a
																href="/mpweb/couponList.mdo?nowPage=${p }&cntPerPage=${couponPaging.cntPerPage}"
																onclick="return false" class="page-link">${p }</a></li>
														</c:when>
														<c:when test="${p ne couponPaging.nowPage }">
															<li class="page-item"><a
																href="/mpweb/couponList.mdo?nowPage=${p }&cntPerPage=${couponPaging.cntPerPage}"
																class="page-link">${p }</a></li>
														</c:when>
													</c:choose>
												</c:forEach>
												<c:choose>
													<c:when test="${couponPaging.endPage eq couponPaging.lastPage}">
														<li class="page-item"><span style="width: auto;"
															class="page-link">Next</span></li>
													</c:when>
													<c:when test="${couponPaging.endPage ne couponPaging.lastPage}">
														<li class="page-item"><a
															href="/mpweb/couponList.mdo?nowPage=${couponPaging.endPage+1 }&cntPerPage=${couponPaging.cntPerPage}"
															style="width: auto;" class="page-link">Next</a></li>
													</c:when>
												</c:choose>
											</ul>
										</nav>
									</div>
                                </div>
							</div>
						</div>
						</div>
						</main>
			<script src="resources/admin/js/app.js"></script>
			<script>
				$().ready(function (){ 
					$("#couponRelease").click(function (){ 
						Swal.fire({ 
							title: '쿠폰 배포', 
							text: "이 쿠폰을 배포하시겠습니까?", 
							icon: 'question', 
							showCancelButton: true, 
							confirmButtonColor: '#FF7B30', 
							confirmButtonBorderColor : "#FF7B30",
							cancelButtonColor: '#15283D', 
							confirmButtonText: '배포', 
							cancelButtonText: '취소' 
						}).then((result) => { 
							if (result.isConfirmed) { 
								Swal.fire(
									'쿠폰 배포', 
									'해당 쿠폰이 배포되었습니다.', 
								) 
							} 
						}) 
					}); 
				});
			</script>
		</div>
	</div>
</body>

</html>