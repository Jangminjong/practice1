<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<!--[if lt IE 7]><html class="lt-ie9 lt-ie8 lt-ie7"><![endif]-->
<!--[if IE 7]><html class="lt-ie9 lt-ie8"><![endif]-->
<!--[if IE 8]><html class="lt-ie9"><![endif]-->
<!--[if gt IE 8]><html class="ie9"><![endif]-->
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>아이디어스 | 주문 결제하기</title>
<meta name="theme-color" content="#ffffff" />
<link rel="apple-touch-icon" sizes="384x384"
	href="resources/images/header/app-icon/icon_300.png">
<link rel="apple-touch-icon" sizes="256x256"
	href="resources/images/header/app-icon/icon_300.png">
<link rel="apple-touch-icon" sizes="192x192"
	href="resources/images/header/app-icon/icon_192.png">
<link rel="apple-touch-icon" sizes="128x128"
	href="resources/images/header/app-icon/icon_120.png">
<link rel="apple-touch-icon" sizes="96x96"
	href="resources/images/header/app-icon/icon_96.png">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=5.0, user-scalable=0 viewport-fit=cover" />
<meta name="application-name" content="아이디어스" />
<meta name="keywords" content="핸드메이드, 수공예, 수제 먹거리" />
<meta name="description"
	content="취향 맞춤 작품 구매부터 취미 생활까지, 아이디어스로 일상에 특별함을 잇다!" />
<meta property="og:title" content="핸드메이드 라이프스타일 플랫폼, 아이디어스" />
<meta property="og:type" content="website" />
<meta property="og:description"
	content="취향 맞춤 작품 구매부터 취미 생활까지, 아이디어스로 일상에 특별함을 잇다!" />
<!-- project src -->
<link rel="icon" href="resources/favicon_32.ico" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
	integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
	crossorigin="anonymous">
