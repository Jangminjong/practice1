<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>

<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="naver-site-verification"
	content="a8c6e5633b597db7b48d05e4a7d247011f6794ec" />
<meta name="google-site-verification"
	content="NnaPRa-jWBb5SnBiwjEZkMqm1pFS2Y8mVdUG0nJqO4c" />
<title>아이디위드 - 핸드메이드, 수공예, 수제 먹거리</title>
<meta name="theme-color" content="#ffffff" />
<link rel="manifest" href="/manifest.json">
<
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=5.0, user-scalable=0 viewport-fit=cover" />
<meta name="application-name" content="아이디위드" />
<meta name="keywords" content="핸드메이드, 수공예, 수제 먹거리" />
<meta property="fb:app_id" content="1410666675867984" />
<meta name="description"
	content="취향 맞춤 작품 구매부터 취미 생활까지, 아이디위드로 일상에 특별함을 잇다!" />
<meta property="og:title" content="핸드메이드 라이프스타일 플랫폼, 아이디위드" />
<meta property="og:type" content="website" />
<meta property="og:description"
	content="취향 맞춤 작품 구매부터 취미 생활까지, 아이디위드로 일상에 특별함을 잇다!" />
<meta property="og:url" content="http://www.idus.com/c/order" />
<meta property="og:image"
	content="http://www.idus.com/resources/dist/images/ogimg-idus.png?ver=2.0" />
<link rel="canonical" href="http://www.idus.com/c/order" />

<!-- project src -->
<link rel="icon" href="/resources/favicon_32.ico" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/mypage.css" />
<link rel="stylesheet" href="resources/css/idus.web.min.css" />
<link rel="stylesheet" href="resources/css/vendor.client.min.css" />

