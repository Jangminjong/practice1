<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
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
	
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

<link rel="shortcut icon" href="resources/admin/img/tabIcon.png" />

<title>IDWITH - 관리자</title>

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
								href="userList.mdo">사용자 공지사항</a></li>

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

					<li class="sidebar-item"><a data-target="#category"
						data-toggle="collapse" class="sidebar-link collapsed"> <i
							class="align-middle" data-feather="edit-2"></i> <span
							class="align-middle">카테고리</span>
					</a>
						<ul id="category" class="sidebar-dropdown list-unstyled collapse "
							data-parent="#sidebar">
							<li class="sidebar-item"><a class="sidebar-link"
								href="productCategory.mdo">작품 카테고리</a></li>
							<li class="sidebar-item"><a class="sidebar-link"
								href="classCategory.mdo">클래스 카테고리</a></li>

						</ul></li>

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

				<div class="navbar-collapse collapse">
					<ul class="navbar-nav navbar-align">
						<li class="nav-item dropdown"><a
							class="nav-icon dropdown-toggle" href="#" id="alertsDropdown"
							data-toggle="dropdown">
								<div class="position-relative">
									<i class="align-middle" data-feather="bell"></i>
								</div>
						</a>
							<div
								class="dropdown-menu dropdown-menu-lg dropdown-menu-right py-0"
								aria-labelledby="alertsDropdown">
								<div class="dropdown-menu-header">알림</div>

								<div class="dropdown-menu-footer">
									<a href="#" class="text-muted">모든 알림 보기</a>
								</div>
							</div></li>
						<li class="nav-item dropdown"><a
							class="nav-icon dropdown-toggle" href="#" id="messagesDropdown"
							data-toggle="dropdown">
								<div class="position-relative">
									<i class="align-middle" data-feather="message-square"></i>
								</div>
						</a> <!-- 메세지 -->
							<div
								class="dropdown-menu dropdown-menu-lg dropdown-menu-right py-0"
								aria-labelledby="messagesDropdown">
								<div class="dropdown-menu-header">
									<div class="position-relative"></div>
								</div>

								<div class="dropdown-menu-footer">
									<a href="#" class="text-muted">모든 메세지 보기</a>
								</div>
							</div></li>
						<li class="nav-item dropdown"><a
							class="nav-icon dropdown-toggle d-inline-block d-sm-none"
							href="#" data-toggle="dropdown"> <i class="align-middle"
								data-feather="settings"></i>
						</a> <!-- 관리자 프로필--> <a
							class="nav-link dropdown-toggle d-none d-sm-inline-block"
							href="#"> <i class="align-middle" data-feather="log-out"></i>
								<span class="text-dark">로그아웃</span>
						</a></li>
					</ul>
				</div>
			</nav>

			<main>
				<div class="content">
					<div class="container-fluid p-0">
						<div class="row mb-2 mb-xl-3">
							<div class="col-auto d-none d-sm-block">
								<h3>User List</h3>
							</div>
						</div>
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
									</ul>
								</form>
							</div>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value=""
								id="flexCheckChecked"> <label class="form-check-label"
								for="flexCheckChecked"> 블랙리스트 </label>
						</div>
						<div class="row">
							<div class="card col-12">
								<div class="card flex-fill">
									<table class="table table-hover my-0">
										<thead>
											<tr>
												<th scope="col">아이디</th>
												<th scope="col">연락처</th>
												<th scope="col">등급</th>
												<th scope="col">가입일자</th>
												<th scope="col">탈퇴여부</th>
												<th scope="col">블랙여부</th>
												<th scope="col">블랙</th>

											</tr>
										</thead>
										<tbody>
											<tr>
												<th><a href="user.mdo">client</a></th>
												<td>0101234567</td>
												<td>금손</td>
												<td>2021-08-25</td>
												<td>false</td>
												<td>false</td>
												<td>
													<button type="button" class="btn btn-primary" id="blockAgree">Block</button>
												</td>
											</tr>
											<tr>
												<th><a href="user.mdo">client2</a></th>
												<td>0106547890</td>
												<td>은손</td>
												<td>2021-05-05</td>
												<td>부</td>
												<td>여</td>
												<td>
													<button type="button" class="btn btn-primary" id="blockAgree">Block</button>
												</td>
											</tr>
											<tr>
												<th><a href="user.mdo">client3</a></th>
												<td>0104549875</td>
												<td>아기손</td>
												<td>2021-06-11</td>
												<td>부</td>
												<td>부</td>
												<td>
													<!-- BEGIN primary modal -->
													<button type="button" class="btn btn-primary" id="blockAgree">Block</button>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<nav aria-label="Page navigation example">
							<ul class="pagination justify-content-end">
								<li class="page-item disabled"><a class="page-link"
									href="#" tabindex="-1">Previous</a></li>
								<li class="page-item"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#">Next</a>
								</li>
							</ul>
						</nav>
					</div>
				</div>
			</main>
			<script src="resources/admin/js/app.js"></script>
			<script>
				$().ready(function (){ 
					$("#blockAgree").click(function (){ 
						Swal.fire({ 
							title: '이 계정을 블랙리스트로 설정하시겠습니까?', 
							text: "", 
							icon: 'warning', 
							showCancelButton: true, 
							confirmButtonColor: '#FF7B30', 
							confirmButtonBorderColor : "#FF7B30",
							cancelButtonColor: '#15283D', 
							confirmButtonText: '변경', 
							cancelButtonText: '취소' 
						}).then((result) => { 
							if (result.isConfirmed) { 
								Swal.fire(
									'계정상태가 변경되었습니다.', 
									'해당 사용자는 블랙리스트 처리되었습니다.', 
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