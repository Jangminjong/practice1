<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>아이디위드 | 주문 결제하기</title>
<meta name="theme-color" content="#ffffff" />
<link rel="icon" href="resources/favicon_32.ico" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
	integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
	crossorigin="anonymous">
<link rel="stylesheet" href="resources/css/payment.css" />


<script src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="resources/js/product_payment.js"></script>	
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body>
	<input type="hidden" id="user_id" value="${email}" />
	<input type="hidden" id="goods_code" value="${cartListForOrder[0].goodsVO.goods_code}" />
	<div class="wrap">
		<!-- 헤더자리 -->
		<div class="dimmed-background"></div>
		<jsp:include page="header_goods.jsp" />
		<div id="content" class="content" data-page="payment"
			data-address-page="payment" style="padding-bottom: 0">
			<form id="form-goods-payment" class="form-payment" action="javascript:requestPay()" method="post">
				<div class="inner-w800" style="width: 800px;">
					<!-- 타이틀 -->
					<div class="title-style clf">
								<h2 class="txt fl">주문 결제하기</h2>
								<ol class="page-location fr">
									<li><em class="icon-num">1.</em> <span>장바구니</span> <i
										class="fa fas fa-angle-right"></i></li>
									<li class="active"><em class="icon-num">2.</em> <span>주문결제</span>
										<i class="fa fas fa-angle-right"></i></li>
									<li><em class="icon-num">3.</em> <span>주문완료</span></li>
								</ol>
					</div>
					<!-- 타이틀 끝-->
					<div class="layout-split" data-layout-split="payment">
						<section data-ui="toggle-tab">
							<!-- 주문고객 정보 -->
							<div class="segment--nospacing">
								<div class="ui_title--sub tab" data-ui-id="order_user">
									<span class="ui_title__txt">주문고객</span> <span
										class="ui_title__txtright--blue user-info-header-right-text">${email}
										<i class="fa fa-chevron-down" aria-hidden="true"
										id="btn-user-info"></i>
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
													<c:when test="${userInfo.user_name eq null}">
														<td>
															<input type="text" name="user_name" class="user-name" id="goods-user-name"
															required="required" placeholder="이름을 입력해주세요."
															onblur="requiredCheck('name')" />
															<span id="class-warn-name" style="display: none; color: #ff4b50; font-size: 9px;">주문자
																이름을 입력헤주세요.</span>
														</td>

													</c:when>
													<c:when test="${userInfo.user_name ne null}">
														<td>${userInfo.user_name}</td>
														<input type="hidden" value="${userInfo.user_name}" id="goods-user-name"/>
													</c:when>
												</c:choose>
											</tr>
											<tr>
												<th><em class="asterisk red">&lowast;</em> <label>전화번호</label>
												</th>
												<td>
													<div class="body">
														<c:choose>
															<c:when test="${ userInfo.user_phone eq null}">
																<input type="text" name="user_phone" class="phonenumber"
																	data-auth="current-phone" required="required"
																	id="goods-phone" placeholder="전화번호를 입력해주세요."
																	onkeyup="phoneTypeSet()"
																	onblur="requiredCheck('phone')">
																<span id="class-warn-phone"
																	style="display: none; font-size: 9px; color: #ff4b50">주문자
																	전화번호를 입력헤주세요.</span>
															</c:when>
															<c:when test="${userInfo.user_phone ne null}">
																<input type="text" name="user_phone" class="phonenumber"
																	data-auth="current-phone" readonly="readonly"
																	id="goods-phone" required="required"
																	value="${userInfo.user_phone}" onkeyup="phoneTypeSet()"
																	onblur="requiredCheck('phone')">
																<span id="class-warn-phone"
																	style="display: none; font-size: 9px; color: #ff4b50">주문자
																	전화번호를 입력헤주세요.</span>
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
							<!-- 배송 정보 -->
							<div class="segment--nospacing">
								<div class="ui_title--sub">
									<span class="ui_title__txt">주소 (배송지)</span>
								</div>
								<div class="payment-contents" style="font-size: 12px;">
									<div class="address-section" data-address="root">

										<!-- 배송지 화면에서 보여지는 부분 -->
										<div class="address-info root">
											<div class="address-info item">
												<div class="address-info head">
													<em class="asterisk red">∗</em> <label for="receiver">받는
														분</label>
												</div>
												<div class="address-info body">
													<div class="input-text">
														<input data-address="delivery_name" name="delivery_name"
															type="text" placeholder="" required="required"
															autocomplete="off" id="delivery-name"
															value="${userInfo.userAddressVO.user_name}">
													</div>
												</div>
											</div>

											<div class="address-info item">
												<div class="address-info head">
													<em class="asterisk red">∗</em> <label for="receiver">전화번호</label>
												</div>
												<div class="address-info body">
													<div class="input-text">
														<input data-address="delivery_phone" id="delivery-phone"
															data-phone-type="none" name="delivery_phone"
															type="text" required="required" autocomplete="off"
															value="${userInfo.userAddressVO.user_phone}">
													</div>
												</div>
											</div>

											<div class="address-info item">
												<div class="address-info head">
													<em class="asterisk red">∗</em> <label for="receiver">주소</label>
												</div>
												<div class="address-info body">

													<div class="address-ui root">
														<div class="address-ui address">
															<div class="address-ui row">
																<div class="input-text address-zip-code">
																	<input data-address="user_zipcode" type="text"
																		name="user_zipcode" id="postcode"
																		placeholder="우편번호" required="required" autocomplete=""
																		
																		value="${userInfo.userAddressVO.user_zipcode}">
																</div>
																<button data-address="open"
																	class="btn btn-m btn-white" type="button" onclick="execDaumPostcode()">주소
																	찾기</button>

																<!-- 다음주소 layer -->
																<div class="daum-post-layer"
																	style="display: none; position: relative; width: auto; margin-top: 10px; overflow: auto; -webkit-overflow-scrolling: touch;">
																	<img
																		src="//t1.daumcdn.net/localimg/localimages/07/postcode/320/close.png"
																		id="btnCloseLayer"
																		style="cursor: pointer; position: absolute; right: 0; top: 0; z-index: 1"
																		alt="닫기 버튼">
																</div>
															</div>

															<div class="address-ui row">
																<div class="input-text address-address">
																	<input data-address="user_address1" type="text"
																		name="user_address1"id="address"
																		value="${userInfo.userAddressVO.user_address1}" placeholder="주소"
																		required="required" autocomplete="off" >
																</div>
															</div>
															<div class="address-ui row">
																<div class="input-text address-address2">
																	<input data-address="user_address2" type="text" id="delivery-address2"
																		name="user_address2" value="${userInfo.userAddressVO.user_address2}"
																		autocomplete="" placeholder="나머지 주소">
																</div>
															</div>

														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

									<!-- 주문 작품 정보 -->
									<div class="segment--nospacing" data-ui="order-summary-label">
										<div class="ui_title--sub tab " data-ui-id="order_cart">
											<span class="ui_title__txt">주문 작품 정보</span> <span
												class="ui_title__txtright"> <em
												class="hilight blue user-info-header-right-text"></em>
												<i class="fa fa-chevron-down" aria-hidden="true" id="btn-order-goods"></i>
											</span>
										</div>
										
										<!-- 선택한 장바구니 상품 추가 -->
										<c:forEach var="cartList" items="${cartListForOrder}" varStatus="stau">
											<div style="display: none" class="order-goods-detail">
												<table class="paymentCard" data-ui="cart-card"
													data-artist-uuid="056739d6-2013-4030-aa19-8c30e51061b8"
													data-delivery-style="0"
													data-membership-allow="1" 
													data-delivery-charge="4500"
													data-delivery-charge-remote="3000"
													data-cost-discount-product="0"
													data-cost-discount-delivery="0">
													<caption class="hidden">${cartList.store_name}님</caption>
													<colgroup>
														<col width="120px">
														<col width="*">
													</colgroup>
													<thead>
														<tr>
															<th colspan="2" style="padding: 20px 0"><input
																type="hidden" name="artist_order_price"
																disabled="disabled" value=""> <input
																type="hidden" name="shipping_type" disabled="disabled"
																value=""> <input type="hidden"
																name="shipping_coupon" disabled="disabled" value="">
																<input type="hidden" name="delivery_charge"
																disabled="disabled" value="4500">
																<div class="txt-group" style="display: flex;justify-content: space-between;">
																	<input type="hidden" name="seller_code" id="seller_code" value="${cartList.seller_code}" />
																	<span class="artist-name">${cartList.store_name}</span>
																	<span class="artist-name">${cartList.goodsVO.goods_name}</span>
																</div></th>
														</tr>
													</thead>
													<tbody>
														<tr class="list-item"
															data-product-uuid='854c3f48-cb4c-4e0b-8a71-cdc0e993b2a5'
															data-status='1'>
															<td class="area-img" style="padding-top: 24px;">
																<div class="img-bg"
																	style="background-image: url(${cartList.goodsVO.goods_photo[0]})"></div>
															</td>
															<td class="area-txt">
																<div class="txt-group">
																	<input type="hidden" name="product_order_price"
																		disabled="disabled" value=""> 
																		<input type="hidden" id="goods_name" value="${cartList.goodsVO.goods_name}" />
																		<label class="title-txt bold" for="prd-name">${cartList.goodsVO.goods_name}</label>
																</div>
															</td>
														</tr>
														<tr>
															<td colspan="2" class="flexible"
																style="padding: 16px 18px;">
																<ul class="list-options">
																	<li
																		data-artist-uuid="056739d6-2013-4030-aa19-8c30e51061b8"
																		data-option-status='1'><input type="hidden"
																		name="option_price" value="3000" disabled="disabled">
																		<div class="table-layout">
																			<div class="split">
																				<span class="option-txt">
																					<input type="hidden" name="goods_code" value="${cartList.goods_code}" />
																					<ul class="item-option-list">
																					
