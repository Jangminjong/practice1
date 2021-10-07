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
										<h3>작가 : </h3>
									</div>
								</div>

								<div class="card">
									<div class="card-body" style="width: auto;">
										<form>
											<div class="mb-3">
												<label class="form-label">작가코드</label> 
												<input type="text" class="form-control" placeholder="seller code" style="width: auto;" readonly="readonly">
											</div>

											<div class="row">
												<div class="col-md-3">
													<label class="form-label">상점 이름</label>
													 <input type="text" class="form-control" placeholder="seller name" style="width: auto;" readonly="readonly">
												</div>
												<div class="col-md-3">
													<label class="form-label">클래스 이름</label> 
													<input type="text" class="form-control" placeholder="seller name" style="width: auto;" readonly="readonly">
												</div>
												<div class="col-md-3">
													<label class="form-label">전화 번호</label> 
													<input type="text" class="form-control" placeholder="seller phone" style="width: auto;" readonly="readonly">
												</div>
											</div>
											<div class="mb-3"></div>
											<div class="row">
												<div class="col-md-3">
													<label class="form-label">사업자 등록번호</label>
													 <input type="text" class="form-control" placeholder="sell number" style="width: auto;" readonly="readonly">
												</div>
												<div class="col-md-3">
													<label class="form-label">작품 / 클래스</label> 
													<input type="text" class="form-control" value="클래스" style="width: auto;" readonly="readonly">
												</div>
												<div class="col-md-3">
													<label class="form-label">카테고리</label> 
													<input type="text" class="form-control" placeholder="category" readonly="readonly"
														style="width: auto;">
												</div>
											</div>
											<div class="mb-3"></div>
											<div class="mb-3">
												<label class="form-label">입점 신청일</label> 
												<input type="text" class="form-control" placeholder="Application date" readonly="readonly"
													style="width: auto;">
											</div>
											<div class="mb-3">
												<label class="form-label">상품 설명</label> 
												<textarea class="form-control" placeholder="내용" rows="5" readonly="readonly"></textarea>
											</div>
											<div class="row">
												<div class="col-12 col-md-6 col-lg-4">
													<div class="card">
														<div class="card-header">
															<h4 class="card-title mb-0">작품 사진</h4>
														</div>
														<img class="card-img-top" src="resources/admin/img/testImg.jpg" alt="Unsplash">
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-md-2 text-center"></div>
												<div class="col-md-2 text-center"></div>
												<div class="col-md-2 text-center"></div>
												<div class="col-md-2 text-center"></div>
												<div class="col-md-2 text-center"></div>
												<div class="col-md-2 text-right">
													<button class="btn btn-primary" type="button" onclick="location.href='storePropose.mdo'">목록보기</button>
												</div>
											</div>
										</form>
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