</head>
<body>
	<div class="wrap">
		<div class="head_banner_group"></div>

		<div id="skip-to-content">
			<a href="#gnb">메뉴목록으로 바로가기</a> <a href="#content">컨텐츠로 바로가기</a>
		</div>

		<jsp:include page="../header_goods.jsp" />
		<div class="dimmed-background"></div>
		<div id="content" class="content">
			<div class="inner-w layout-split" data-layout-split="orderlist">
				<aside class="my-info">
					<!--메뉴바-->
					<div class="profile-area">
						<div class="outline">
							<label data-profile="image" class="img-bg profile-img"
								style="background-image: url(https://image.idus.com/image/files/d247655ca3e545e89a48a43aa9318b3f.jpg)">
								<input data-change-profile="image" type="file" name="image"
								id="profile-image" class="profile-image-input"
								accept=".png, .jpg, .jpeg"> <span class="link-style">수정</span>

								<a href="/w/me/profile/image" data-modal-trigger="modal-link"
								data-modal-id="modal-profile" class="profile-modal-open"
								style="visibility: hidden">이미지 변경 모달</a>
							</label>
						</div>
						<div class="area-txt">
							<a href="mypage_level.do"> <span class="sp-icon grade-01-s"></span>
								<span>아기손 &gt;</span>
							</a> <strong data-profile="name">OOO</strong>
						</div>
					</div>

					<div class="my-point clf">
						<a href="mypage_point.do" class="inner fl"> <span class="label">적립금</span>
							<em>0 P</em>
						</a> <a href="mypage_coupon.do" class="fr"> <span class="label">쿠폰</span>
							<em>2</em>
						</a>
					</div>
					<div data-vue="frequency-event-mobile"></div>
					<div class="my-menu">
						<em>MY MENU</em>
						<nav>
							<b> <span>주문 배송</span>
							</b> <a href="mypage_order_goods.do" class="">주문내역</a> <a
								href="mypage_order_return.do" class="">취소/환불내역</a> <b> <span>알림
									및 메시지</span>
							</b> <a href="alarm.do" class="">알림</a> <a href="message.do"
								class="">메시지</a> <b> <span>나의 구매후기</span>
							</b> <a href="mypage_review_before.do" class="">후기 쓰기</a> <a
								href="mypage_review_after.do" class="">내가 쓴 후기</a> <b> <span>관심리스트</span>
							</b> <a href="mypage_interest_goods.do" class="">찜 목록</a> <a
								href="mypage_follow.do" class="">팔로우하는 작가</a> <a
								href="mypage_recent.do" class="">최근 본 작품</a> <b> <span>할인혜택</span>
							</b> <a href="mypage_coupon.do" class="">쿠폰함</a> <a href="mypage_point.do"
								class="">적립금</a> <b> <span>내 정보</span>
							</b> <a href="mypage_level.do" class="">회원 등급</a> <a
								href="mypage_info.do" class="">회원 정보 관리</a> <a
								href="mypage_address.do" class="">주소(배송지) 관리</a>
						</nav>
					</div>
				</aside>
				<section>
					<div class="title-style no-mt clf">
						<span class="txt fl">예약 내역</span>
					</div>
					<div class="ui_tab_group--3 favorite">
						<a href="mypage_order_goods.do" class="ui_tab_group__tab"
							data-state="none" style="width: 50%;"> 작품 </a> <a href="mypage_order_class.do"
							class="ui_tab_group__tab active" data-state="active"
							style="width: 50%;">클래스</a>
					</div>
					<c:if test="${fn:length(classOrderList) eq 0}">
					<div class="banner-empty">
						<img src="resources/images/index/idwith_logo_back.png" >
						<p>예약 내역이 없습니다.</p>
						<a href="class_index.do" class="btn btn-l btn-point">클래스 구경하러 가기</a>
					</div>
					</c:if>
					<c:forEach var="classOrder" items="${classOrderList }">
					<table class="table-style disable-ui type2 " data-active="true">
						<colgroup>
							<col>
							<col style="width: 120px">
							<col style="width: 120px">
						</colgroup>
						<thead>
							<tr>
								<th>결제 완료</th>
								<th colspan="2"><a
									href="class_order_detail.do?marchant_uid=${classOrder.marchant_uid }"> <span>${classOrder.class_order_price }</span>
										<i class="fa fa-chevron-right" aria-hidden="true"></i>
								</a></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									<div class="list-item">
										<div class="area-img">
											<input class="bp" data-ui="list-checker" name="prd-name"
												type="checkbox" value="some-prd" checked="">
											<div class="img-bg"
												style="background-image: url(resourecs/images/category_class/${classOrder.class_open_photo[0]})"></div>
										</div>
										<div class="area-txt">
											<div class="list-head">
												<div class="row">
													<div class="col">
														<a href="class_detail_content.do?class_open_class_code=${classOrder.class_order_code }"
															class="title-txt" for="prd-name">${classOrder.class_open_name }</a>
													</div>
													<div class="col icon">
														<span class="ico outline negative">결제 완료</span>
													</div>
												</div>
											</div>
											<ul class="list-options">
												<li>
													<span class="option-txt">${classOrder.class_order_date } </span>
													<span class="option-txt">${classOrder.class_order_time } </span>
													<em class="option-count">${classOrder.class_order_people }명</em>
												</li>
											</ul>
										</div>
									</div>
								</td>
								<td class="td-controller wow-b row fixed">
									<div class="col">
										<span class="txt">${classOrder.store_name }</span>
									</div>
									<div class="col">
										<a href="message_detail.do?msgd="
											class="btn btn-s btn-white" type="button">메시지로 문의</a>
									</div>

								</td>
								<td class="td-controller row">
									<div class="col">
										<a href="payment_class_cancel.do?marchant_uid=${classOrder.marchant_uid }"
											class="btn btn-m btn-white" >예약취소</a>
										<input type="hidden" id="class-order-price" value="${classOrder.class_order_price }"/>
									</div>
								</td>

							</tr>
						</tbody>
					</table>
					</c:forEach>
					<!-- 주문코드는 table이 반복 -->
				</section>
			</div>
		</div>

		
		<a href="#header" class="to-top" data-ui="scroll-to-top" data-page="">
			<img src="/resources/dist/images/go-to-top-image.png" alt="go to top">
		</a>
		<jsp:include page="../footer.jsp" />
		
	</div>
	<!-- div WRAP -->
	<script type="text/javascript"
		src="resources/js/idus.web.min.js"></script>
</body>
</html>
