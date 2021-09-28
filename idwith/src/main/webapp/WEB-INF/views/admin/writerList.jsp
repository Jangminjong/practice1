<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
					class="align-middle"> <img
						src="resources/admin/img/white_logo.png"
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
						href="qna.mdo"> <i class="align-middle" data-feather="bell"></i>
							<span class="align-middle">QnA</span>
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
						href="category.mdo"> <i class="align-middle"
							data-feather="edit-2"></i> <span class="align-middle">카테고리</span>
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

				<div class="navbar-collapse collapse"
					style="display: flex; justify-content: flex-end;">
					<a class="nav-link d-none d-sm-inline-block" href="#"> <i
						class="align-middle" data-feather="log-out" style="color: black;"></i>
						<span class="text-dark">로그아웃</span>
					</a>
				</div>
			</nav>

			<main>
				<div class="content">
					<div class="container-fluid p-0">
						<h1 class="h3 mb-3">작가 목록</h1>
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
									data-toggle="tab" href="#tab1">상품작가</a></li>
								<li class="nav-item"><a class="nav-link" data-toggle="tab"
									href="#tab2">클래스작가</a></li>
							</ul>
						</div>
						<div class="card-body">
							<div class="tab-content">
								<div class="tab-pane fade show active" id="tab1" role="tabpanel">
									<div class="table-responsive">
										<table class="table mb-0">
											<thead>
												<tr>
													<th scope="col">#</th>
													<th scope="col">작가코드</th>
													<th scope="col">작가이름</th>
													<th scope="col">입점날짜</th>
													<th scope="col">입점취소</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<th scope="row">1</th>
													<td><a href="productWriter.mdo">Seller1</a></td>
													<td>시루아네</td>
													<td>2021-06-02</td>
													<td>
														<button type="button" class="btn btn-warning" id="storeDelete">입점취소</button>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<div class="tab-pane fade active" id="tab2" role="tabpanel">
									<div class="table-responsive">
										<table class="table mb-0">
											<thead>
												<tr>
													<th scope="col">#</th>
													<th scope="col">작가코드</th>
													<th scope="col">작가이름</th>
													<th scope="col">입점날짜</th>
													<th scope="col">입점취소</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<th scope="row">1</th>
													<td><a href="classWriter.mdo">Seller2</a></td>
													<td>일일일</td>
													<td>2020-12-31</td>
													<td>
														<button type="button" class="btn btn-warning" id="storeDelete">입점취소</button>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
		</div>
	</div>
	</main>
	<script src="resources/admin/js/app.js"></script>
	<script>
				$().ready(function (){ 
					$("#storeDelete").click(function (){ 
						Swal.fire({ 
							title: '입점취소', 
							text: "해장 작가의 입점을 취소하겠습니까?", 
							icon: 'warning', 
							showCancelButton: true, 
							confirmButtonColor: '#FF7B30', 
							confirmButtonBorderColor : "#FF7B30",
							cancelButtonColor: '#15283D', 
							confirmButtonText: '취소', 
							cancelButtonText: '닫기' 
						}).then((result) => { 
							if (result.isConfirmed) { 
								Swal.fire(
									'입점 취소', 
									'해당 작가의 입점이 취소되었습니다', 
								) 
							} 
						}) 
					}); 
				});
	</script>
</body>
</html>