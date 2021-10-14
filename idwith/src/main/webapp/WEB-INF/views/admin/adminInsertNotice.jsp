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

<link rel="shortcut icon" href="resources/admin/img/tabIcon.png" />

<title>IDWITH - 관리자</title>

<link href="resources/admin/css/app.css" rel="stylesheet">

<script type="text/javascript" src="resources/admin/js/admiNotice.js"></script>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    
    <script type="text/javascript">
		$(document).ready(function() {
			$("notice-admin-submit").click(function () {
				var title = $("adminBoardTitle").val();
				var content = $("amdinBoardContent").val();
				
				if(title == "") {
					alert("제목을 입력하세요");
					document.adminNoticeForm.title.focus();
					return;
				}
				if(content == "") {
					alert("제목을 입력하세요");
					document.adminNoticeForm.content.focus();
					return;
				}
			});
		});
	</script>

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
									<h3>Notice</h3>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="card">
					<div class="card-body">
						<form id="form-notice-admin" name="adminNoticeForm"
							action="insertNotice.mdo" method="post" onsubmit="false" enctype="multipart/form-data">
							<div class="mb-3">
								<label class="form-label">Notice Title</label> <input
									type="text" class="form-control" name="adminBoardTitle" id="adminBoardTitle"
									placeholder="제목" style="width: auto;">
							</div>
							<div class="mb-3">
								<label class="form-label">Content</label>
								<textarea class="form-control" name="amdinBoardContent" id="amdinBoardContent"
									placeholder="내용" rows="10"></textarea>
							</div>
							<div class="mb-3">
								<div class="upload-group">
                                   <label class="input-group-text" for="inputGroupFile01">Upload</label>
                                   <button type="button" class="addimagegroup" style="align-content: " onclick="inputGroupAdd()">업로드 파일 추가</button>
                                </div>
                                <div class="image-group">
                                   <div class="input-group mb-3">
                                      <input type="file" class="form-control" name="file" id="imageinput1">
                                      <button style="display : none;" id="canclebt">업로드 파일 취소</button>
                                   </div>                                 
                                </div>
                                <div class="addImage-group">
                                </div>
							</div>
							<div class="row">
								<div class="col-md-3 text-center"></div>
								<div class="col-md-3 text-center"></div>
								<div class="col-md-3 text-center"></div>
								<div class="col-md-3 text-right">
									<input class="btn btn-primary" type="submit" id="notice-admin-submit" value="등록" />
									<input class="btn btn-primary" type="reset" value="초기화" />
									<input class="btn btn-primary" type="button" onclick="location.href='adminNotice.mdo'" value="목록" />
								</div>
							</div>
						</form>
					</div>
				</div>
			</main>
		</div>
	</div>
	<script src="resources/admin/js/app.js"></script>
	<script type="text/javascript">
		var imgInt = 1;
		var imgInput = "imageinput";
		function inputGroupAdd() {
			imgInt += 1;
			// input 내용 복사 및 id설정
			var inputClone = $("#imageinput1").clone().prop('id', imgInput + imgInt);
			// button 내용 복사 및 display 설정, id값 설정
			var buttonClone = $("#canclebt").clone().css({'display' : ''}).prop('id', imgInput + imgInt);
			buttonClone.on('click', {
				inputid : imgInput + imgInt
			}, function(event) {
				$("input").remove("#" + event.data.inputid);
				$("button").remove("#" + event.data.inputid);
			});
			$(".addImage-group").append(inputClone);
			console.log(buttonClone.val());
			$(".addImage-group").append(buttonClone);
			console.log(imgInput + imgInt);
		}
	</script>
</body>

</html>