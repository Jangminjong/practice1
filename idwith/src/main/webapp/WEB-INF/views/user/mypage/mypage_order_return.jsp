<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="naver-site-verification"
	content="a8c6e5633b597db7b48d05e4a7d247011f6794ec" />
<meta name="google-site-verification"
	content="NnaPRa-jWBb5SnBiwjEZkMqm1pFS2Y8mVdUG0nJqO4c" />
<title>아이디위드 | 취소/환불내역</title>
<meta name="theme-color" content="#ffffff" />
<link rel="apple-touch-icon" sizes="384x384"
	href="/resources/dist/images/app-icon/icon_300.png">


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
<meta property="og:url" content="http://www.idus.com/w/me/order/cancel" />
<meta property="og:image"
	content="http://www.idus.com/resources/dist/images/ogimg-idus.png?ver=2.0" />
<link rel="canonical" href="http://www.idus.com/w/me/order/cancel" />

        </script>
<link rel="stylesheet" href="resources/css/mypage.css" />
<link rel="stylesheet" href="resources/css/idus.web.min.css" />
<link rel="stylesheet" href="resources/css/vendor.client.min.css" />
<script src="resources/js/vendor.client.min.js?__v=1631078629"></script>
<script src="resources/js/vuepack.js"></script>


</head>
<body>
	<div data-vue="token"></div>
	<div data-vue="globalUser"></div>
	<div data-vue="resizeHandler"></div>
	
	<div class="wrap">
		<div class="head_banner_group"></div>


		<div class="dimmed-background"></div>
		<jsp:include page="../header_goods.jsp" />
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
								href="mypage_goods_order_return.do" class="">취소/환불내역</a> <b> <span>알림
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
						<a href="mypage_order_return.do" class="txt fl">취소/환불 내역</a>
					</div>
					<div class="ui_tab_group--3 favorite">
						<span class="ui_tab_group__tab active" data-state="active"
							style="width: 50%;"> 작품 </span> <a href="mypage_class_order_return.do"
							class="ui_tab_group__tab" style="width: 50%;">클래스</a>
					</div>
					<div style="margin-top:20px;">
						<table class="table-style disable-ui type2 th-bd"
							data-active="true">
							<colgroup>
								<col>
								<col style="width: 120px">
								<col style="width: 120px">
							</colgroup>
							<thead>
								<tr class="m-hide">
									<th class="ta-c">작품</th>
									<th class="ta-c">판매 작가</th>
									<th class="ta-c"></th>
								</tr>
							</thead>
							<c:forEach var="goods" items="${returnList }">
							<tbody>
								<tr>
									<td>
										<div class="list-item">
											<div class="area-img">
												<input class="bp" data-ui="list-checker" name="prd-name"
													type="checkbox" value="some-prd" checked="">
												<div class="img-bg"
													style="background-image: url()"></div>
											</div>
											<div class="area-txt">
												<div class="list-head">
													<div class="row">
														<div class="col">
															<a href="detail_content.do?goods_code=${goods.order_detail_goods}"
																class="title-txt" for="prd-name">${goods.goods_name }</a>
														</div>
														<div class="col icon">
															<span class="ico outline negative">취소 완료</span>
														</div>
													</div>
												</div>
												<ul class="list-options">
													<li><span class="option-txt">${goods.order_detail_option }</span>
													<span class="price" style="font-weight:bold; margin-left:15px;">${goods.order_detail_price }원</span>
														<em class="option-count">${goods.order_detail_quantity }</em></li>
													<div class="order-memo">
														<div class="textarea">
															<div class="textarea-div"></div>
														</div>
													</div>
												</ul>
											</div>
										</div>
									</td>
									<td class="td-controller wow-b row fixed">
										<div class="col">
											<span class="txt">${goods.store_name }</span>
										</div>
										<div class="col">
											<a href="message.do?msgd=${goods.order_detail_seller }"
												class="btn btn-s btn-white" type="button">메시지로 문의</a>
										</div>

									</td>
									<td class="td-controller row">
										<div class="col">
											<button disabled="disabled"
												class="btn btn-m btn-white">취소완료</button>
										</div>
									</td>

								</tr>
							</tbody>
							</c:forEach>
						</table>
					</div>
					<c:if test="${returnList eq null }">
					<div class="banner-empty">
						<span class="ico-blank"><i class="idus-icon-logo-empty"></i></span>
						<p>취소/환불 내역이 없습니다.</p>
						<a href="index.do" class="btn btn-l btn-point">작품 구경하러 가기</a>
					</div>
					</c:if>
				</section>
			</div>
		</div>
		
	</div>
	<jsp:include page="../footer.jsp" />
	<!-- div WRAP -->
	<script type="text/javascript"
		src="resources/js/idus.web.min.js"></script>
	
</body>
</html>
