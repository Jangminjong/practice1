<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="resources/admin/js/admin.js"></script>
</head>

<body>
	<input type="hidden" id="admin_role" value="${admin_role }">
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
							class="align-middle">매출 &amp; 정산</span>
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
						<h4>${admin_name} 님</h4>
						<a class="nav-link d-none d-sm-inline-block" href="adminLogout.mdo"> 
							<i class="align-middle" data-feather="log-out" style="color: black;"></i>
								<span class="text-dark">로그아웃</span>
						</a>
				</div>
			</nav>

			<main>
				<div class="content">
					<div class="container-fluid p-0">
						<h1 class="h3 mb-3">Calculate</h1>
						<div class="col-12 col-md-12 col-lg-12">
							<div class="row">
								<div class="col-md-6 text-center"></div>
								<div class="col-md-6 text-center" style="margin-bottom: 10px;">
									<form class="d-none d-sm-inline-block float-right">
										<ul class="nav nav-pills card-header-pills pull-right">
											<div class="input-group">
												<input type="text" class="form-control"
													placeholder="검색 키워드를 입력하세요!">&nbsp; <span
													class="input-group-btn">
													<button class="btn btn-warning" type="button">찾기</button>
												</span>
											</div>
										</ul>
									</form>
								</div>
							</div>

						<ul class="nav nav-tabs">
							<li class="nav-item"><a class="nav-link active"
								data-toggle="tab" href="#qwe">상품작가 정산</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#asd">클래스작가 정산</a></li>
						</ul>

						<div class="tab-content">
							<div class="tab-pane fade show active" id="qwe">
								<table class="table table-hover">
									<thead>
										<tr>
											<th scope="col">순번</th>
											<th scope="col">아이디</th>
											<th scope="col">상점 이름</th>
											<th scope="col">매출액</th>
											<th scope="col">수수료</th>
											<th scope="col">후원금액</th>
											<th scope="col">정산 금액</th>
											<th scope="col">정산하기</th>
										</tr>
									</thead>
									<tbody>
											<c:forEach var="goodsOrder" items="${goodsOrderList}" varStatus="i" >
												<tr>
													<th scope="row">${goodsTotal-((goodsPaging.nowPage-1)*10)-i.index}</th>
													<td>${goodsSellerList[i.index].user_id}</td>
													<td>${goodsSellerList[i.index].store_name}</td>
													<td><fmt:formatNumber type="number" value="${goodsOrder.order_detail_price}"/></td>
													<td><fmt:formatNumber type="number" maxFractionDigits="0" value="${goodsOrder.order_detail_price*0.1}"/></td>
													<td><fmt:formatNumber type="number" value="${goodsOrder.order_detail_donation}"/>
													<td><fmt:formatNumber type="number" maxFractionDigits="0" value="${goodsOrder.order_detail_price*0.9+goodsOrder.order_detail_donation}"/></td>
													<td>
														<button type="button"  class="btn btn-warning" onclick="goodsCalcRes('${goodsOrder.order_detail_code}')">
															정산</button>
													</td>
												</tr>
											</c:forEach>
									</tbody>
								</table>
								 <!-- 페이징 -->
									<div class="paging" data-ui="paging" data-sync="false">
							<nav style="float: center;" aria-label="Page navigation example">
								<ul class="pagination justify-content-end">
													<c:choose>
														<c:when test="${goodsPaging.nowPage eq 1 }">
														<li class="page-item">
															<span style="width: auto;" class="page-link">Previous</span>
														</li>
														</c:when>
														<c:when test="${goodsPaging.nowPage ne 1 }">
														<li class="page-item">
															<a
																href="calculate.mdo?goodsNowPage=${goodsPaging.nowPage - 1 }&goodsCntPerPage=${goodsPaging.cntPerPage}&classNowPage=${classPaging.nowPage }&classCntPerPage=${classPaging.cntPerPage}"
																style="width: auto;" class="page-link">Previous</a>
														</li>
														</c:when>
													</c:choose>
													<c:forEach begin="${goodsPaging.startPage }"
														end="${goodsPaging.endPage }" var="p">
														<c:choose>
															<c:when test="${p eq goodsPaging.nowPage }">
															<li class="page-item">
																<a
																	href="calculate.mdo?goodsNowPage=${p }&goodsCntPerPage=${goodsPaging.cntPerPage}&classNowPage=${classPaging.nowPage}&classCntPerPage=${classPaging.cntPerPage}"
																	class="page-link" onclick="return false">${p }</a>
																</li>
															</c:when>
															<c:when test="${p ne goodsPaging.nowPage }">
															<li class="page-item">
																<a
																	href="calculate.mdo?goodsNowPage=${p }&goodsCntPerPage=${goodsPaging.cntPerPage}&classNowPage=${classPaging.nowPage}&classCntPerPage=${classPaging.cntPerPage}" class="page-link">${p }</a>
															</li>
															</c:when>
														</c:choose>
													</c:forEach>
													<c:choose>
														<c:when
															test="${goodsPaging.endPage eq goodsPaging.lastPage}">
															<li class="page-item">
																<span style="width: auto;" class="page-link">Next</span>
															</li>
														</c:when>
														<c:when
															test="${goodsPaging.endPage ne goodsPaging.lastPage}">
															<li class="page-item">
															<a
																href="calculate.mdo?goodsNowPage=${goodsPaging.endPage+1 }&goodsCntPerPage=${goodsPaging.cntPerPage}&classNowPage=${classPaging.nowPage}&classCntPerPage=${classPaging.cntPerPage}"
																style="width: auto;" class="page-link">Next</a>
															</li>
														</c:when>
													</c:choose>
													<!-- <a href="/w/board/notice?&amp;page=1" class="active">1</a> <a
													href="/w/board/notice?&amp;page=2" class="">2</a> <a
													href="/w/board/notice?&amp;page=2" class="next" aria-label="다음">
													<span>다음</span> <i class="fa fa-chevron-right" disabled=""></i>
												</a> -->
											</ul>
										</nav>
									</div>
								</div>
							<div class="tab-pane fade" id="asd">
								<table class="table table-hover">
									<thead>
										<tr>
											<th scope="col">순번</th>
											<th scope="col">아이디</th>
											<th scope="col">상점 이름</th>
											<th scope="col">매출액</th>
											<th scope="col">수수료</th>
											<th scope="col">후원금</th>
											<th scope="col">정산 금액</th>
											<th scope="col">정산하기</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="classOrder" items="${classOrderList}" varStatus="i" >
												<tr>
													<th scope="row">${classTotal-((classPaging.nowPage-1)*10)-i.index}</th>
													<td>${classSellerList[i.index].user_id}</td>
													<td>${classSellerList[i.index].store_name}</td>
													<td><fmt:formatNumber type="number" value="${classOrder.class_order_price}"/></td>
													<td><fmt:formatNumber type="number" maxFractionDigits="0" value="${classOrder.class_order_price*0.1}"/></td>
													<td><fmt:formatNumber type="number" value="${classOrder.class_order_donation}"/>
													<td><fmt:formatNumber type="number" maxFractionDigits="0" value="${classOrder.class_order_price*0.9 + classOrder.class_order_donation}"/></td>
													<td>
														<button type="button"  class="btn btn-warning" onclick="classCalcRes('${classOrder.class_order_seq}')">
															정산</button>
													</td>
												</tr>
											</c:forEach>
									</tbody>
								</table>
								<!-- 페이징 -->
		                        <div class="paging" data-ui="paging" data-sync="false">
							<nav style="float: center;" aria-label="Page navigation example">
								<ul class="pagination justify-content-end">
											<c:choose>
												<c:when test="${classPaging.nowPage eq 1 }">
												<li class="page-item">
													<span style="width: auto;" class="page-link">Previous</span></li>
												</c:when>
												<c:when test="${classPaging.nowPage ne 1 }">
													<li class="page-item"><a
														href="calculate.mdo?classNowPage=${classPaging.nowPage - 1 }&classCntPerPage=${classPaging.cntPerPage}&goodsNowPage=${goodsPaging.nowPage }&goodsCntPerPage=${goodsPaging.cntPerPage}"
														style="width: auto;" class="page-link">Previous</a></li>
												</c:when>
											</c:choose>
											<c:forEach begin="${classPaging.startPage }" end="${classPaging.endPage }" var="p">
												<c:choose>
													<c:when test="${p eq classPaging.nowPage }">
														<li class="page-item">
														<a
															href="calculate.mdo?classNowPage=${p }&classCntPerPage=${classPaging.cntPerPage}&goodsNowPage=${goodsPaging.nowPage}&goodsCntPerPage=${goodsPaging.cntPerPage}"
															class="page-link" onclick="return false">${p }</a></li>
													</c:when>
													<c:when test="${p ne classPaging.nowPage }">
														<li class="page-item">
														<a
															href="calculate.mdo?classNowPage=${p }&classCntPerPage=${classPaging.cntPerPage}&goodsNowPage=${goodsPaging.nowPage}&goodsCntPerPage=${goodsPaging.cntPerPage}" class="page-link">${p }</a>
														</li>
													</c:when>
												</c:choose>
											</c:forEach>
											<c:choose>
												<c:when test="${classPaging.endPage eq classPaging.lastPage}">
													<li class="page-item">
													<span style="width: auto;" class="page-link">Next</span></li>
												</c:when>
												<c:when test="${classPaging.endPage ne classPaging.lastPage}">
													<li class="page-item">
													<a
														href="calculate.mdo?classNowPage=${classPaging.endPage+1 }&classCntPerPage=${classPaging.cntPerPage}&goodsNowPage=${goodsPaging.nowPage}&goodsCntPerPage=${goodsPaging.cntPerPage}"
														style="width: auto;" class="page-link">Next</a></li>
												</c:when>
											</c:choose>
											<!-- <a href="/w/board/notice?&amp;page=1" class="active">1</a> <a
													href="/w/board/notice?&amp;page=2" class="">2</a> <a
													href="/w/board/notice?&amp;page=2" class="next" aria-label="다음">
													<span>다음</span> <i class="fa fa-chevron-right" disabled=""></i>
												</a> -->
											</ul>
										</nav>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</main>
			<script src="resources/admin/js/app.js"></script>
			<script src="resources/admin/js/calc.js"></script>
			<script>
				/* $().ready(function (){ 
					$("#productCalculate").click(function (){ 
						Swal.fire({ 
							title: '', 
							text: "작품 작가님의 정산을 진행하시겠습니까?", 
							icon: 'warning', 
							showCancelButton: true, 
							confirmButtonColor: '#FF7B30', 
							confirmButtonBorderColor : "#FF7B30",
							cancelButtonColor: '#15283D', 
							confirmButtonText: '정산', 
							cancelButtonText: '취소' 
						}).then((result) => { 
							if (result.isConfirmed) { 
								Swal.fire(
									'정산되었습니다', 
									'정산 내용은 작가님 메일로 전송되었습니다.', 
								) 
							} 
						}) 
					}); 
				}); */
			</script>
			<script>
				$().ready(function (){ 
					$("#classCalculate").click(function (){ 
						Swal.fire({ 
							title: '', 
							text: "클래스 작가님의 정산을 진행하시겠습니까?", 
							icon: 'warning', 
							showCancelButton: true, 
							confirmButtonColor: '#FF7B30', 
							confirmButtonBorderColor : "#FF7B30",
							cancelButtonColor: '#15283D', 
							confirmButtonText: '정산', 
							cancelButtonText: '취소' 
						}).then((result) => { 
							if (result.isConfirmed) { 
								Swal.fire(
									'정산되었습니다', 
									'정산 내용은 작가님 메일로 전송되었습니다.', 
								) 
							} 
						}) 
					}); 
				});
			</script>
			<script>
				/* $().ready(function () {
		            $("#noSuperAdmin").click(function () {
		                Swal.fire({
		                    icon: 'error',
		                    title: 'No SuperAdmin',
		                    text: '정산은 최고관리자님만 가능합니다.',
		                });
		            });
		        }); */
		        
			</script>
		</div>
	</div>
</body>
</html>