<%-- 																						<c:forEach var="optionList" begin="0" end="${optionNum[stau.index-1]}"> --%>
																						<c:forEach var="optionList" items="${cartListForOrder}">
																							<li>${optionList.goods_option_value[status.index+1]} (+${optionList.goods_option_price[status.index+1]})</li>
<%-- 																							<li>${optionList.goods_option_value[status.index+1]} (+${optionList.goods_option_price[status.index+1]})</li> --%>
																							<li>
																								<label>수량 :
																									<input type="hidden" name="cart_quantity" value="${optionList.cart_quantity}" />
																									<input class="prd-count" type="number" value="${optionList.cart_quantity}"
																									data-product-uuid="854c3f48-cb4c-4e0b-8a71-cdc0e993b2a5"
																									data-product-price="1500"
																									data-option-price="1500" data-price="3000"
																									data-action="change_count" data-status-value="1"
																									readonly="readonly">개
																								</label>
																							</li>
																						</c:forEach>
																						
																						
																						
																						<%-- <c:forEach var="op" begin="0" end="${optionNum[stau.index]-1}">
																							<em data-v-7705597e="" class="CartOptionListItem__optionText" >
																								<input type="hidden" name="optionLength" id="optionLength,${stau.count}" value="${optionLength}"/>
																								<c:set var="opValNum" value="optionValue${op}"/>
																								<c:set var="opPriNum" value="optionPrice${op}"/>
																								${option[opValNum]}(+${option[opPriNum]}원)
																								<input type="hidden" name="goods_option_value" value="${option[opValNum]}" />
																								<input type="hidden" name="goods_option_price" value="${option[opPriNum]}" />
																								<c:set var="optionLength" value="${optionLength + 1}" />
																							</em>
																						</c:forEach> --%>
																						
																						
																						
																						
																						
																						
																						
																					</ul>
																				</span>
																			</div>
																			<div class="split">
																				<strong style="color: #333;"> <em
																					class="cost-text">${cartList.goods_price}</em>원
																				</strong>
																			</div>
																		</div></li>
																</ul>
																<div class="ui_field--onchange " data-uipack="textarea">
																	<div class="ui_field__txtarea">
																		<input type="hidden" name="cart_order_content" value="${cartList.cart_order_content}" />
																		<textarea name="" maxlength="500"
																			placeholder="주문 요청사항을 입력해주세요" readonly="readonly">${cartList.cart_order_content}</textarea>
																	</div>
																</div>
															</td>
														</tr>
														<tr class="static-row">
															<th>배송비</th>
															<td>
																<div data-freeship="true">
																	<input type="hidden" name="goods_price" value="${cartList.goods_price}" />
																	<input type="text" name="shipping_price"
																		data-unformated="0" value="" readonly disabled>
																</div>
																<div data-freeship="true" style="display: none">
																	<input type="text" name="shipping_price"
																		data-unformated="0" value="${cartList.cart_delivery_fee}" readonly="readonly"
																		disabled="disabled"> <input type="text"
																		style="display: none" name="free_shipping_policy"
																		data-unformated="100000" value="100,000원 이상"
																		readonly="readonly" disabled="disabled">
																</div>
																<div data-freeship="false">
																	<input type="text" name="shipping_price"
																		data-unformated="4500" value=""
																		readonly="readonly" disabled="disabled"> <input
																		style="display: none" type="text"
																		name="free_shipping_policy" data-unformated="100000"
																		value="100,000원 이상" readonly="readonly"
																		disabled="disabled">
																</div> <input type="hidden" name="remote_shipping_price"
																data-unformated="3000" value="3,000원" readonly="readonly"
																disabled="disabled">
															</td>
														</tr>
														<tr style="display: none">
															<td>
																<fieldset class="coupon-fieldset">
																	<!-- data for coupon validation -->
																	<input type="hidden" name="artist_coupon_id_list[0]"
																		data-name="coupon_id" value="0"> <input
																		type="hidden" name="discounted_product_price"
																		data-name="discounted_product_price" value="0"
																		disabled="disabled"> <input type="hidden"
																		name="discounted_shipping_price"
																		data-name="discounted_shipping_price" value="0"
																		disabled="disabled">
																</fieldset>
															</td>
														</tr>
													</tbody>
												</table>
											</div>
										</c:forEach>
									</div>
							
								<!-- 제주 / 도서산간 추가비용 -->
								<div class="segment--nospacing" data-ui="remote-delivery-info"
									style="display: none">
									<div class="ui_title--sub tab" data-ui-id="order_delivery">
										<span class="ui_title__txt">제주 / 도서산간 추가비용</span> <span
											class="ui_title__txtright"> <em class="hilight red"></em>
											<i class="fas fa-angle-down"></i>
										</span>
									</div>
									<div class="payment-contents">
										<ul class="list-style" data-ui="tab-panel"
											data-panel-id="order_delivery">
											<!-- markup made from javascript -->
										</ul>
									</div>
								</div>

							<!-- 아이디위드 할인 혜택 -->
							<div class="segment--nospacing field-group"
								data-ui="discount-display" style="display: block">
								<div class="ui_title--sub">
									<span class="ui_title__txt">아이디위드 할인 혜택</span>
								</div>
								<div class="payment-contents">
										<!-- 쿠폰 리스트 -->
										<div class="field no-spacing coupon-list">
											<label class="title" for="artist_coupon_new" style="font-size:12px; margin-bottom:10px;">아이디위드 할인
												쿠폰<em class="hilight red"></em>
											</label>
											<div class="input-group">
												<span class="input-style-text" data-idus-discount="coupon"><input type="text" value="0" id="goods-order-coupon"/></span>
												<div class="hidden" data-modal-trigger="coupon-list"></div>
												<button class="ui_btn--redline"  onclick="openCouponList()">쿠폰사용</button>
											</div>
											<div class="input-group" id= "goods-coupon-list" style="margin-bottom: 20px; display:none;">
												<div class="" data-modal-trigger="coupon-list">
													<ul id="have-coupon-list" >
														<span style="font-size:12px;">보유쿠폰 목록</span>
														<c:forEach var="coupon" items="${couponList}" varStatus="stau">
															<li style="display:flex; justify-content:space-between; cursor:pointer; border:1px solid #d9d9d9; margin-bottom:3px;" onclick="useCoupon('${coupon.coupon_discount }', '${coupon.coupon_have_code }')">
																<span class="goods-coupon-title">${coupon.coupon_context }</span>
																<span class="goods-coupon-discount" id="goods-coupon-discount">${coupon.coupon_discount }</span>
															</li>
														</c:forEach>
														<input type="hidden" name="coupon_code" value="" id="coupon-code"/>
													</ul>
												</div>
											</div>
											<!-- idus_coupon_id_list[]: 7632068 -->
											<input type="hidden" name="idus_coupon_id_list[]" value=""
												disabled="disabled">
										</div>
									<div class="field" style="margin-top:25px;">
										<label class="block-label">아이디위드 적립금</label>
										<div class="input-with-btn">
											<label class="input-container"><input type="text"
												id="use-point" value="0" name="order_save_use" onkeyup="partialPointUse()"></label>
											<button class="ui_btn--red" onclick="allUsePoint()">
												<span>전부사용</span>
											</button>
										</div>
										<!-- 사용자 포인트 부분 추가 필요 -->
										<div class="sub-txt">
											<input type="hidden" id="initial-point"
												value="${totalPoint }" /> <span
												class="inline-label subtxt">보유중인 적립금</span> <input
												type="text" class="hilight red" id="point-balance"
												value="${totalPoint }" readonly="readonly" />
										</div>
									</div>
								</div>
							</div>
						</section>
						<section>
							<div class="final-cost ui_sticky" data-ui="sticky">
								<h3 class="table-header">결제 정보</h3>
								<div class="segment" data-ui="paymentData-view">
									<table>
										<tbody>
											<tr>
												<th>작품금액</th>
												<td><span data-payment="order" id="goods-order-price">${orderGoodsPrice }</span>원</td>
											</tr>
											<tr>
												<th>배송비</th>
												<td><span data-payment="shipping">${finalDeliveryFee }</span>원</td>
											</tr>
											<tr>
												<th>작가님 할인 혜택</th>
												<td><span data-payment="discount"></span>원</td>
											</tr>
											<tr data-payment="remote-tr">
												<th>제주 / 도서산간 추가비용</th>
												<td><span name="remote" data-payment="remote">0</span>원
												</td>
											</tr>
											<!-- 분기처리 -->
											<tr>
												<th>아이디위드 할인 혜택</th>
												<td><span data-payment="membership"><input type="text" value="0" id="final-discount" readonly="readonly"/></span></td>
											</tr>
										</tbody>
									</table>
									<table class="spacing">
										<tbody>
											<tr class="total">
												<th>최종 결제 금액</th>
												<td class="hilight"><span data-payment="total"></span>
													<c:set var="order_detail_cost"/>
													<!-- 작품의 수 만큼 for문 돌려서 계산 -->
													<input type="text" name="order_final_cost" id="semi-final-price" value="${finalPrice}" />
													<input type="hidden" id="final-price" value="${finalPrice}"/>
													<em>원</em></td>
											</tr>
											<tr style="">
												<th colspan="2"><label class="bg-style--warning">
														<input id="support" type="checkbox" name="is_support"
														autocomplete="off" class="bp" onclick="setDonation()" id="donation-chk"> 작가님을 후원합니다.
												</label> <span class="hidden" data-payment="support"><input type="text" name="order_detail_donation" id="goods-order-donation" value="0" /></span></th>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="segment-group" data-ui="toggle-tab">
									<div class="segment--nospacing">
										<div class="ui_title--sub tab" data-ui-id="info_personal1">
											<label> <input type="checkbox" name="privacy_info"
												autocomplete="off" required="required" class="bp"> <i
												class="asterisk red">&lowast;</i> 개인정보 제공 동의
											</label> <span class="checkout-toggle-btn">더 보기
											<i class="fa fa-chevron-down" aria-hidden="true" id="btn-info-agree"></i>
										</div>
											<ul data-v-f008c034="" class="segment-list"
												style="padding: 16px 22px 0; font-size: 14px; font-weight: 500; display:none;">

												<li data-v-f008c034="">이 예약을 결제하면 개인정보 수집, 취소 및 환불 정책에
													동의합니다. <br>아이디위드는 통신판매중개자이며 통신판매의 당사자가 아닙니다. <br>따라서
													아이디위드는 상품 거래정보 및 거래에 대하여 책임을 지지 않습니다.
												</li>
											</ul>
									</div>
									<div class="segment--nospacing scroll-detector"
										data-ui="sticky">
										<div class="mfixed">
											<button id="btn-submit" class="ui_btn--red--large"
												data-ui="btn-label" style="height:90px;">
												<input type="text" name="order_final_cost" value="${finalPrice }" id="goods-final-price" readonly="readonly"/>
												<span data-label="total"></span> <span data-label="type" style="margin-left: -50px;">원   결제하기</span>
												<p class="point" data-label="point" style="display:inline-block;">
													예상적립금 :${point.save_point }P
												</p>
												<input type="hidden" name="order_save" id="order-save" value="${point.save_point }"/>
											</button>
										</div>
									</div>
								</div>
							</div>
						</section>
					</div>
				</div>
			</form>
		</div>
		<!-- 쿠폰 선택 창 -->
		<div class="modal root" data-modal-root="data-modal-root"
			data-modal-id="coupon-list" style="display: none;">
			<div class="modal overlay" data-modal-overlay="data-modal-overlay"></div>
			<form class="modal wrap modal-m" data-form="coupon-form"
				data-type="idus">
				<div class="modal head">
					<h1>쿠폰선택</h1>
					<div class="modal close" data-modal="close"></div>
				</div>
				<div class="radiogroup"></div>
				<div class="btngroup">
					<button type="button" class="ui_btn" data-modal="close">취소</button>
					<button type="submit" class="ui_btn--red">선택하기</button>
				</div>
			</form>
		</div>
		<div data-vue="ToastPopup"></div>
		<div data-vue="BottomSheet"></div>
		<div data-vue="WideBottomSheet"></div>
		<div data-vue="FooterModal"></div>
		<div data-vue="InactiveToast"></div>
		<a href="#header" class="to-top" data-ui="scroll-to-top" data-page="">
			<img src="/resources/images/index/go-to-top-image.png"
			alt="go to top">
		</a>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>