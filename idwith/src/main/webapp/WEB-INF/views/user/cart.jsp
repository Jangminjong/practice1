<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디어스 | 장바구니</title>
<link rel="stylesheet" href="resources/css/idus.web.min.css">
<link rel="stylesheet" href="resources/css/vendor.client.min.css">
<link rel="stylesheet" href="resources/css/cart.css">
<!-- 파비콘 이미지 설정 -->
<link rel="shortcut icon" type="image/x-icon"
	href="resources/images/title/icon_300.PNG">

</head>
<body>

	<div class="wrap">
		<div class="head_banner_group"></div>

		<jsp:include page="header_goods.jsp" />

		<div class="dimmed-background"></div>
		<div id="content" class="content" data-page="shoppingBag">
			<div data-vue="ModalContainer"></div>
			<div data-v-6d930ad9="" class="CartPage">
				<div data-v-1e62c1aa="" data-v-6d930ad9=""
					class="PageHeader CartPage__header">
					<h2 data-v-1e62c1aa="" class="PageHeader__title">장바구니</h2>
					<ol data-v-1e62c1aa="" class="PageHeader__steps">
						<li data-v-1e62c1aa=""
							class="PageHeader__stepsItem PageHeader__stepsItem--active"><em
							data-v-1e62c1aa="">1.</em> <span data-v-1e62c1aa="">장바구니</span> <i
							data-v-1e62c1aa="" class="fa fa-angle-right"></i></li>
						<li data-v-1e62c1aa="" class="PageHeader__stepsItem"><em
							data-v-1e62c1aa="">2.</em> <span data-v-1e62c1aa="">주문결제</span> <i
							data-v-1e62c1aa="" class="fa fa-angle-right"></i></li>
						<li data-v-1e62c1aa="" class="PageHeader__stepsItem"><em
							data-v-1e62c1aa="">3.</em> <span data-v-1e62c1aa="">주문완료</span> <!----></li>
					</ol>
				</div>
				<div data-v-56dfc770="" data-v-6d930ad9="" sticky-container=""
					class="CartList">
					<div class="vue-sticky-placeholder" style="padding-top: 0px;"></div>
					<div data-v-56dfc770="" sticky-z-index="201"
						on-stick="handleChangeStickTop"
						class="CartList__sticky vue-sticky-el"
						style="position: static; top: auto; bottom: auto; left: auto; width: auto; z-index: 201;">
						<!---->
					</div>


					<c:forEach var="cartList" items="${cartList}">
						<div data-v-415ede24="" data-v-6d930ad9="" class="CartArtistList"
							data-v-56dfc770="">
							<div data-v-a6596a66="" data-v-415ede24="" class="CartArtistItem">
								<div data-v-a6596a66="" class="CartArtistItem__header">
									<label data-v-a6596a66=""
										for="402a05af-6c1c-4ce2-9858-35839922e287"><div
											data-v-5e27c696="" data-v-a6596a66="" class="checkbox">
											<div data-v-5e27c696="" class="input-checkbox">
												<input data-v-5e27c696="" id="" type="checkbox"
													autocomplete="off" class="bp"
													value="402a05af-6c1c-4ce2-9858-35839922e287">
												<!-- <input type="checkbox"> -->
											</div>
											<!---->
										</div> <span data-v-a6596a66="" class="CartArtistItem__title">
											${cartList.seller_code} 님 </span></label>
								</div>
								<section data-v-a6596a66="" class="CartArtistItem__itemList">
									<!---->
									<ul data-v-a6596a66="">
										<div data-v-988391e4="" data-v-a6596a66=""
											class="CartProductList">
											<div data-v-2389adcc="" data-v-988391e4=""
												class="CartProductListItem">
												<div data-v-2389adcc=""
													class="CartProductListItem__productInfo">
													<div data-v-2389adcc=""
														class="CartProductListItem__checkboxGroup">
														<div data-v-2389adcc=""
															class="CartProductListItem__checkboxWrap">
															<div data-v-5e27c696="" data-v-2389adcc=""
																class="checkbox">
																<div data-v-5e27c696="" class="input-checkbox">
																	<input data-v-5e27c696="" id="" type="checkbox"
																		autocomplete="off" class="bp"
																		value="${cartList.goods_code}">
																</div>
																<!---->
															</div>
														</div>
														<img data-v-2389adcc="" alt=""
															class="CartProductListItem__productImage"
															src="https://image.idus.com/image/files/7f56c501be9349c5a52c88d340c45c7a_320.jpg">
													</div>
													<div data-v-2389adcc=""
														class="CartProductListItem__productInfoTextGroup">
														<a data-v-2389adcc=""
															href="/w/product/a640a8e0-7cbd-4160-9a02-9eacf4537750"
															class="CartProductListItem__productName">${cartList.goods_code}</a>
														<em data-v-2389adcc=""
															class="CartProductListItem__productItemCount"> 주문시
															제작 </em>
													</div>
													<!---->
												</div>
												<div data-v-2389adcc=""
													class="CartProductListItem__optionInfo">
													<div data-v-84a4f0f8="" data-v-2389adcc=""
														class="CartOptionList">

														<!-- forEach, when : 같은 상품코드가 추가되면 선택한 옵션들 리스트를 출력-->
														<div data-v-7705597e="" data-v-84a4f0f8=""
															class="CartOptionListItem">
															<div data-v-7705597e=""
																class="CartOptionListItem__splitLeft">
																<em data-v-7705597e=""
																	class="CartOptionListItem__optionText">
																	${cartList.goods_option1} </em>
																<div data-v-7705597e=""
																	class="CartOptionListItem__counter">
																	<label data-v-9b324a5a="" data-v-7705597e=""
																		for="numberCount" class="NumberCounter"><button
																			data-v-9b324a5a="" type="button" disabled="disabled"
																			class="NumberCounter__button">-</button> <input
																		data-v-9b324a5a="" name="numberCount" type="text"
																		class="NumberCounter__input"
																		value="${cartList.cart_quantity}">
																		<button data-v-9b324a5a="" type="button"
																			class="NumberCounter__button">+</button></label>
																</div>
															</div>
															<div data-v-7705597e=""
																class="CartOptionListItem__splitRight">
																<em data-v-7705597e=""
																	class="CartOptionListItem__totalPrice">
																	${cartList.goods_price} </em>
																<div data-v-7705597e=""
																	class="CartOptionListItem__btnGroup">
																	<div data-v-29633eb4="" data-v-7705597e=""
																		class="CartOptionEditingButtonGroup">
																		<button data-v-29633eb4="" type="button"
																			class="CartOptionEditingButtonGroup__button CartOptionEditingButtonGroup__button--left"
																			id="option_update_btn">
																			<i data-v-29633eb4=""
																				class="CartOptionEditingButtonGroup__buttonIcon idus-icon-cogwheel"></i>
																		</button>
																		<button data-v-29633eb4="" type="button"
																			class="CartOptionEditingButtonGroup__button CartOptionEditingButtonGroup__button--right"
																			id="option_delete_btn">
																			<i data-v-29633eb4=""
																				class="CartOptionEditingButtonGroup__buttonIcon idus-icon-close"></i>
																		</button>
																	</div>
																</div>
															</div>
														</div>

														<!--  -->
													</div>
													<div data-v-5eae4d4e="" data-v-2389adcc="">
														<div data-v-5eae4d4e=""
															class="CartOrderMessageEditor__productOrderMessage">
															<div data-v-1934649e="" data-v-5eae4d4e=""
																class="CommonTextEditor">
																<textarea data-v-1934649e="" maxlength="500"
																	placeholder="주문요청 사항을 입력해 주세요."
																	class="CommonTextEditor__textarea">${cartList.cart_order_content}</textarea>
																<em data-v-1934649e=""
																	class="CommonTextEditor__maxLength">500</em>
															</div>
														</div>
														<!---->
													</div>
												</div>
											</div>
										</div>
									</ul>
								</section>
								<section data-v-a6596a66="" class="CartArtistItem__section">
									<div data-v-a6596a66="" class="CartArtistItem__label">작품
										가격</div>
									<em data-v-a6596a66="" class="CartArtistItem__price">${cartList.goods_price}</em>
								</section>
								<section data-v-a6596a66="" class="CartArtistItem__section">
									<div data-v-a6596a66="" class="CartArtistItem__label">배송비</div>
									<div data-v-a6596a66="" class="CartArtistItem__price">
										<div data-v-76555e5b="" data-v-a6596a66=""
											class="ShippingPrice">
											<em data-v-76555e5b="" class="ShippingPrice__price">${cartList.cart_delivery_fee}</em>
											<div data-v-76555e5b="" class="ShippingPrice__desc">
												70,000원 이상 무료배송</div>
										</div>
									</div>
								</section>
								<!---->
							</div>
						</div>

					</c:forEach>


					<div class="vue-sticky-placeholder" style=""></div>
					<div data-v-56dfc770="" sticky-side="bottom"
						on-stick="handleChangeStickBottom"
						class="CartList__sticky vue-sticky-el bottom-sticky"
						style="position: static; top: auto; bottom: auto; left: auto; width: auto; z-index: 10;">
						<div data-v-20c2da48="" data-v-6d930ad9=""
							class="CartCheckboxControl" data-v-56dfc770="">
							<div data-v-5e27c696="" data-v-20c2da48="" class="checkbox">
								<div data-v-5e27c696="" class="input-checkbox">
									<input data-v-5e27c696="" id="cart-product-all-check"
										type="checkbox" autocomplete="off" class="bp" value="">
								</div>
								<label data-v-5e27c696="" for="cart-product-all-check"><span
									data-v-20c2da48="" data-v-5e27c696=""
									class="CartCheckboxControl__label"> 전체 선택 (<span
										data-v-20c2da48="" data-v-5e27c696=""
										class="CartCheckboxControl__label--bold">1</span>/1)
								</span></label>
							</div>
							<button data-v-32d88566="" data-v-20c2da48=""
								class="CommonButton CommonButton--middle CommonButton--white ">
								선택 삭제</button>
						</div>
						<div data-v-261b598e="" data-v-6d930ad9="" class="CartCheckout"
							data-v-56dfc770="">
							<!-- <div data-v-46d2f086="" data-v-6d930ad9=""
								class="CartVipBanner CartVipBanner--sticked" data-v-261b598e="">
								<div data-v-895af704="" data-v-46d2f086=""
									class="CartVipBanner__tooltip tooltip 
    "
									style="right: 311px;">
									<span data-v-46d2f086="" data-v-895af704=""
										class="CartVipBanner__message"><p data-v-46d2f086=""
											data-v-895af704="">작가님당 10,000원 이상 구매 시</p> <strong
										data-v-46d2f086="" data-v-895af704=""
										class="CartVipBanner__message"> VIP 클럽 무료배송 <i
											data-v-46d2f086="" data-v-895af704=""
											class="idus-icon-arrow-right"></i></strong></span>
									
									<div data-v-895af704="" class="triangle bottom end">
										<div data-v-895af704="" class="before"></div>
										<div data-v-895af704="" class="after"></div>
									</div>
								</div>
							</div> -->
							<div data-v-e14558f4="" data-v-261b598e=""
								class="CartCheckoutDesktop">
								<div data-v-e14558f4="" class="CartCheckoutDesktop__item">
									<div data-v-e14558f4="" class="CartCheckoutDesktop__label">작품금액</div>
									<div data-v-e14558f4="" class="CartCheckoutDesktop__value">
										<span data-v-e14558f4="">###</span> <span data-v-e14558f4=""
											class="CartCheckoutDesktop__priceUnit">원</span>
									</div>
								</div>
								<div data-v-e14558f4="" class="CartCheckoutDesktop__item--fixed">+</div>
								<div data-v-e14558f4="" class="CartCheckoutDesktop__item">
									<div data-v-e14558f4="" class="CartCheckoutDesktop__label">배송비</div>
									<div data-v-e14558f4="" class="CartCheckoutDesktop__value">
										<span data-v-e14558f4="">###</span> <span data-v-e14558f4=""
											class="CartCheckoutDesktop__priceUnit">원</span>
										<!---->
									</div>
								</div>
								<!---->
								<div data-v-e14558f4="" class="CartCheckoutDesktop__item--fixed">=</div>
								<div data-v-e14558f4="" class="CartCheckoutDesktop__item">
									<div data-v-e14558f4="" class="CartCheckoutDesktop__label">결제
										예정금액</div>
									<div data-v-e14558f4=""
										class="CartCheckoutDesktop__value--highlight">
										<span data-v-e14558f4="">###</span> <span data-v-e14558f4=""
											class="CartCheckoutDesktop__priceUnit">원</span>
									</div>
								</div>
							</div>
						</div>
						<div data-v-6d930ad9="" data-v-56dfc770=""
							class="CartPage__bottom">
							<button data-v-32d88566="" data-v-6d930ad9=""
								class="CommonButton CartPage__paymentButton CommonButton--large CommonButton--red "
								data-v-56dfc770="">주문하기</button>
						</div>
					</div>
				</div>

				<!-- 수정 버튼 클릭 시 나오는 화면 -->
				<div data-v-13abb1d2="" class="footer_modal_container" style="display: none">
					<div data-v-13abb1d2="" class="vue-curtain"></div>
					<div data-v-13abb1d2="" class="footer_modal_inner_content">
						<div data-v-c2543b4e="" data-v-13abb1d2=""
							class="CartOptionUpdateModal">
							<div data-v-a29fc536="" data-v-c2543b4e="" role="dialog"
								class="CartModal">
								<div data-v-a29fc536="" id="dialogTitle"
									class="CartModal__header">
									<div data-v-c2543b4e="" data-v-a29fc536=""
										class="CartOptionUpdateModal__header">
										<div data-v-c2543b4e="" data-v-a29fc536=""
											class="CartOptionUpdateModal__title">옵션 수정</div>
										<div data-v-c2543b4e="" data-v-a29fc536=""
											class="CartOptionUpdateModal__close">
											<button data-v-0e3e26ae="" data-v-c2543b4e="" type="button"
												aria-label="닫기" class="CloseButton" data-v-a29fc536="">
												<i data-v-0e3e26ae="" class="idus-icon-close"></i>
											</button>
										</div>
									</div>
								</div>
								<div data-v-a29fc536="" id="dialogDesc"
									class="CartModal__content">
									<div data-v-c2543b4e="" data-v-a29fc536=""
										class="CartOptionUpdateModal__content">
										<div data-v-c2543b4e="" data-v-a29fc536=""
											class="CartOptionUpdateModal__productInfoSection">
											<img data-v-c2543b4e="" data-v-a29fc536=""
												src="https://image.idus.com/image/files/32792664a7c24dae91861a2e764c6a00_100.jpg"
												alt="" class="CartOptionUpdateModal__productImage">
											<div data-v-c2543b4e="" data-v-a29fc536=""
												class="CartOptionUpdateModal__productDetail">
												<div data-v-c2543b4e="" data-v-a29fc536=""
													class="CartOptionUpdateModal__productName">[1+1할인]미니
													드로잉 폰케이스(전신ver.)</div>
												<div data-v-c2543b4e="" data-v-a29fc536=""
													class="CartOptionUpdateModal__salePrice">
													<span data-v-c2543b4e="" data-v-a29fc536=""
														class="CartOptionUpdateModal__saleRate">28%</span> <span
														data-v-c2543b4e="" data-v-a29fc536=""
														class="CartOptionUpdateModal__productPrice">15,900원</span>
													<span data-v-c2543b4e="" data-v-a29fc536=""
														class="CartOptionUpdateModal__originPrice">22,000원</span>
												</div>
											</div>
										</div>
										<div data-v-c2543b4e="" data-v-a29fc536=""
											class="CartOptionUpdateModal__optionInfoSection">
											<div data-v-c2543b4e="" data-v-a29fc536=""
												class="CartOptionUpdateModal__attachmentLabel">현재 선택한
												옵션</div>
											<div data-v-c2543b4e="" data-v-a29fc536=""
												class="CartOptionUpdateModal__optionBox">• 케이스 타입 :
												젤리케이스 • 그림 속 인원 : 1인 • 시안 확인 여부 : 시안 확인O • 리뷰이벤트 확인 : 수령후
												리뷰시 이미지파일 전송드려요!</div>
										</div>
										<div data-v-c2543b4e="" data-v-a29fc536=""
											class="select_option_text">
											<strong data-v-c2543b4e="" data-v-a29fc536="">옵션 선택</strong>
										</div>
										<div data-v-0699e1d6="" data-v-c2543b4e=""
											class="CartOptionSelectorGroup" data-v-a29fc536="">
											<div data-v-4f0ad632="" data-v-0699e1d6=""
												class="SelectorGroup cart_option_selector_group">
												<div data-v-4b6162e7="" data-v-4f0ad632=""
													class="BaseSelector">
													<select data-v-4b6162e7="" class="BaseSelector__selector"></select>
													<button data-v-4b6162e7="" type="button"
														class="BaseSelector__triggerButton">
														<span data-v-4b6162e7=""
															class="BaseSelector__selectedItem BaseSelector__selectedItem--placeholder">케이스
															타입</span> <i data-v-4b6162e7=""
															class="ui-icon fa fa-chevron-down"></i>
													</button>
													<ul data-v-4b6162e7="" class="BaseSelector__optionItemList">
														<li data-v-4b6162e7=""
															value="897251b2-9453-4410-a3e3-3ac4eaf57b66"
															class="BaseSelector__optionItem">젤리케이스</li>
														<li data-v-4b6162e7=""
															value="9f654401-eaea-4fa0-a603-34fa7a7dd8ef"
															class="BaseSelector__optionItem">하드케이스(무광)(+3000원)</li>
														<li data-v-4b6162e7=""
															value="9d8f4904-8f3c-49e8-8217-42b8f32f9e6b"
															class="BaseSelector__optionItem">하드케이스(유광)(+3000원)</li>
														<li data-v-4b6162e7=""
															value="696f71b5-0a85-448c-95a3-a9098aab8fc7"
															class="BaseSelector__optionItem">[1+1할인]
															젤리1개+젤리1개(+9500원)</li>
														<li data-v-4b6162e7=""
															value="902e879f-7c61-4194-9126-eaa3ce718478"
															class="BaseSelector__optionItem">[1+1할인]
															젤리1개+하드1개(+11900원)</li>
														<li data-v-4b6162e7=""
															value="56898aad-13ac-45c6-ae0a-7d0d885876bd"
															class="BaseSelector__optionItem">[1+1할인]
															하드1개+하드1개(+14300원)</li>
													</ul>
												</div>
												<div data-v-4b6162e7="" data-v-4f0ad632=""
													class="BaseSelector BaseSelector--disabled">
													<select data-v-4b6162e7="" class="BaseSelector__selector"></select>
													<button data-v-4b6162e7="" type="button"
														class="BaseSelector__triggerButton">
														<span data-v-4b6162e7=""
															class="BaseSelector__selectedItem BaseSelector__selectedItem--placeholder">그림
															속 인원</span> <i data-v-4b6162e7=""
															class="ui-icon fa fa-chevron-down"></i>
													</button>
													<ul data-v-4b6162e7="" class="BaseSelector__optionItemList">
														<li data-v-4b6162e7=""
															value="90f64995-56f8-42c4-a643-19064e3c3e18"
															class="BaseSelector__optionItem">1인</li>
														<li data-v-4b6162e7=""
															value="b5a51fb1-6f8f-4929-bc3f-aac2baf58706"
															class="BaseSelector__optionItem">2인(+1000원)</li>
														<li data-v-4b6162e7=""
															value="e78118b6-540b-454d-8059-5628977fdc73"
															class="BaseSelector__optionItem">3인(+2000원)</li>
														<li data-v-4b6162e7=""
															value="43fa6fb0-9a57-4e9f-bae5-226f0d639822"
															class="BaseSelector__optionItem">4인(+3000원)</li>
														<li data-v-4b6162e7=""
															value="a6f0f8ca-0dcf-41f7-ad5a-63af96abb44f"
															class="BaseSelector__optionItem">5인(+4000원)</li>
													</ul>
												</div>
												<div data-v-4b6162e7="" data-v-4f0ad632=""
													class="BaseSelector BaseSelector--disabled">
													<select data-v-4b6162e7="" class="BaseSelector__selector"></select>
													<button data-v-4b6162e7="" type="button"
														class="BaseSelector__triggerButton">
														<span data-v-4b6162e7=""
															class="BaseSelector__selectedItem BaseSelector__selectedItem--placeholder">시안
															확인 여부</span> <i data-v-4b6162e7=""
															class="ui-icon fa fa-chevron-down"></i>
													</button>
													<ul data-v-4b6162e7="" class="BaseSelector__optionItemList">
														<li data-v-4b6162e7=""
															value="d7aef885-68cb-43a6-9d44-01c224df8e80"
															class="BaseSelector__optionItem">시안 확인O</li>
														<li data-v-4b6162e7=""
															value="5f677dfe-1c67-4467-af45-66f1855f0192"
															class="BaseSelector__optionItem">시안 확인X</li>
													</ul>
												</div>
												<div data-v-4b6162e7="" data-v-4f0ad632=""
													class="BaseSelector BaseSelector--disabled">
													<select data-v-4b6162e7="" class="BaseSelector__selector"></select>
													<button data-v-4b6162e7="" type="button"
														class="BaseSelector__triggerButton">
														<span data-v-4b6162e7=""
															class="BaseSelector__selectedItem BaseSelector__selectedItem--placeholder">리뷰이벤트
															확인</span> <i data-v-4b6162e7=""
															class="ui-icon fa fa-chevron-down"></i>
													</button>
													<ul data-v-4b6162e7="" class="BaseSelector__optionItemList">
														<li data-v-4b6162e7=""
															value="7cf7ec00-4226-45d1-a137-bc7331c51dec"
															class="BaseSelector__optionItem">수령후 리뷰시 이미지파일
															전송드려요!</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div data-v-a29fc536="" class="CartModal__buttonGroup">
									<div data-v-c2543b4e="" data-v-a29fc536=""
										class="CartOptionUpdateModal__buttonGroup">
										<button data-v-32d88566="" data-v-c2543b4e=""
											class="CommonButton CommonButton--middle CommonButton--white " id="option_update_cancle_btn"
											data-v-a29fc536="">취소</button>
										<button data-v-32d88566="" data-v-c2543b4e=""
											class="CommonButton CommonButton--middle CommonButton--red "
											data-v-a29fc536="">확인</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!---->
				<!---->
			</div>
		</div>
		<jsp:include page="footer.jsp" />
	</div>
</body>
</html>
