 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

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
					<h3>${admin_name} 님</h3>
					<a class="nav-link d-none d-sm-inline-block" href="adminLogout.mdo"> <i
						class="align-middle" data-feather="log-out" style="color: black;"></i>
						<span class="text-dark">로그아웃</span>
					</a>
				</div>
			</nav>

			<main>
				<div class="content">
					<div class="container-fluid p-0">

						<h1 class="h3 mb-3">입점 신청 내역</h1>

						<ul class="nav nav-tabs">
							<li class="nav-item"><a class="nav-link active"
								data-toggle="tab" href="#tab1" id="#tab1">작품 입점신청</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#tab2" id="#tab2">클래스 입점신청</a></li>
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
												<th scope="col">작가아이디</th>
												<th scope="col">사업자등록번호</th>
												<th scope="col">상점명</th>
												<th scope="col">작품 카테고리</th>
												<th scope="col">신청날짜</th>
												<th scope="col">입점승인/거절</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="watingList" items="${goodsApplyList}"
												varStatus="status">
												<tr>
													<th scope="row">${status.count}</th>
													<td><a href="classPropose.mdo">${watingList.goods_apply_id}</a></td>
													<td>${watingList.goods_apply_bsn}</td>
													<td id="${watingList.store_name}">${watingList.store_name}</td>
													<td id="${watingList.goods_apply_category}">${watingList.goods_apply_category}</td>
													<td>${watingList.goods_apply_date}</td>
													<td>
														<button type="button" class="btn btn-warning"
															id="storeProposeAgree" name="${watingList.goods_apply_id}"
															onclick="storeProposeAgree(this.name, ${watingList.goods_apply_seq}, this.id, 'goods', ${watingList.goods_apply_bsn})">승인</button>
														<button type="button" class="btn btn-primary"
															id="storeProposeDisagree" name="${watingList.goods_apply_id}"
															onclick="storeProposeDisagree(this.name, ${watingList.goods_apply_seq}, this.id, 'goods')">거절</button>
													</td>
												</tr>
											</c:forEach>
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
												<th scope="col">작가이름</th>
												<th scope="col">사업자등록번호</th>
												<th scope="col">신청날짜</th>
												<th scope="col">입점승인/거절</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="classRegList" items="${classRegList}" varStatus="status">
											<input type="hidden" value="${classRegList.class_reg_seq}" />
											<tr>
												<th scope="row">${status.count}</th>
												<td><a href="classPropose.mdo">${classRegList.store_name}</a></td>
												<td>${classRegList.seller_sellno}</td>
												<td>${classRegList.class_reg_date}</td>
												<td>
													<button type="button" class="btn btn-warning"
															id="storeProposeAgree" name="${classRegList.user_id}"
															onclick="storeProposeAgree(this.name, ${classRegList.class_reg_seq}, this.id, 'class', ${classRegList.seller_sellno})">승인</button>
													<button type="button" class="btn btn-primary"
														id="storeProposeDisagree" name="${classRegList.user_id}"
														onclick="storeProposeDisagree(this.name, ${classRegList.class_reg_seq}, this.id, 'class')">거절</button>
												</td>
											</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</main>
			<script src="resources/admin/js/app.js"></script>
			<!-- <script>
		$().ready(function (){ 
			$("#storeProposeAgree").click(function (){ 
				Swal.fire({ 
					title: '입점 신청', 
					text: "이 작가의 입점을 승인하시겠습니까?", 
					icon: 'question', 
					showCancelButton: true, 
					confirmButtonColor: '#FF7B30', 
					confirmButtonBorderColor : "#FF7B30",
					cancelButtonColor: '#15283D', 
					confirmButtonText: '승인', 
					cancelButtonText: '취소' 
				}).then((result) => { 
					if (result.isConfirmed) { 
						Swal.fire(
							'입점 승인', 
							'해당 작가의 입점이 승인되었습니다.', 
						) 
					} 
				}) 
			});
			
			$("#storeProposeDisagree").click(function (){ 
				Swal.fire({ 
					title: '입점거절', 
					text: "이 작가의 입점을 거절하시겠습니까?", 
					icon: 'warning', 
					showCancelButton: true, 
					confirmButtonColor: '#FF7B30', 
					confirmButtonBorderColor : "#FF7B30",
					cancelButtonColor: '#15283D', 
					confirmButtonText: '거절', 
					cancelButtonText: '취소' 
				}).then((result) => { 
					if (result.isConfirmed) { 
						Swal.fire(
							'입점 거절', 
							'해당 작가의 입점이 거절되었습니다', 
						) 
					} 
				}) 
			}); 
			
		});
			</script> -->
			<!-- <script>
		$().ready(function (){ 
			$("#classProposeAgree").click(function (){ 
				Swal.fire({ 
					title: '입점 신청', 
					text: "이 작가의 입점을 승인하시겠습니까?", 
					icon: 'question', 
					showCancelButton: true, 
					confirmButtonColor: '#FF7B30', 
					confirmButtonBorderColor : "#FF7B30",
					cancelButtonColor: '#15283D', 
					confirmButtonText: '승인', 
					cancelButtonText: '취소' 
				}).then((result) => { 
					if (result.isConfirmed) { 
						Swal.fire(
							'입점 승인', 
							'해당 작가의 입점이 승인되었습니다.', 
						) 
					} 
				}) 
			});
			
			$("#classProposeDisagree").click(function (){ 
				Swal.fire({ 
					title: '입점거절', 
					text: "이 작가의 입점을 거절하시겠습니까?", 
					icon: 'warning', 
					showCancelButton: true, 
					confirmButtonColor: '#FF7B30', 
					confirmButtonBorderColor : "#FF7B30",
					cancelButtonColor: '#15283D', 
					confirmButtonText: '거절', 
					cancelButtonText: '취소' 
				}).then((result) => { 
					if (result.isConfirmed) { 
						Swal.fire(
							'입점 거절', 
							'해당 작가의 입점이 거절되었습니다', 
						) 
					} 
				}) 
			}); 
			
		});
		</script> -->
			<script>
				function storeProposeDisagree(user_id, seq, state, store){ 
					var result_data;	
					
					console.log(user_id);
					console.log(seq);
					console.log(state);
					console.log(store);
					
					Swal.fire({ 
							title: '입점거절', 
							text: "이 작가의 입점을 거절하시겠습니까?", 
							icon: 'warning', 
							showCancelButton: true, 
							confirmButtonColor: '#FF7B30', 
							confirmButtonBorderColor : "#FF7B30",
							cancelButtonColor: '#15283D', 
							confirmButtonText: '거절', 
							cancelButtonText: '취소' 
						}).then((result) => { 
							if (result.isConfirmed) { 
								
								var promise = $.ajax({
									url: "${pageContext.request.contextPath}/storeProposeState.mdo",
									type: "GET",
									async: false,
									data: {
											"user_id": user_id,
											"seq": seq,
											"disagree": state,
											"store": store
										},
									success: function(data){
										result_data = data;
									},
									error: function(request, status, error){
										alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
									}
								}); //end ajax
								
								/* 이메일 전송 */
								if(result_data == 1){//승인 거절 시 이메일 전송
									promise.done(function() {
										console.log('이메일 전송 중...');
										
										$.ajax({
											url: "${pageContext.request.contextPath}/sendEmail.mdo",
											type: "GET",
											async: false,
											data: {
													"user_id": user_id,
													"disagree": state
												},
											success: function(data){
												if(data == 1){
													Swal.fire(
															'입점 거절', 
															'해당 작가의 입점이 거절되었습니다', 
														)
													result_data = data;
												}else if(data == 0){
													Swal.fire(
															'거절 오류', 
															'오류가 발생했습니다.',
													)
												}
												
												console.log('이메일 전송 완료');
											},
											error: function(request, status, error){
												alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
											}
										});
									});
								}else if(result_data == 0){//거절 오류 시 이메일 전송 보류
									alert('작가 이메일 전송에 오류가 발생했습니다');
								}
							}//end if
							
						})
				} 
			</script>

			<script>
				function storeProposeAgree(user_id, seq, state, store, seller_sellno){
					var result_data;
					
					console.log(user_id);
					console.log(seq);
					console.log(state);
					console.log(store);
					console.log(seller_sellno);
					
					Swal.fire({ 
						title: '입점 신청', 
						text: "이 작가의 입점을 승인하시겠습니까?", 
						icon: 'question', 
						showCancelButton: true, 
						confirmButtonColor: '#FF7B30', 
						confirmButtonBorderColor : "#FF7B30",
						cancelButtonColor: '#15283D', 
						confirmButtonText: '승인', 
						cancelButtonText: '취소' 
					}).then((result) => { 
						if (result.isConfirmed) {
							var promise = $.ajax({
								url: "${pageContext.request.contextPath}/storeProposeState.mdo",
								type: "GET",
								async: false,
								data: {
										"user_id": user_id,
										"seq": seq,
										"agree": state,
										"store": store
									},
								success: function(data){
									result_data = data;
									console.log('받은 값 : ' + result_data);
								},
								error: function(request, status, error){
									alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
								}
							}); //end ajax
							
							
							if(result_data == 1){//승인 성공 시 작가 등록
								promise.done(function() {
									console.log('작가 등록 중...');
									$.ajax({
										url: "${pageContext.request.contextPath}/sellerInsert.mdo",
										type: "POST",
										async: false,
										data: {
												"user_id": user_id,
												"store": store,
												"seller_sellno": seller_sellno
											},
										success: function(data){
											result_data = data;
											console.log('작가 등록 완료');
										},
										error: function(request, status, error){
											alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
										}
									});
								});
							}else if(result_data == 0){//승인 오류 시 작가 등록 보류
								alert('작가 승인에 오류가 발생했습니다');
							}
							
							/* 이메일 전송 */
							if(result_data == 1){//승인 성공 시 이메일 전송
								promise.done(function() {
									console.log('이메일 전송 중...');
									
									$.ajax({
										url: "${pageContext.request.contextPath}/sendEmail.mdo",
										type: "GET",
										async: false,
										data: {
												"user_id": user_id,
												"store" : store,
												"agree": state
											},
										success: function(data){
											if(data == 1){
												Swal.fire(
														'입점 승인', 
														'해당 작가의 입점이 승인되었습니다.',
												)
												
											}else if(data == 0){
												Swal.fire(
														'승인 오류', 
														'입점 승인의 오류가 발생했습니다.',
												)
											}
											console.log('이메일 전송 완료');
										},
										error: function(request, status, error){
											alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
										}
									});
								});
							}else if(result_data == 0){//승인 오류 시 이메일 전송 보류
								alert('작가 이메일 전송에 오류가 발생했습니다');
							}
							
						}//end if
					})
				}
			</script>
		</div>
	</div>
</body>

</html>