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

<title>IDWITH - 관리자</title>

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
					<div class="row">
						<div class="container-fluid p-0">

							<div class="row mb-2 mb-xl-3">
								<div class="col-auto d-none d-sm-block">
									<h3>회원 : client</h3>
									<!--회원 아이디 가지고 오기!-->
								</div>
							</div>

							<div class="card">
								<div class="card-body" style="width: auto;">
									<form>
										<div class="mb-3">
											<label class="form-label">아이디</label> 
											<input type="text"
												class="form-control" placeholder="client"
												style="width: auto;" disabled>
										</div>
										<!-- 쿠폰 리스트에 있는 쿠폰 코드이면 쿠폰 코드 사용 불가 alert-->
										<div class="mb-3">
											<label class="form-label">회원 이름</label> 
											<input type="text"
												class="form-control" placeholder="이예지" style="width: auto;">
										</div>
										<div class="mb-3">
											<label class="form-label">전화번호</label> 
											<input type="text"
												class="form-control" placeholder="010-1234-5678"
												style="width: auto;">
										</div>
										<div class="mb-3">
											<label class="form-label">우편번호</label> 
											<input type="text"
												class="form-control" placeholder="zipcode"
												style="width: auto;">
										</div>
										<div class="mb-3">
											<label class="form-label">주소</label>
											<input type="text"
												class="form-control" placeholder="인천 광역시 부평구 대정로 90번길 7">
										</div>
										<div class="mb-3">
											<label class="form-label">상세 주소</label> 
											<input type="text"
												class="form-control" placeholder="address2">
										</div>
										<div class="row">
											<div class="col-md-3">
												<label class="form-label">회원등급</label> 
												<input type="text"
													class="form-control" placeholder="금손" style="width: auto;"
													id="cpStartDate">
											</div>
											<div class="col-md-3">
												<label class="form-label">누적 구매횟수</label> 
												<input type="text"
													class="form-control" placeholder="누적 구매횟수"
													style="width: auto;" id="cpEndDate">
											</div>
											<!-- 쿠폰 발행일보다 쿠폰 마감일이 앞설때 alert
												쿠폰 마감일이 발행일의 3개월 이후일때 alert-->
											<div class="col-md-3">
												<label class="form-label">누적 구매액</label> 
												<input type="text"
													class="form-control" placeholder="누적 구매액"
													style="width: auto;" id="cpEndDate">
											</div>
											<div class="col-md-3">
												<label class="form-label">가입일</label> 
												<input type="text"
													class="form-control" placeholder="가입일" style="width: auto;"
													id="cpEndDate">
											</div>
										</div>
									</form>

								</div>
							</div>
							<div class="row">
								<div class="col-md-2 text-center"></div>
								<div class="col-md-2 text-center"></div>
								<div class="col-md-2 text-center"></div>
								<div class="col-md-2 text-center"></div>
								<div class="col-md-2 text-center"></div>
								<div class="col-md-2 text-center">
									<a href="userList.mdo">
										<button class="btn btn-primary">목록보기</button>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</main>
			<script src="resources/admin/js/app.js"></script>
		</div>
	</div>
</body>

</html>