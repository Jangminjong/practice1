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
					<div class="container-fluid p-0">

						<form class="row g-3">
							<div class="col-md-4">
								<label for="inputEmail4" class="form-label">아이디</label> <input
									type="text" class="form-control" value="client"
									aria-label="readonly input example" readonly>
							</div>
							<div class="col-md-3">
								<label for="inputPassword4" class="form-label">이름</label> <input
									type="text" class="form-control" value="이예지"
									aria-label="readonly input example" readonly>
							</div>
							<div class="col-md-3">
								<label for="inputPassword4" class="form-label">전화번호</label> <input
									type="text" class="form-control" value="010-2580-0786"
									aria-label="readonly input example" readonly>
							</div>
							<div class="col-md-3">
								<label for="inputCity" class="form-label">사업자 등록번호</label> <input
									type="text" class="form-control" value="321-55-05842"
									aria-label="readonly input example" readonly>
							</div>
							<div class="col-12">
								<label for="inputAddress" class="form-label">주소</label> <input
									type="text" class="form-control" value="인천 광역시 부평구 대정로 90번길 7"
									aria-label="readonly input example" readonly>
							</div>
							<div class="col-12">
								<label for="inputAddress2" class="form-label ">상세주소</label> <input
									type="text" class="form-control" value="캐슬원 000호"
									aria-label="readonly input example" readonly>
							</div>
							<div class="col-md-2">
								<label for="inputZip" class="form-label">가입일</label> <input
									type="text" class="form-control" value="2021-09-11"
									aria-label="readonly input example" readonly>
							</div>
							<div class="col-12">
								<label for="inputAddress" class="form-label">클래스 주소</label> <input
									type="text" class="form-control" value="서울특별시 종로구 돈화문로 26"
									aria-label="readonly input example" readonly>
							</div>
							<div class="col-12">
								<label for="inputAddress2" class="form-label "> 클래스 상세주소</label>
								<input type="text" class="form-control" value="4층"
									aria-label="readonly input example" readonly>
							</div>
							<div class="row mb-2 mb-xl-3">
								<div class="col-auto d-none d-sm-block">
									<h3></h3>
								</div>

								<div class="col-auto ml-auto text-right mt-n1"></div>
							</div>
							<div class="container">
								<div class="row">
									<div class="col-3">
										<div class="card text-black">
											<div class="card-header bg-light">팔로우 수</div>
											<div class="card-body">
												<p class="card-text">845</p>
											</div>
										</div>
									</div>
									<div class="col-3">
										<div class="card text-black">
											<div class="card-header bg-light">등록 클래수 개수</div>
											<div class="card-body">
												<p class="card-text">4</p>
											</div>
										</div>
									</div>
									<div class="col-3">
										<div class="card text-black">
											<div class="card-header bg-light">총 누적 인원 수</div>
											<div class="card-body">
												<p class="card-text">352</p>
											</div>
										</div>
									</div>
									<div class="col-3">
										<div class="card text-black">
											<div class="card-header bg-light">월 판매액</div>
											<div class="card-body">
												<p class="card-text">1,125,000</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</form>
						<h1 class="h3 mb-3">매출</h1>
						<div class="row">
							<div class="col-12">
								<div class="card flex-fill w-100">
									<div class="card-header">
										<h5 class="card-title">월별 매출 현황</h5>
										<!-- <h6 class="card-subtitle text-muted">A line chart is a way of plotting data points on a line.</h6> -->
									</div>
									<div class="card-body">
										<div class="chart">
											<canvas id="chartjs-line"></canvas>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-2 text-center"></div>
							<div class="col-md-2 text-center"></div>
							<div class="col-md-2 text-center"></div>
							<div class="col-md-2 text-center"></div>
							<div class="col-md-2 text-center"></div>
							<div class="col-md-2 text-center">
								<a href="writerList.mdo">
									<button class="btn btn-primary">목록보기</button>
								</a>
							</div>
						</div>
					</div>
				</div>
			</main>
			<script src="resources/admin/js/app.js"></script>
			<script>
				document.addEventListener("DOMContentLoaded", function() {
					// Line chart
					new Chart(document.getElementById("chartjs-line"), {
						type : "line",
						data : {
							labels : [ "1월", "2월", "3월", "4월", "5월", "6월",
									"7월", "8월", "9월", "10월", "11월", "12월" ],
							datasets : [
									{
										label : "Sales ($)",
										fill : true,
										backgroundColor : "transparent",
										borderColor : window.theme.primary,
										data : [ 2115, 1562, 1584, 1892, 1487,
												2223, 2966, 2448, 2905, 3838,
												2917, 3327 ]
									},
							// {
							// 	label: "Orders",
							// 	fill: true,
							// 	backgroundColor: "transparent",
							// 	borderColor: "#adb5bd",
							// 	borderDash: [4, 4],
							// 	data: [958, 724, 629, 883, 915, 1214, 1476, 1212, 1554, 2128, 1466, 1827]
							// }
							]
						},
						options : {
							maintainAspectRatio : false,
							legend : {
								display : false
							},
							tooltips : {
								intersect : false
							},
							hover : {
								intersect : true
							},
							plugins : {
								filler : {
									propagate : false
								}
							},
							scales : {
								xAxes : [ {
									reverse : true,
									gridLines : {
										color : "rgba(0,0,0,0.05)"
									}
								} ],
								yAxes : [ {
									ticks : {
										stepSize : 500
									},
									display : true,
									borderDash : [ 5, 5 ],
									gridLines : {
										color : "rgba(0,0,0,0)",
										fontColor : "#fff"
									}
								} ]
							}
						}
					});
				});
			</script>
		</div>
	</div>
</body>

</html>