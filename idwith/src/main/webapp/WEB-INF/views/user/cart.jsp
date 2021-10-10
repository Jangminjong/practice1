<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디어스 | 장바구니</title>
<link rel="stylesheet" href="resources/css/idus.web.min.css">
<link rel="stylesheet" href="resources/css/vendor.client.min.css">
<link rel="stylesheet" href="resources/css/cart.css">
<link rel="stylesheet" href="resources/admin/css/app.css"/>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="resources/js/cart.js"></script>

<!-- 파비콘 이미지 설정 -->
<link rel="shortcut icon" type="image/x-icon"
	href="resources/images/title/icon_300.PNG">

</head>
<body>
<input type="hidden" id="user_id" value="${email}">
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
							data-v-1e62c1aa="" style="color: #333333;">1.</em> <span data-v-1e62c1aa="" style="color: #333333;">장바구니</span> <i
							data-v-1e62c1aa="" class="fa fa-angle-right"></i></li>
						<li data-v-1e62c1aa="" class="PageHeader__stepsItem"><em
							data-v-1e62c1aa="">2.</em> <span data-v-1e62c1aa="">주문결제</span> <i
							data-v-1e62c1aa="" class="fa fa-angle-right"></i></li>
						<li data-v-1e62c1aa="" class="PageHeader__stepsItem"><em
							data-v-1e62c1aa="">3.</em> <span data-v-1e62c1aa="">주문완료</span> <!----></li>
					</ol>
				</div>
				
				
				<c:choose>
					<c:when test="${email eq null || cartListLength eq 0}">
						<div data-v-358230e2="" data-v-6d930ad9="">
							<div data-v-dee528b0="" data-v-358230e2="" class="EmptyList">
								<div data-v-dee528b0="" class="EmptyList__logo">
									<i data-v-dee528b0="" class="idus-icon-logo-empty"></i>
								</div>
								<div data-v-dee528b0="">
									<p data-v-dee528b0="" class="EmptyList__text">
										장바구니가 비었습니다.<br> 작가님들의 다양한 작품을 담아보세요.
									</p>
								</div>
								<button data-v-32d88566="" data-v-358230e2=""
									class="CommonButton CartEmpty__button CommonButton--large CommonButton--red "
									data-v-dee528b0="" onclick="location.href='index.do'">작품 구경하러 가기</button>
							</div>
						</div>
					</c:when>
					<c:when test="${email ne null && goodsList ne null}">
							<div data-v-56dfc770="" data-v-6d930ad9="" sticky-container="" class="CartList" id="clientCartList">
							<div class="vue-sticky-placeholder" style="padding-top: 0px;"></div>
							<div data-v-56dfc770="" sticky-z-index="201"
								on-stick="handleChangeStickTop"
								class="CartList__sticky vue-sticky-el"
								style="position: static; top: auto; bottom: auto; left: auto; width: auto; z-index: 201;">
								<!---->
							</div>
		
							<c:forEach var="goodsList" items="${goodsList}" varStatus="status">
								<%-- <c:choose>
									<c:when test="${cartInfoList.goods_code > 1}"> --%>
									<form>
										<input type="hidden" id="goods_code${status.count}" name="goods_code" value="${goodsList.goods_code}">
										<div data-v-415ede24="" data-v-6d930ad9="" class="CartArtistList" id="cartListItem${status.count}" name="goodsTag"
											data-v-56dfc770="">
											<div data-v-a6596a66="" data-v-415ede24="" class="CartArtistItem">
												<div data-v-a6596a66="" class="CartArtistItem__header">
													<label data-v-a6596a66=""
														for="402a05af-6c1c-4ce2-9858-35839922e287"><div
															data-v-5e27c696="" data-v-a6596a66="" class="checkbox">
															<div data-v-5e27c696="" class="input-checkbox">
																<input data-v-5e27c696="" id="" type="checkbox"
																	autocomplete="off" class="bp"
																	value="402a05af-6c1c-4ce2-9858-35839922e287" name="checkAll">
																<!-- <input type="checkbox"> -->
															</div>
															<!---->
														</div> <span data-v-a6596a66="" class="CartArtistItem__title">
															${goodsList.store_name} 님 </span></label>
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
																					<input data-v-5e27c696="" id="goodsItem${status.count}" type="checkbox"
																						autocomplete="off" class="bp" name="checkAll"
																						value="${goodsList.goods_code}">
																				</div>
																				<!---->
																			</div>
																		</div>
																		<img data-v-2389adcc="" alt=""
																			class="CartProductListItem__productImage" id="img${status.count}"
																			src="${goodsList.goodsVO.goods_photo[0]}">
																	</div>
																	<div data-v-2389adcc=""
																		class="CartProductListItem__productInfoTextGroup">
																		<a data-v-2389adcc=""
																			href="/w/product/a640a8e0-7cbd-4160-9a02-9eacf4537750"
																			class="CartProductListItem__productName" id="goods_name${status.count}">${goodsList.goodsVO.goods_name}</a><!-- 작품 이름 -->
																		<em data-v-2389adcc=""
																			class="CartProductListItem__productItemCount"> 주문시
																			제작 </em>
																	</div>
																	<!---->
																</div>
																<div data-v-2389adcc=""
																	class="CartProductListItem__optionInfo">
																	<div data-v-84a4f0f8="" data-v-2389adcc=""
																		class="CartOptionList" name="CartOptionList" id="CartOptionListForm">
																		
																		<!-- 상품 총 가격을 표시하기 위한 변수 -->
																		<c:set var="totalPrice" value="0"/>
																		<!-- forEach, when : 같은 상품코드가 추가되면 선택한 옵션들 리스트를 출력-->
																		<c:forEach var="option" items="${optionList}" varStatus="stau">
																			<c:if test="${option.goodsCode eq goodsList.goods_code}">
																			
																			<div data-v-7705597e="" data-v-84a4f0f8="" name="goodsOptionTag"
																				class="CartOptionListItem" id="optionListItem${stau.count}">
																				<div data-v-7705597e=""
																					class="CartOptionListItem__splitLeft">
																					<span id="optionList${stau.count}">
																						<c:forEach var="op" begin="0" end="${optionNum[stau.index]-1}">
																							<c:if test="${ st.count-1 < optionNum[stau.index]}">
																							<em data-v-7705597e="" class="CartOptionListItem__optionText">
																								<c:set var="opValNum" value="optionValue${op}"/>
																								<c:set var="opPriNum" value="optionPrice${op}"/>
																								${option[opValNum]}(+${option[opPriNum]}원)
																								<input type="hidden" name="" value="" />
																							</em>
																							</c:if>
																						</c:forEach>
																					</span>
																					<div data-v-7705597e=""
																						class="CartOptionListItem__counter">
																						<label data-v-9b324a5a="" data-v-7705597e=""
																							for="numberCount" class="NumberCounter">
																							<button data-v-9b324a5a="" type="button"
																								class="NumberCounter__button" id="quantityMinus" onclick="changeMinus('update')">-</button>
																							<input data-v-9b324a5a="" name="numberCount" type="text"
																								class="NumberCounter__input" id="cart_quantity" value="${option.quantity}">
																							<button data-v-9b324a5a="" type="button"
																								class="NumberCounter__button" id="quantityPlus" onclick="changePlus('update')">+</button>
																						</label>
																					</div>
																				</div>
																				<div data-v-7705597e=""
																					class="CartOptionListItem__splitRight">
																					<em data-v-7705597e=""
																						class="CartOptionListItem__totalPrice">
																								
																						<span class="goods_option_price${stau.count}" id="optionQuantity">${option.goodsPrice}</span>원</em>
																						<c:set var="totalPrice" value="${totalPrice + option.goodsPrice}"/>
																					<div data-v-7705597e=""
																						class="CartOptionListItem__btnGroup">
																						<div data-v-29633eb4="" data-v-7705597e=""
																							class="CartOptionEditingButtonGroup">
																							<button data-v-29633eb4="" type="button"
																								class="CartOptionEditingButtonGroup__button CartOptionEditingButtonGroup__button--left"
																								id="${option.goodsCode}" onclick="optionUpdate(this.id, ${stau.count})">
																								<i class="fa fa-cog" aria-hidden="true"></i>
																							</button>
																							<button data-v-29633eb4="" type="button"
																								class="CartOptionEditingButtonGroup__button CartOptionEditingButtonGroup__button--right"
																								id="${option.goodsCode}" onclick="optionDelete(this.id, ${stau.count})">
																								<i class="fa fa-times" aria-hidden="true"></i>
																							</button>
																						</div>
																					</div>
																				</div>
																			</div>
																			</c:if>
																		</c:forEach>
				
																		<!--  -->
																	</div>
																	<div data-v-5eae4d4e="" data-v-2389adcc="" class="orderMessage">
																		<div data-v-5eae4d4e=""
																			class="CartOrderMessageEditor__productOrderMessage">
																			<div data-v-1934649e="" data-v-5eae4d4e=""
																				class="CommonTextEditor">
																				<textarea data-v-1934649e="" maxlength="500"
																					placeholder="주문요청 사항을 입력해 주세요."
																					class="CommonTextEditor__textarea" id="orderMessage">${goodsList.cart_order_content}</textarea>
																				<em data-v-1934649e=""
																					class="CommonTextEditor__maxLength">500</em>
																			</div>
																		</div>
																		
																		<!-- 저장 버튼 -->
																		<div data-v-5eae4d4e=""
																			class="CartOrderMessageEditor__orderMessageSaveBtn">
																			<button data-v-32d88566="" data-v-5eae4d4e=""
																				class="CommonButton CommonButton--middle CommonButton--white "
																				id="order_message_btn" onclick="orderMessageUpdate()"
																				style="width: 72px; height: 80px; margin-left: 10px; font-weight: bold;">
																				저장</button>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</ul>
												</section>
												<section data-v-a6596a66="" class="CartArtistItem__section">
													<div data-v-a6596a66="" class="CartArtistItem__label">작품 가격</div>
													<em data-v-a6596a66="" class="CartArtistItem__price" >
														<span id="goodsPrice">
															<c:out value="${totalPrice }"/>
														</span>원
													</em>
												</section>
												<section data-v-a6596a66="" class="CartArtistItem__section">
													<div data-v-a6596a66="" class="CartArtistItem__label">배송비</div>
													<div data-v-a6596a66="" class="CartArtistItem__price">
														<div data-v-76555e5b="" data-v-a6596a66=""
															class="ShippingPrice">
															<em data-v-76555e5b="" class="ShippingPrice__price">${goodsList.cart_delivery_fee}원</em>
															<div data-v-76555e5b="" class="ShippingPrice__desc">
																70,000원 이상 무료배송</div>
														</div>
													</div>
												</section>
												<!---->
											</div>
										</div>
									</form>
									<%-- </c:when>
								</c:choose> --%>
							</c:forEach>

							<!-- 주문하기 버튼 클릭 시 나오는 로딩 화면 -->
							<div data-v-6d9e4c37="" data-v-6d930ad9="" class="vue-curtain" id="loadingForm">
								<div data-v-6d9e4c37="" class="modal_spinner_container">
									<span data-v-6d9e4c37="" class="loader-spinner"></span>
									<div data-v-6d9e4c37="" class="modal_spinner_content">
										<p data-v-6d930ad9="" data-v-6d9e4c37=""
											class="modal_spinner_content_text">결제를 준비중입니다.</p>
									</div>
								</div>
							</div>


							<div class="vue-sticky-placeholder" style=""></div>
							<div data-v-56dfc770="" sticky-side="bottom"
								on-stick="handleChangeStickBottom"
								class="CartList__sticky vue-sticky-el bottom-sticky" id="resultForm"
								style="position: static; top: auto; bottom: auto; left: auto; width: auto; z-index: 10;">
								<div data-v-20c2da48="" data-v-6d930ad9=""
									class="CartCheckboxControl" data-v-56dfc770="">
									<div data-v-5e27c696="" data-v-20c2da48="" class="checkbox">
										<div data-v-5e27c696="" class="input-checkbox">
											<input data-v-5e27c696="" id="cart-product-all-check"
												type="checkbox" autocomplete="off" class="bp" value="" onclick="selectAll(this)" name="checkAll">
										</div>
										<label data-v-5e27c696="" for="cart-product-all-check"><span
											data-v-20c2da48="" data-v-5e27c696=""
											class="CartCheckboxControl__label"> 전체 선택 (
											<span data-v-20c2da48="" data-v-5e27c696=""
												class="CartCheckboxControl__label--bold">
												<!-- 선택한 상품 수 -->0</span>/${cartListLength})<!-- 장바구니에 들어있는 상품 수 -->
												<input type="hidden" id="cartLength" value="${cartListLength}">
										</span></label>
									</div>
									<button data-v-32d88566="" data-v-20c2da48=""
										class="CommonButton CommonButton--middle CommonButton--white selDelete">
										선택 삭제</button>
								</div>
								<div data-v-261b598e="" data-v-6d930ad9="" class="CartCheckout"
									data-v-56dfc770="">
									<div data-v-e14558f4="" data-v-261b598e=""
										class="CartCheckoutDesktop">
										<div data-v-e14558f4="" class="CartCheckoutDesktop__item">
											<div data-v-e14558f4="" class="CartCheckoutDesktop__label">작품금액</div>
											<div data-v-e14558f4="" class="CartCheckoutDesktop__value">
												<span data-v-e14558f4="">0</span> <span data-v-e14558f4=""
													class="CartCheckoutDesktop__priceUnit">원</span>
											</div>
										</div>
										<div data-v-e14558f4="" class="CartCheckoutDesktop__item--fixed">+</div>
										<div data-v-e14558f4="" class="CartCheckoutDesktop__item">
											<div data-v-e14558f4="" class="CartCheckoutDesktop__label">배송비</div>
											<div data-v-e14558f4="" class="CartCheckoutDesktop__value">
												<span data-v-e14558f4="">0</span> <span data-v-e14558f4=""
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
												<span data-v-e14558f4="">0</span> <span data-v-e14558f4=""
													class="CartCheckoutDesktop__priceUnit">원</span>
											</div>
										</div>
									</div>
								</div>
								<div data-v-6d930ad9="" data-v-56dfc770=""
									class="CartPage__bottom">
									<button data-v-32d88566="" data-v-6d930ad9=""
										class="CommonButton CartPage__paymentButton CommonButton--large CommonButton--red "
										data-v-56dfc770="" id="payment_btn" onclick="paymentBtn()">주문하기</button>
								</div>
							</div>
						</div>
					</c:when>
				</c:choose>

				<!-- 수정 버튼 클릭 시 나오는 화면 -->
				<div data-v-13abb1d2="" class="footer_modal_container" style="display: none">
					<input type="hidden" value="${optionList[0].goodsVO.goods_price}" id="init_price"/>
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
											<input type="hidden" name="cur_goods_code" value="">
											<img data-v-c2543b4e="" data-v-a29fc536=""
												src=""
												alt="" class="CartOptionUpdateModal__productImage"><!-- 여기에 상품 이미지 -->
											<div data-v-c2543b4e="" data-v-a29fc536=""
												class="CartOptionUpdateModal__productDetail">
												<div data-v-c2543b4e="" data-v-a29fc536=""
													class="CartOptionUpdateModal__productName"><!-- 여기에 상품 이름 --></div>
												<div data-v-c2543b4e="" data-v-a29fc536=""
													class="CartOptionUpdateModal__salePrice">
													<span data-v-c2543b4e="" data-v-a29fc536=""
														class="CartOptionUpdateModal__productPrice"><!-- 여기에 상품 가격 --></span>
													
												</div>
											</div>
										</div>
										<div data-v-c2543b4e="" data-v-a29fc536=""
											class="CartOptionUpdateModal__optionInfoSection">
											<div data-v-c2543b4e="" data-v-a29fc536=""
												class="CartOptionUpdateModal__attachmentLabel" id="resultOption">현재 선택한
												옵션</div>
											<div data-v-c2543b4e="" data-v-a29fc536=""
												class="CartOptionUpdateModal__optionBox"><!-- 여기에 현재 선택한 옵션 --></div>
												<input type="hidden" id="updateOption" value="" />
										</div>
										
										
										<!-- 새로 수정한 옵션 -->
										<div data-v-106ab16b="" data-v-c2543b4e=""
											class="CartOptionStockCounter selected_options" data-v-a29fc536="" style="display: none">
											<div data-v-106ab16b=""
												class="CartOptionStockCounter__selectedOptionLable"
												id="selected_options">
												<!-- 선택한 옵션들이 나오는 부분 --></div>
											<div data-v-106ab16b="" class="CartOptionStockCounter__stockWrapper">
												<div data-v-106ab16b="" class="CartOptionStockCounter__numberCounter">
													<label data-v-9b324a5a="" data-v-106ab16b="" for="numberCount" class="NumberCounter">
														<button data-v-9b324a5a="" type="button" class="NumberCounter__button" onclick="changeMinus('modal')">
															-
														</button>
														<input data-v-9b324a5a="" name="numberCount_m" type="text" class="NumberCounter__input" value="1">
														<button data-v-9b324a5a="" type="button" class="NumberCounter__button" onclick="changePlus('modal')">
															+
														</button>
													</label>
												</div>
												<div data-v-106ab16b="" class="CartOptionStockCounter__priceWrapper">
													<div data-v-106ab16b="" class="CartOptionStockCounter__priceLabel"id="goodsPrice_m">
														<!-- 선택한 합산 -->
														<span id="total_price"></span>원
														<input type="hidden" id="total" value=""/>
													</div>
													<div data-v-106ab16b="" class="CartOptionStockCounter__closeButton">
														<div data-v-09a3984f="" data-v-106ab16b=""class="IconButton">
															<button data-v-32d88566="" data-v-09a3984f="" class="CommonButton CommonButton--mini CommonButton--white ">
																<i class="fa fa-times" aria-hidden="true"></i>
															</button>
														</div>
													</div>
												</div>
											</div>
										</div>

										<div id="option-modal">
											<div data-v-c2543b4e="" data-v-a29fc536=""
												class="select_option_text">
												<strong data-v-c2543b4e="" data-v-a29fc536="">옵션 선택</strong>
											</div>
											<div data-v-0699e1d6="" data-v-c2543b4e=""
												class="CartOptionSelectorGroup" data-v-a29fc536="">
												<div data-v-4f0ad632="" data-v-0699e1d6=""
													class="SelectorGroup cart_option_selector_group">
													
													<!-- 여기에 상품 옵션 반복 -->
													<div data-v-4b6162e7="" data-v-4f0ad632=""
														class="BaseSelector">
														<c:forEach var="modalOptionList" items="${optionList}">
															<div>
																<select name="goods_option_value" id="optionList" class="form-control"
																 onchange="optionChange()">
																	<option selected>${modalOptionList.goods_op1_name} 선택</option>
																	<c:forEach var="subOptionValueList" items="${modalOptionList.goods_op1_value}"
																						varStatus="status">
																		<option value='${subOptionValueList},${modalOptionList.goods_op1_price[status.index]}'
																			id="${modalOptionList.goods_op1_price[status.index]}">
																			${subOptionValueList}(+${modalOptionList.goods_op1_price[status.index]}원)</option>
																	</c:forEach>
																</select>
															</div>
														</c:forEach>
														
													</div>
													
													
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
											data-v-a29fc536="" id="update-option-btn">확인</button>
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
