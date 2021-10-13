<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>아이디위드 | 주문 결제하기</title>
<meta name="theme-color" content="#ffffff" />

<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=5.0, user-scalable=0 viewport-fit=cover" />
<meta name="application-name" content="아이디위드" />
<meta name="keywords" content="핸드메이드, 수공예, 수제 먹거리" />
<meta name="description"
	content="취향 맞춤 작품 구매부터 취미 생활까지, 아이디위드로 일상에 특별함을 잇다!" />
<meta property="og:title" content="핸드메이드 라이프스타일 플랫폼, 아이디위드" />
<meta property="og:type" content="website" />
<meta property="og:description"
	content="취향 맞춤 작품 구매부터 취미 생활까지, 아이디위드로 일상에 특별함을 잇다!" />


<link rel="stylesheet" href="resources/css/payment.css" />
<script src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="resources/js/payment.js"></script>
 <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>
</head>
<body>
	<div class="wrap">
		<!-- 헤더자리 -->
		<div class="dimmed-background"></div>
		<jsp:include page="header_goods.jsp" />
		<div id="content" class="content" data-page="payment"
			data-address-page="payment" style="padding-bottom: 0">
			<form id="form-class-payment" name="form-payment" class="form-payment" action="javascript:requestPay()" method="post">
				<input type="hidden" name="class_order_code" value="${classCode }" id="class-order-code"> <input
					type="hidden" name="class_order_date" value="${classOrder.class_order_date }"> <input
					type="hidden" name="class_order_time" value="${classOrder.class_order_time }"> <input
					type="hidden" name="class_order_people" value="${classOrder.class_order_people }"/> <input type="hidden"
					name="class_order_id" value="${user.user_id }" id="user-id"/> 

				<div class="inner-w800" style="width:800px;">
					<!-- 타이틀 -->
					<div class="title-style clf">
							<h2 class="txt fl">예약 결제하기</h2>
							<ol class="page-location fr">
								<li style="color:#333;"><em class="active">1.</em> 
									<span >예약결제</span> 
									<i class="fa fas fa-angle-right"></i>
								</li>
								<li class="icon-num" style="display:inline;">
									<em class="icon-num" >2.</em> 
									<span>예약완료</span>
								</li>
							</ol>
					</div>
					<!-- 타이틀 끝-->
					<div class="layout-split" data-layout-split="payment">
						<section data-ui="toggle-tab">
							<!-- 주문고객 정보 -->
							<div class="segment--nospacing">
								<div class="ui_title--sub tab" data-ui-id="order_user">
									<span class="ui_title__txt">주문고객</span> 
									<span class="ui_title__txtright--blue user-info-header-right-text">${user.user_id }
										<i class="fa fa-chevron-down" aria-hidden="true" id="btn-user-info"></i>
									</span>
								</div>
								<div class="payment-contents">
									<table class="table-style-clear orderer-info"
										data-ui="tab-panel" data-panel-id="order_user">
										<colgroup>
											<col width="90px">
											<col>
										</colgroup>
										<tbody>
											<tr>
												<th>주문자 정보</th>
												<c:choose>
													<c:when test="${user.user_name eq null}">
														<td>
															<input type="text" name="class_order_name" class="user-name" id="class-user-name" required="required" placeholder="이름을 입력해주세요." onblur="requiredCheck('name')"/>
															<span id="class-warn-name" style="display:none; color:#ff4b50; font-size: 9px;">주문자 이름을 입력헤주세요.</span>
														</td>
														
													</c:when>
													<c:when test="${user.user_name ne null}">
														<td><input type="text" name="class_order_name" class="user-name" id="class-user-name" required="required" placeholder="이름을 입력해주세요." value="${user.user_name }" readonly="readonly"/></td>
														
													</c:when>
												</c:choose>
											</tr>
											<tr>
												<th><em class="asterisk red">&lowast;</em> <label>전화번호</label>
												</th>
												<td>
													<div class="body">
													<c:choose>
														<c:when test="${ user.user_phone eq null}">
															<input type="text" name="user_phone" class="phonenumber"
																data-auth="current-phone" required="required" id="class-phone" placeholder="전화번호를 입력해주세요." onkeyup="phoneTypeSet()" onblur="requiredCheck('phone')">
															<span id="class-warn-phone" style="display:none; font-size: 9px; color:#ff4b50">주문자 전화번호를 입력헤주세요.</span>
														</c:when>
														<c:when test="${user.user_phone ne null }">
															<input type="text" name="user_phone" class="phonenumber"
																data-auth="current-phone" readonly="readonly" id="class-phone" required="required" value="${user.user_phone }" onkeyup="phoneTypeSet()" onblur="requiredCheck('phone')">
															<span id="class-warn-phone" style="display:none; font-size: 9px; color:#ff4b50">주문자 전화번호를 입력헤주세요.</span>
														</c:when>
													</c:choose>
													</div>
												</td>
											</tr>
											<tr>
												<!-- 전화번호 변경 모달-->
												<td></td>
												<td style="color: #999">주문, 배송시 등록된 번호로 SMS를 발송해 드립니다.</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							
									<section data-v-2be77f15="" class="segment">
										<div data-v-2be77f15="" class="ui_title--sub">
											<span data-v-2be77f15="" class="ui_title__txt">예약자 정보</span>
											<label data-v-2be77f15="" class="ui_field ui_title__txtright"><input
												data-v-2be77f15="" type="checkbox"
												class="bp" id="same-chk" onclick="orderReserveSame()"> <span data-v-2be77f15=""
												class="ui_field__label">주문자와 같아요.</span></label>
										</div>
										<dl data-v-2be77f15="" class="ui_field">
											<dt data-v-2be77f15="" class="ui_field__label">
												<em data-v-2be77f15="" class="asterisk red">∗</em> <label
													data-v-2be77f15="">예약자</label>
											</dt>
										<c:choose>
											<c:when test="${user.user_name eq null}">
											<dd data-v-2be77f15="">
												<input data-v-2be77f15="" type="text" name="class_order_reserve_name"
													placeholder="이름을 입력해주세요." class="ui_field__input" id="class-reserve-name" onblur="requiredCheck('name')">
												<span id="reserve-warn-name" style="display:none; font-size: 9px; color:#ff4b50">예약자 이름을 입력헤주세요.</span>
											</dd>
											</c:when>
											<c:when test="${user.user_name ne null}">
											<dd data-v-2be77f15="">
												<input data-v-2be77f15="" type="text" name="class_order_reserve_name"
													placeholder="이름을 입력해주세요." class="ui_field__input" id="class-reserve-name" value="${user.user_name }" onblur="requiredCheck('name')">
												<span id="reserve-warn-name" style="display:none; font-size: 9px; color:#ff4b50">예약자 이름을 입력헤주세요.</span>
											</dd>
											</c:when>
										</c:choose>
										</dl>
										<!---->
										<dl data-v-2be77f15="" class="ui_field">
											<dt data-v-2be77f15="" class="ui_field__label">
												<em data-v-2be77f15="" class="asterisk red">∗</em> <label
													data-v-2be77f15="">연락처</label>
											</dt>
										<c:choose>
											<c:when test="${user.user_phone eq null}">
											<dd data-v-2be77f15="">
												<input data-v-2be77f15="" type="text"
													name="class_order_reserve_phone" placeholder="전화번호를 입력해주세요."
													class="ui_field__input" id="class-reserve-user" onkeyup="phoneTypeSet()" onblur="requiredCheck('phone')">
												<span id="reserve-warn-phone" style="display:none; font-size: 9px; color:#ff4b50">예약자 전화번호를 입력헤주세요.</span>
											</dd>
											</c:when>
											<c:when test="${user.user_phone ne null}">
											<dd data-v-2be77f15="">
												<input data-v-2be77f15="" type="text"
													name="class_order_reserve_phone" placeholder="전화번호를 입력해주세요."
													class="ui_field__input" value="${user.user_phone }" id="class-reserve-user" onkeyup="phoneTypeSet()" onblur="requiredCheck('phone')">
												<span id="reserve-warn-phone" style="display:none; font-size: 9px; color:#ff4b50">예약자 전화번호를 입력헤주세요.</span>
											</dd>
											</c:when>
										</c:choose>
										</dl>
										<!---->
										<dl data-v-2be77f15="" class="ui_field--onchange align_top">
											<dt data-v-2be77f15="" style="font-size:10px;">요청사항</dt>
											<dd data-v-2be77f15="" data-uipack="textarea" data-state=""
												class="ui_field--onchange">
												<div data-v-2be77f15="" class="ui_field__txtarea">
													<textarea data-v-2be77f15=""
														maxlength="100" placeholder="예약시 요청사항을 입력해주세요." name="class_order_demand"></textarea>
													<em data-v-2be77f15="" class="ui_field__chars">100</em>
												</div>
											</dd>
										</dl>
										<label data-v-2be77f15="" class="ui_field" style="margin: 10px 0;"><input
											data-v-2be77f15="" type="checkbox" 
											class="bp" > <span data-v-2be77f15=""
											class="ui_field__label">1회용 안심번호를 사용합니다.</span></label>
									</section>
						
									<div class="segment pb20">
										<div class="ui_title--sub">
											<span class="ui_title__txt">클래스 정보</span>
										</div>
										<a data-v-185f6d73="" href="/c/class/5808" target="_blank"
											data-status="" class="card"><div data-v-185f6d73="">
												<span data-v-185f6d73="" class="card__img"
													style="background-image: url(resources/images/category_class/${classVO.class_open_photo[0]});"></span>
											</div>
											<div data-v-185f6d73="" style="display: inline-grid;">
												<input type="hidden" id="class-open-name" value="${classVO.class_open_name }"/>
												<span data-v-185f6d73="" class="card__title" style="font-weight: bold; font-size: 14px;"> ${classVO.class_open_name } </span> <span data-v-185f6d73=""
													class="card__label" style="font-size: 13px; margin-top:3px;">${store_name }</span>
												<div data-v-185f6d73="" class="card__desc" style="font-size: 13px; margin-top:3px;">${classOrder.class_order_date }/ ${classOrder.class_order_time} / ${classOrder.class_order_people }명</div>
											</div></a>
									</div>
						
							<!-- 아이디위드 할인 혜택 -->
							<div class="segment--nospacing field-group"
								data-ui="discount-display" style="display: block">
								<div class="ui_title--sub">
									<span class="ui_title__txt">아이디위드 할인 혜택</span>
								</div>
								<div class="payment-contents">
									<div class="field">
										<label class="block-label">아이디위드 적립금</label>
										<div class="input-with-btn">
											<label class="input-container"><input type="text" id="use-point" onkeyup="partialPointUse()"></label>
											<button class="ui_btn--red" onclick="allUsePoint()">
												<span>전부사용</span>
											</button>
										</div>
										<div class="sub-txt">
											<input type="hidden" id="initial-point" value="${user.save_point }"/>
											<span class="inline-label subtxt">보유중인 적립금</span> 
											<input type="text" class="hilight red" id="point-balance" value="${user.save_point }" readonly="readonly"/>
										</div>
									</div>
								</div>
							</div>
						</section>
						<section>
							<section data-v-f008c034="">
								<div data-v-f008c034="" class="final-cost ui_sticky">
									<h3 data-v-f008c034="" class="table-header">결제 정보</h3>
									<div data-v-f008c034="" class="segment">
										<table data-v-f008c034="">
											<tbody data-v-f008c034="">
												<tr data-v-f008c034="">
													<th data-v-f008c034="">클래스</th>
													<td data-v-f008c034="">${classOrder.class_order_price }</td>
													<input type="hidden" id="class-order-price" value="${classOrder.class_order_price }"/>
												</tr>
												<tr data-v-f008c034="">
													<th data-v-f008c034="">아이디위드 할인 혜택</th>
													<td data-v-f008c034=""><input type="text" value="" id="final-discount" readonly="readonly"/></td>
												</tr>
											</tbody>
										</table>
										<table data-v-f008c034="" class="spacing">
											<tbody data-v-f008c034="">
												<tr data-v-f008c034="" class="total">
													<th data-v-f008c034="">최종 결제 금액</th>
													<td data-v-f008c034="" class="hilight"><span
														data-v-f008c034="" data-payment="total"><input type="text" value="" id="semi-final-price" readonly="readonly"/></span><em
														data-v-f008c034="">원</em></td>
												</tr>
												<tr data-v-f008c034="">
													<th data-v-f008c034="" colspan="2"><label
														data-v-f008c034="" class="bg-style--warning"><input
															data-v-f008c034="" type="checkbox"
															autocomplete="off" class="bp"  onclick="setDonation()" id="donation-chk"> 작가님을 후원합니다. </label></th>
													<input type="number" name="class_order_donation" id="class-order-donation" value="" style="display:none;"/>
												</tr>
											</tbody>
										</table>
									</div>
									<ul data-v-f008c034="" class="segment-list" style="padding: 16px 22px 0; font-size:14px; font-weight:500;">

										<li data-v-f008c034="">이 예약을 결제하면 개인정보 수집, 취소 및 환불 정책에
											동의합니다. <br>아이디위드는 통신판매중개자이며 통신판매의 당사자가 아닙니다. <br>따라서 아이디위드는 상품 거래정보 및
											거래에 대하여 책임을 지지 않습니다.</li>
									</ul>
									<div data-v-f008c034="" class="segment-group">
										<div data-v-f008c034="" data-ui="sticky"
											class="segment--nospacing scroll-detector"
											data-state="active">
											<div data-v-f008c034="" class="mfixed">
												<button data-v-f008c034="" id="btn-submit"
													data-ui="btn-label" class="ui_btn--red--large">
													<div data-v-f008c034="">
														<span data-v-f008c034="" data-label="total"><input type="text" name="class_order_price" value="" id="class-final-price" readonly="readonly"/></span>
														<span data-v-f008c034="" data-payment="type">간편하게
															카드 결제</span>
														<p data-v-f008c034="" data-label="point" class="point"
															style="display: block;">예상적립금 : ${point.save_point }P</p>
															<input type="hidden" id="point-new" value="${point.save_point }"/>
													</div>
												</button>
											</div>
										</div>
									</div>
								</div>
							</section>
						</section>
					</div>
				</div>
			</form>
		</div>
		
		<a href="#header" class="to-top" data-ui="scroll-to-top" data-page="">
			<img src="/resources/images/index/go-to-top-image.png"
			alt="go to top">
		</a>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>
