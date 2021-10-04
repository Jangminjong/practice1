<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
</head>

<body>
	<input type="hidden" id="admin_role" value="${admin_role}">
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
                    <div class="container-fluid p-0">
                        <div class="row mb-2 mb-xl-3">
                            <div class="col-auto d-none d-sm-block">
                                <h3>Admin List</h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 text-center"></div>
                            <div class="col-md-6 text-center" style="margin-bottom: 10px;">
                                <form class="d-none d-sm-inline-block float-right">
                                	<a href="insertAdmin.mdo">
                                   		<button type="button" class="btn btn-warning" id="account_btn">계정 등록</button>
                                   	</a>
                                </form>
                            </div>
                        </div>
                        <div class="row">
                            <div class="card col-12">
                                <div class="card flex-fill">
                                <c:choose>
                                	<c:when test="${admin_role eq 'all'}">
                                    <table class="table table-hover my-0">
                                        <thead>
                                            <tr>
                                                <th scope="col">no</th>
                                                <th scope="col">아이디</th>
                                                <th scope="col">이름</th>
                                                <th scope="col">비밀번호</th>
                                                <th scope="col">관리자 등급</th>
                                                <th scope="col">관리</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="adminList" items="${AdminViewAll}" varStatus="status">
                                            	<tr>
                                            		<td>${status.count}</td>
                                            		<td>${adminList.admin_id}</td>
                                            		<td>${adminList.admin_name}</td>
                                            		<td>${adminList.admin_pwd}</td>
                                            			<c:set var="adminRole" value="${adminList.admin_role}"/>
                                            			<c:choose>
                                            				<c:when test="${adminRole eq 'all'}">
                                            					<td>최고 관리자</td>
                                            				</c:when>
                                            				<c:when test="${adminRole eq 'service'}">
                                            					<td>관리자</td>
                                            				</c:when>
                                            			</c:choose>
                                            		<td>
                                            			<button type="button" class="btn btn-warning" onclick="location.href='adminContent.mdo?admin_id=${adminList.admin_id}&admin_role=${adminList.admin_role}'">수정</button>
                                            			<a href="adminDeleteList.mdo?admin_id=${adminList.admin_id}">
														<button type="button" class="btn btn-primary">삭제</button>
														</a>
                                            		</td>
                                            	</tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                    </c:when>
                                    <c:when test="${admin_role eq 'service'}">
                                    <table class="table table-hover my-0">
                                        <thead>
                                            <tr>
                                                <th scope="col">no</th>
                                                <th scope="col">아이디</th>
                                                <th scope="col">이름</th>
                                                <th scope="col">관리자 등급</th>
                                                <th scope="col">관리</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="adminList" items="${AdminViewAll}" varStatus="status">
                                            	<tr>
                                            		<td>${status.count}</td>
                                            		<td>${adminList.admin_id}</td>
                                            		<td>${adminList.admin_name}</td>
                                            			<c:set var="adminRole" value="${adminList.admin_role}"/>
                                            			<c:choose>
                                            				<c:when test="${adminRole eq 'all'}">
                                            					<td>최고 관리자</td>
                                            				</c:when>
                                            				<c:when test="${adminRole eq 'service'}">
                                            					<td>관리자</td>
                                            				</c:when>
                                            			</c:choose>
                                            		<td>
                                            			<c:choose>
                                            				<c:when test="${admin_name eq adminList.admin_name}">
                                            					<button type="button" class="btn btn-warning" onclick="location.href='adminContent.mdo?admin_id=${adminList.admin_id}&admin_role=${adminList.admin_role}'">수정</button>
                                            				</c:when>
                                            			</c:choose>
                                            		</td>
                                            	</tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                    </c:when>
                                    </c:choose>
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
												href="/mpweb/adminNotice.mdo?nowPage=${paging.nowPage - 1 }&cntPerPage=${paging.cntPerPage}"
												style="width: auto;" class="page-link">Previous</a></li>
										</c:when>
									</c:choose>
									<c:forEach begin="${paging.startPage }"
										end="${paging.endPage }" var="p">
										<c:choose>
											<c:when test="${p eq paging.nowPage }">
												<li class="page-item"><a
													href="/mpweb/adminNotice.mdo?nowPage=${p }&cntPerPage=${paging.cntPerPage}&set=${paging.set}"
													onclick="return false" class="page-link">${p }</a></li>
											</c:when>
											<c:when test="${p ne paging.nowPage }">
												<li class="page-item"><a
													href="/mpweb/adminNotice.mdo?nowPage=${p }&cntPerPage=${paging.cntPerPage}&set=${paging.set}"
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
												href="/mpweb/adminNotice.mdo?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}&set=${paging.set}"
												style="width: auto;" class="page-link">Next</a></li>
										</c:when>
									</c:choose>
								</ul>
							</nav>
						</div>
						<!-- 페이징 처리 끝 -->
                    </div>
                </div>
			</main>
			<script src="resources/admin/js/app.js"></script>
		</div>
	</div>
	<script>
		$(document).ready(function() {
			var role = $('#admin_role').val();
		
			if(role != 'all'){
				$('#account_btn').css({'display': 'none'});
			}
		});
	</script>
	<script>
		$().ready(function (){ 
			$("#adminDelete").click(function (){ 
				Swal.fire({ 
					title: '계정 삭제', 
					text: "이 계정을 삭제하시겠습니까?", 
					icon: 'warning', 
					showCancelButton: true, 
					confirmButtonColor: '#FF7B30', 
					confirmButtonBorderColor : "#FF7B30",
					cancelButtonColor: '#15283D', 
					confirmButtonText: '삭제', 
					cancelButtonText: '취소' 
				}).then((result) => { 
					if (result.isConfirmed) { 
						Swal.fire(
							'계정 삭제', 
							'해당 계정이 삭제되었습니다.', 
						) 
					} 
				}) 
			}); 
		});
	</script>
</body>

</html>