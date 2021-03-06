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
					<div class="row">
						<div class="container-fluid p-0">
							<div class="row mb-2 mb-xl-3">
								<div class="col-auto d-none d-sm-block">
									<h3>일별 현황</h3>
								</div>
							</div>
							<div class="row">
								<div class="col-xl-6 col-xxl-5 d-flex">
									<div class="w-100">
										<div class="row">
											<div class="col-sm-6">
												<div class="card">
													<div class="card-body">
														<h5 class="card-title mb-4">회원수</h5>
														<h1 class="mt-1 mb-3">2,382</h1>
													</div>
												</div>
												<div class="card">
													<div class="card-body">
														<h5 class="card-title mb-4">오늘 매출</h5>
														<h1 class="mt-1 mb-3">3,848,400</h1>
													</div>
												</div>
											</div>
											<div class="col-sm-6">
												<div class="card">
													<div class="card-body">
														<h5 class="card-title mb-4">작가 수</h5>
														<h1 class="mt-1 mb-3">123</h1>
													</div>
												</div>
												<div class="card">
													<div class="card-body">
														<h5 class="card-title mb-4">이번 달 매출</h5>
														<h1 class="mt-1 mb-3">35,645,000</h1>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="col-xl-6 col-xxl-7">
									<div class="card flex-fill w-100">
										<div class="card-header">

											<h5 class="card-title mb-0">연 매출(만원단위)</h5>
										</div>
										<div class="card-body py-3">
											<div class="chart chart-sm">
												<canvas id="chartjs-dashboard-line"></canvas>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="col-12">
							<div class="card">
								<div class="card-header">
									<h5 class="card-title">관리자 게시판</h5>
									<h6 class="card-subtitle text-muted"></h6>
								</div>
								<div class="table-responsive">
									<table class="table mb-0">
										<thead>
											<tr>
												<th scope="col">#</th>
												<th scope="col">게시글</th>
												<th scope="col">작성자</th>
												<th scope="col">날짜</th>
												<th scope="col">조회수</th>

											</tr>
										</thead>
										<tbody>
											<tr>
												<th scope="row">1</th>
												<td>Cell</td>
												<td>Cell</td>
												<td>Cell</td>
												<td>Cell</td>
											</tr>
											<tr>
												<th scope="row">2</th>
												<td>Cell</td>
												<td>Cell</td>
												<td>Cell</td>
												<td>Cell</td>
											</tr>
											<tr>
												<th scope="row">3</th>
												<td>Cell</td>
												<td>Cell</td>
												<td>Cell</td>
												<td>Cell</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</main>

			<script src="resources/admin/js/app.js"></script>
			<script>
				document.addEventListener("DOMContentLoaded", function () {
					var ctx = document.getElementById("chartjs-dashboard-line").getContext("2d");
					var gradient = ctx.createLinearGradient(0, 0, 0, 225);
					gradient.addColorStop(0, "rgba(215, 227, 244, 1)");
					gradient.addColorStop(1, "rgba(215, 227, 244, 0)");
					// Line chart
					new Chart(document.getElementById("chartjs-dashboard-line"), {
						type: "line",
						data: {
							labels: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
							datasets: [{
								label: "",
								fill: true,
								backgroundColor: gradient,
								borderColor: window.theme.primary,
								data: [
									2115,
									1562,
									1584,
									1892,
									1587,
									1923,
									2566,
									2448,
									2805,
									3438,
									2917,
									3327
								]
							}]
						},
						options: {
							maintainAspectRatio: false,
							legend: {
								display: false
							},
							tooltips: {
								intersect: false
							},
							hover: {
								intersect: true
							},
							plugins: {
								filler: {
									propagate: false
								}
							},
							scales: {
								xAxes: [{
									reverse: true,
									gridLines: {
										color: "rgba(0,0,0,0.0)"
									}
								}],
								yAxes: [{
									ticks: {
										stepSize: 1000
									},
									display: true,
									borderDash: [3, 3],
									gridLines: {
										color: "rgba(0,0,0,0.0)"
									}
								}]
							}
						}
					});
				});
			</script>
			<script>
				document.addEventListener("DOMContentLoaded", function () {
					document.getElementById("datetimepicker-dashboard").flatpickr({
						inline: true,
						prevArrow: "<span class=\"fas fa-chevron-left\" title=\"Previous month\"></span>",
						nextArrow: "<span class=\"fas fa-chevron-right\" title=\"Next month\"></span>",
					});
				});
			</script>
		</div>
	</div>
</body>

</html>