<link rel="stylesheet" href="resources/css/payment.css" />
</head>
<body>
	<div data-vue="token"></div>
	<div data-vue="globalUser"></div>
	<div data-vue="resizeHandler"></div>

	<div class="wrap">
		<!-- 헤더자리 -->
		<div class="dimmed-background"></div>
		<jsp:include page="header_goods.jsp" />
		<div id="content" class="content" data-page="payment"
			data-address-page="payment" style="padding-bottom: 0">
			<form class="form-payment" action="/w/payment/pay" method="post">
				<input type="hidden" name="point_type_bill" value="0.5"> <input
					type="hidden" name="point_type_vip" value="1"> <input
					type="hidden" name="is_personal_payment" value=""> <input
					type="hidden" name="bucket_cart_uuid[]" /> <input type="hidden"
					name="is_remote" value="false" disabled="disabled" /> <input
					type="hidden" name="is_membership" disabled="disabled" value="" />
				<input type="hidden" name="remote_price" value="0"
					disabled="disabled" /> <input type="hidden" name="address_uuid"
					id="address_uuid" value="" /> <input type="hidden"
					name="user_grade" id="user_grade" value="0.5%" /> <input
					type="hidden" name="ga_client_id" id="ga_client_id" value="" /> <input
					type="hidden" name="checkout_route" id="checkout_route"
					value="cart" /> <input type="hidden" name="checkout_id"
					id="checkout_id" value="" />

				<div class="inner-w800">
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
										class="ui_title__txtright--blue user-info-header-right-text">OOO(010-0000-0000)<i
										class="fas fa-chevron-down"></i></span>
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
												<td>OOO</td>
											</tr>
											<tr>
												<th><em class="asterisk red">&lowast;</em> <label>전화번호</label>
												</th>
												<td>
													<div class="body">
														<input type="text" name="cell_phone" class="phonenumber"
															data-auth="current-phone" readonly="readonly"
															required="required" value="010-0000-0000">
														<button type="button" class="ui_btn--small"
															data-modal-url="/w/me/cellphone"
															data-modal-id="phonenumber" data-modal-type="post"
															data-modal-trigger="modal-link">변경하기</button>
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
								<div class="payment-contents">
									<div class="address-section" data-address="root">
										<div class="tab-style-btn">
											<!-- 주소 입력폼-->
											<div data-device="mobile">
												<div class="tab-style-btn-item">
													<button class="btn active" type="button"
														data-address='{
                                                    "address_uuid": "",
                                                    "delivery_name": "OOO",
                                                    "delivery_phone": "010-0000-0000",
                                                    "delivery_remote": "",
                                                    "delivery_zipcode": "00000",
                                                    "delivery_address1": "서울 광진구",
                                                    "delivery_address2": ""
                                                }'>1</button>
												</div>
												<div class="tab-style-btn-item">
													<button class="btn " type="button"
														data-address='{
                                                    "address_uuid": "",
                                                    "delivery_name": "",
                                                    "delivery_phone": "",
                                                    "delivery_remote": "",
                                                    "delivery_zipcode": "",
                                                    "delivery_address1": "",
                                                    "delivery_address2": ""
                                                }'>2</button>
												</div>
												<div class="tab-style-btn-item">
													<button class="btn " type="button"
														data-address='{
                                                    "address_uuid": "",
                                                    "delivery_name": "",
                                                    "delivery_phone": "",
                                                    "delivery_remote": "",
                                                    "delivery_zipcode": "",
                                                    "delivery_address1": "",
                                                    "delivery_address2": ""
                                                }'>3</button>
												</div>
											</div>
										</div>
										<div class="address-info root">
											<div class="address-info item">
												<div class="address-info head">
													<em class="asterisk red">&lowast;</em> <label
														for="receiver">받는 분</label>
												</div>
												<div class="address-info body">
													<div class="input-text">
														<input data-address="delivery_name" name="delivery_name"
															type="text" placeholder="" required="required"
															autocomplete="off">
													</div>
												</div>
											</div>
											<div class="address-info item">
												<div class="address-info head">
													<em class="asterisk red">&lowast;</em> <label
														for="receiver">전화번호</label>
												</div>
												<div class="address-info body">
													<div class="input-text">
														<input data-address="delivery_phone"
															data-phone-type="none" name="delivery_phone" type="text"
															required="required" autocomplete="off">
													</div>
												</div>
											</div>
											<div class="address-info item">
												<div class="address-info head">
													<em class="asterisk red">&lowast;</em> <label
														for="receiver">주소</label>
												</div>
												<div class="address-info body">
													<div class="address-ui root">
														<div class="address-ui address">
															<div class="address-ui row">
																<div class="input-text address-zip-code">
																	<input data-address="delivery_zipcode" type="text"
																		name="delivery_zipcode" value="" placeholder="우편번호"
																		required="required" autocomplete="off"
																		readonly="readonly">
																</div>
																<button data-address="open" class="btn btn-m btn-white"
																	type="button">주소 찾기</button>
																<!-- 다음주소 layer -->
																<div class="daum-post-layer"
																	style="display: none; position: relative; width: auto; margin-top: 10px; overflow: auto; -webkit-overflow-scrolling: touch;">
																	<img src="resources/images/payment/close.png"
																		id="btnCloseLayer"
																		style="cursor: pointer; position: absolute; right: 0; top: 0; z-index: 1"
																		alt="닫기 버튼">
																</div>
															</div>
															<div class="address-ui row">
																<div class="input-text address-address">
																	<input data-address="delivery_address1" type="text"
																		name="delivery_address1" value="" placeholder="기본 주소"
																		required="required" autocomplete="off"
																		readonly="readonly">
																</div>
															</div>
															<div class="address-ui row">
																<div class="input-text address-address2">
																	<input data-address="delivery_address2" type="text"
																		name="delivery_address2" value="" autocomplete="off"
																		placeholder="나머지 주소">
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="extra-row">
											<label><input id="safe-phone" type="checkbox"
												name="is_safe_phone" class="bp" checked="checked" />1회용 안심번호
												사용</label>
										</div>
									</div>
								</div>
							</div>
							<!-- 주문 작품 정보 -->
							<div class="segment--nospacing" data-ui="order-summary-label">
								<div class="ui_title--sub tab " data-ui-id="order_cart">
									<span class="ui_title__txt">주문 작품 정보</span> <span
										class="ui_title__txtright"> <em
										class="hilight blue user-info-header-right-text"></em> <i
										class="fas fa-angle-down"></i>
									</span>
								</div>
								<div data-ui="tab-panel" data-panel-id="order_cart" style="">
									<table class="paymentCard" data-ui="cart-card"
										data-artist-uuid="056739d6-2013-4030-aa19-8c30e51061b8"
										data-artist-name="도.천.빵.집" data-delivery-style="0"
										data-membership-allow="1" data-delivery-policy="100000"
										data-delivery-charge="4500" data-delivery-charge-remote="3000"
										data-cost-discount-product="0" data-cost-discount-delivery="0">
										<caption class="hidden">도.천.빵.집</caption>
										<colgroup>
											<col width="120px">
											<col width="*">
										</colgroup>
										<thead>
											<tr>
												<th colspan="2" style="padding: 20px 0"><input
													type="hidden" name="artist_order_price" disabled="disabled"
													value=""> <input type="hidden" name="shipping_type"
													disabled="disabled" value=""> <input type="hidden"
													name="shipping_coupon" disabled="disabled" value="">
													<input type="hidden" name="delivery_charge"
													disabled="disabled" value="4500">
													<div class="txt-group">
														<span class="artist-name">도.천.빵.집 작가님</span>
													</div></th>
											</tr>
										</thead>
										<tbody>
											<tr class="list-item"
												data-product-uuid='854c3f48-cb4c-4e0b-8a71-cdc0e993b2a5'
												data-status='1'>
												<td class="area-img" style="padding-top: 24px;">
													<div class="img-bg"
														style="background-image: url(/resources/images/payment/825f8f0dfa514cbcbb9d9520d5bc9905_512.png)"></div>
												</td>
												<td class="area-txt">
													<div class="txt-group">
														<input type="hidden" name="product_order_price"
															disabled="disabled" value=""> <label
															class="title-txt bold" for="prd-name">[더맛있어진]겉바속촉,
															휘낭시에</label>
													</div>
												</td>
											</tr>
											<tr>
												<td colspan="2" class="flexible" style="padding: 16px 18px;">
													<ul class="list-options">
														<li
															data-artist-uuid="056739d6-2013-4030-aa19-8c30e51061b8"
															data-option-status='1'><input type="hidden"
															name="option_price" value="3000" disabled="disabled">
															<div class="table-layout">
																<div class="split">
																	<span class="option-txt">
																		<ul class="item-option-list">
																			<li>종류 : 오징어먹물크림치즈휘낭시에 : 500원</li>
																			<li>선물포장 : 선물포장(비닐포장후상자포장) : 1,000원</li>
																			<li><label>수량 :<input class="prd-count"
																					type="number" value="1"
																					data-product-uuid="854c3f48-cb4c-4e0b-8a71-cdc0e993b2a5"
																					data-product-price="1500" data-option-price="1500"
																					data-price="3000" data-action="change_count"
																					data-status-value="1" readonly="readonly">개
																			</label></li>
																		</ul>
																	</span>
																</div>
																<div class="split">
																	<strong style="color: #333;"> <em
																		class="cost-text">3,000</em>원
																	</strong>
																</div>
															</div></li>
													</ul>
													<div class="ui_field--onchange " data-uipack="textarea">
														<div class="ui_field__txtarea">
															<textarea name="" maxlength="500"
																placeholder="주문 요청사항을 입력해주세요" readonly="readonly">테스트용 요청사항 작성 중입니다.</textarea>
															<em class="ui_field__chars">500</em>
														</div>
													</div>
												</td>
											</tr>
											<tr class="static-row">
												<th>배송비</th>
												<td>
													<div data-freeship="true">
														<input type="text" name="shipping_price"
															data-unformated="0" value="무료" readonly disabled>
													</div>
													<div data-freeship="true" style="display: none">
														<input type="text" name="shipping_price"
															data-unformated="0" value="무료" readonly="readonly"
															disabled="disabled"> <input type="text"
															style="display: none" name="free_shipping_policy"
															data-unformated="100000" value="100,000원 이상"
															readonly="readonly" disabled="disabled">
													</div>
													<div data-freeship="false">
														<input type="text" name="shipping_price"
															data-unformated="4500" value="4,500원" readonly="readonly"
															disabled="disabled"> <input style="display: none"
															type="text" name="free_shipping_policy"
															data-unformated="100000" value="100,000원 이상"
															readonly="readonly" disabled="disabled">
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
							<!-- 아이디어스 할인 혜택 -->
							<div class="segment--nospacing field-group"
								data-ui="discount-display" style="display: block">
								<div class="ui_title--sub">
									<span class="ui_title__txt">아이디어스 할인 혜택</span>
								</div>
								<div class="payment-contents">
									<!-- 쿠폰 리스트 -->
									<div class="field no-spacing coupon-list">
										<label class="title" for="artist_coupon_new">아이디어스 할인
											쿠폰<em class="hilight red"></em>
										</label>
										<div class="input-group">
											<span class="input-style-text" data-idus-discount="coupon">0</span>
											<div class="hidden" data-modal-trigger="coupon-list"></div>
											<button class="ui_btn--redline"
												data-coupon-trigger="idus-coupon-list">쿠폰사용</button>
										</div>
										<!-- idus_coupon_id_list[]: 7632068 -->
										<input type="hidden" name="idus_coupon_id_list[]" value=""
											disabled="disabled">
									</div>
								</div>
							</div>
							<!-- 결제 수단 -->
							<div class="segment--nospacing">
								<div class="ui_title--sub" style="padding-bottom: 0;"></div>
								<div class="payment-contents">
									<div class="radiogroup" data-payment-type-btn="root">
										<label class="radio-item">
											<div class="payment-radio-item-wrapper">
												<input class="idus-icon-radio" name="how_to_pay"
													value="CARD" type="radio" required="required"> <span
													data-label="paymentbtn">카드 결제</span>
											</div>
										</label> <label class="radio-item">
											<div class="payment-radio-item-wrapper">
												<input class="idus-icon-radio" name="how_to_pay"
													value="KAKAO" type="radio" required="required"> <span
													data-label="paymentbtn" class="img_label"> <img
													src="resources/images/payment/kakaopay.png">
												</span>
											</div> <span class="hidden" data-label="paymentbtn">카카오페이</span>
										</label>
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
												<td><span data-payment="order"></span>원</td>
											</tr>
											<tr>
												<th>배송비</th>
												<td><span data-payment="shipping">0</span>원</td>
											</tr>
											<tr>
												<th>작가님 할인 혜택</th>
												<td><span data-payment="discount">0</span>원</td>
											</tr>
											<tr data-payment="remote-tr">
												<th>제주 / 도서산간 추가비용</th>
												<td><span name="remote" data-payment="remote">0</span>원
												</td>
											</tr>
											<!-- 분기처리 -->
											<tr>
												<th>아이디어스 할인 혜택</th>
												<td><span data-payment="membership">0</span>원</td>
											</tr>
										</tbody>
									</table>
									<table class="spacing">
										<tbody>
											<tr class="total">
												<th>최종 결제 금액</th>
												<td class="hilight"><span data-payment="total"></span>
													<em>원</em></td>
											</tr>
											<tr style="">
												<th colspan="2"><label class="bg-style--warning">
														<input id="support" type="checkbox" name="is_support"
														autocomplete="off" class="bp"> 작가님을 후원합니다.
												</label> <span class="hidden" data-payment="support">0</span></th>
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
											</label> <span class="checkout-toggle-btn">더 보기<i
												class="idus-icon-arrow-down btn_icon"></i></span>
										</div>
										<div class="scroll-txt" data-ui="tab-panel"
											data-panel-id="info_personal1">
											‣ 제공받는 자 : 도.천.빵.집<br> ‣ 목적 : 판매자와 구매자 사이의 원활한 거래 진행,
											상품의 배송을 위한 배송지 확인, 고객상담 및 불만처리 등<br> ‣ 정보 : 주문자 정보(성명,
											연락처), 수령인 정보(성명, 연락처, 주소)<br> ‣ 보유기간 : 발송완료 후 15일<br>
											<br> 아이디어스는 통신판매중개자이며 통신판매의 당사자가 아닙니다. 따라서 아이디어스는 상품
											거래정보 및 거래에 대하여 책임을 지지 않습니다.
										</div>
									</div>
									<div class="segment--nospacing scroll-detector"
										data-ui="sticky">
										<div class="mfixed">
											<button id="btn-submit" class="ui_btn--red--large"
												data-ui="btn-label">
												<span data-label="total"></span> <span data-label="type">결제하기</span>
												<p class="point" data-label="point">
													예상적립금 : <em>0</em>P
												</p>
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
