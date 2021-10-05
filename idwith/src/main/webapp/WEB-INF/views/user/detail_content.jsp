<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>${goods.goods_name}| 아이디어스 - 핸드메이드, 수공예, 수제 먹거리</title>
<meta charset="UTF-8">
<link rel="stylesheet" href="resources/css/detail_content.css" />
<link rel="stylesheet" href="resources/css/vendor.client.min.css" />
<link rel="stylesheet" href="resources/css/idus.web.min.css" />
<link rel="stylesheet" href="resources/css/sp-icon.css" />

<!-- 아이콘 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<script type="text/javascript" src="resources/js/detail_content.js"></script>
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="resources/js/common/common.js"></script>

<!-- 파비콘 이미지 설정 -->
<link rel="shortcut icon" type="image/x-icon"
	href="resources/images/title/icon_300.PNG">

</head>
<body>
	<div class="wrap">
		<!-- 로딩 중 화면 -->
		<jsp:include page="header_goods.jsp" />
		<div class="dimmed-background"></div>

		<div id="content" class="content relative" data-page="prd-detail">
			<div id="sticky-start" style="position: absolute; top: 25px;"></div>

			<div class="inner-w mobile-full">
				<section id="img-section" class="prd-detail-section">
					<!-- ui image preview -->
					<div class="image-preview ui-slider" data-ui="slider" tabindex="-1"
						style="touch-action: pan-y; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">

						<div class="outer-frame">
							<ul class="img-view inner-frame">
								<li class="ui-slide" data-trigger-preview="open"
									style="background-image: url(${goods.goods_photo[0]})"
									data-index="0"></li>
								<li class="ui-slide" data-trigger-preview="open"
									style="background-image: url(https://image.idus.com/image/files/c0bbefa95b6f4c71a67f3b0846bce6d3_720.png)"></li>
								<li class="ui-slide" data-trigger-preview="open"
									style="background-image: url(https://image.idus.com/image/files/147c93ed104a4ffbaba57dac52d6b33b_720.png)"></li>
								<li class="ui-slide" data-trigger-preview="open"
									style="background-image: url(https://image.idus.com/image/files/0e3b2401a0244059bf2d66040e1971f4_720.png)"></li>
								<li class="ui-slide" data-trigger-preview="open"
									style="background-image: url(https://image.idus.com/image/files/342409145c5e4a04b6c33cf51112d741_720.png)"></li>
								<li class="ui-slide" data-trigger-preview="open"
									style="background-image: url(https://image.idus.com/image/files/261c59ecca934f0e9a5523f81ae153d1_720.png)"></li>
							</ul>
						</div>

						<fieldset class="ui-control">
							<button type="button" class="ui-btn prev" aria-label="이전">
								<i class="fa fa-angle-left fa-2x"></i>
							</button>
							<ul class="img-list indicator">
								<li class="indicator-btn active"
									style="background-image: url(${goods.goods_photo[0]})"></li>
								<li class="indicator-btn"
									style="background-image: url(https://image.idus.com/image/files/c0bbefa95b6f4c71a67f3b0846bce6d3_320.png)"></li>
								<li class="indicator-btn"
									style="background-image: url(https://image.idus.com/image/files/147c93ed104a4ffbaba57dac52d6b33b_320.png)"></li>
								<li class="indicator-btn"
									style="background-image: url(https://image.idus.com/image/files/0e3b2401a0244059bf2d66040e1971f4_320.png)"></li>
								<li class="indicator-btn"
									style="background-image: url(https://image.idus.com/image/files/342409145c5e4a04b6c33cf51112d741_320.png)"></li>
								<li class="indicator-btn"
									style="background-image: url(https://image.idus.com/image/files/261c59ecca934f0e9a5523f81ae153d1_320.png)"></li>
							</ul>
							<button type="button" class="ui-btn next" aria-label="다음">
								<i class="fa fa-angle-right fa-2x"></i>
							</button>
						</fieldset>
					</div>
				</section>

				<aside class="sticky_aside product_detail" data-ui="sticky_aside"
					data-state="fixed" data-offset="36" data-stick="false">
					<div class="sticky_aside_product">
						<!-- artist_card -->
						<!-- artist_card -->
						<div class="artist_card">
							<div class="artist_card__split">
								<a class="artist_card__link" href="seller_goods.do">
									<div class="artist_card__img"
										style="background-image: url(${goods.userSellerVO.seller_profile_img[0]});"></div>
									<span class="artist_card__label">
										${goods.userSellerVO.store_name} <i
										class="idus-icon-arrow-right"></i>
								</span>
								</a>
							</div>
							<div class="artist_card__split"></div>
						</div>
						<!-- <small class="sticky_aside__small">?= $product->category->c_name ?></small> -->
						<h2 class="sticky_aside__produc-title">${goods.goods_name}</h2>

						<!-- price_tag -->
						<!-- <div class="price_tag">
                                        <span class="price_tag__hilight"><em>13</em>%</span>
                    <span class="price_tag__strong">
                        <strong class="sold-price" data-sold-price="13900">13,900</strong>원
                    </span>
                    <del class="price_tag__crossout">16,000원</del>
                                    </div> -->

						<!-- 작품 통계 데이터 -->
						<!--                 <mark class="sticky_aside__marked">262명의 고객님들이 이 작품을 구매 했어요!</mark>
                 -->

						<!--  <div data-vue="ProductDetailInfo">작품 정보</div>-->
						<div data-v-32b45c8e="" class="product-detail-info">
							<div data-v-07201bc4="" data-v-32b45c8e=""
								class="price_tag-detail">
								<!---->
								<mark data-v-07201bc4="" class="sticky_aside__marked right">
									<button data-v-488f5f82="" data-v-336b258e=""
										data-v-07201bc4="" aria-label="찜하기" class="full-button"
										style="width: 24px; height: 100%;">
										<div data-v-336b258e="" data-v-488f5f82=""
											class="product-detail-star-text-box">
											<div data-v-336b258e="" data-v-488f5f82=""
												class="product-detail-star-box">
												<i data-v-336b258e="" data-v-488f5f82=""
													class="product-detail-star idus-icon-favorite-border-p-5"></i>
											</div>
											<div data-v-336b258e="" data-v-488f5f82=""
												class="star-count-text-box">
												<p data-v-336b258e="" data-v-488f5f82=""
													class="star-count-text">408</p>
											</div>
										</div>
									</button>
									<button data-v-07201bc4="" data-ui="url-copy"
										data-ui-option="short" data-icon-event="hover"
										data-clipboard-message="작품 URL이 복사되었습니다."
										class="product-detail-share-button">
										<div data-v-07201bc4="" class="product-detail-share-box">
											<i data-v-07201bc4="" class="idus-icon-share-p-5"></i>
										</div>
									</button>
								</mark>
								<span data-v-07201bc4=""> <span data-v-07201bc4=""
									class="price_tag__crossout">${goods.goods_price}</span>
								</span>
								<div data-v-07201bc4="" id="marker"></div>
							</div>
							<div data-v-473706da="" data-v-32b45c8e=""
								class="price_tag-detail height">
								<mark data-v-473706da="" class="sticky_aside__marked right">
									<span data-v-473706da="" id="count_up" class="bold-txt dark"></span>
									<span data-v-473706da="" class="dark">구매</span>
								</mark>
								<div data-v-473706da="" slot="badge-group"
									class="item-info__badge-group">
									<div data-v-2f2bc7d4="" data-v-473706da=""
										class="badge badge-food">안전식품</div>
								</div>
							</div>
							<div data-v-7b67a23d="" data-v-32b45c8e=""
								class="product-define-info">
								<div data-v-9e98616a="" data-v-7b67a23d="" class="data-row">
									<table data-v-9e98616a="">
										<tr data-v-9e98616a="">
											<td data-v-9e98616a="" class="data-row__title">적립금</td>
											<td data-v-9e98616a="" class="data-row__content"><span
												data-v-7b67a23d="" data-v-9e98616a="">최대 <span
													data-v-7b67a23d="" data-v-9e98616a="" class="bold-txt">486P</span></span>
												<div data-v-9e98616a="" class="balloon">
													<img data-v-9e98616a=""
														src="resources/images/detail/icon-info.svg" alt="">
												</div></td>
										</tr>
									</table>
									<div data-v-9e98616a="" class="balloon__content">
										<button data-v-9e98616a="" type="button"
											class="close_btn mobile-show">
											<i data-v-9e98616a="" class="idus-icon-close"></i>
										</button>
										<div data-v-7b67a23d="" data-v-9e98616a=""
											class="point-balloon">
											<table data-v-7b67a23d="" data-v-9e98616a=""
												class="balloon-table">
												<tr data-v-7b67a23d="" data-v-9e98616a="">
													<td data-v-7b67a23d="" data-v-9e98616a=""
														class="balloon-table left">회원등급 적립률</td>
													<td data-v-7b67a23d="" data-v-9e98616a="">2%</td>
												</tr>
												<tr data-v-7b67a23d="" data-v-9e98616a="">
													<td data-v-7b67a23d="" data-v-9e98616a=""
														class="balloon-table left">VIP 클럽 추가 적립</td>
													<td data-v-7b67a23d="" data-v-9e98616a="">+1%</td>
												</tr>
												<tr data-v-7b67a23d="" data-v-9e98616a="">
													<td data-v-7b67a23d="" data-v-9e98616a=""
														class="balloon-table left">간편 결제 시</td>
													<td data-v-7b67a23d="" data-v-9e98616a="">+0.5%</td>
												</tr>
											</table>
											<div data-v-7b67a23d="" data-v-9e98616a="">
												<table data-v-7b67a23d="" data-v-9e98616a=""
													class="vip-section">
													<div data-v-7b67a23d="" data-v-9e98616a=""
														class="vip-section__line"></div>
													<tr data-v-7b67a23d="" data-v-9e98616a="">
														<td data-v-7b67a23d="" data-v-9e98616a=""
															style="float: left;"><h4 data-v-7b67a23d=""
																data-v-9e98616a="" class="hilight">아이디어스 VIP 클럽</h4></td>
														<td data-v-7b67a23d="" data-v-9e98616a=""
															style="float: right;"><a data-v-7b67a23d=""
															data-v-9e98616a=""
															href="https://www.idus.com/w/board/notice/detail?id=55"
															class="hilight red">더 알아보기&gt;</a></td>
													</tr>
												</table>
												<p data-v-7b67a23d="" data-v-9e98616a=""
													class="vip-section__desc">핸드메이드를 사랑하는 회원님들에게 제공하는 유료
													서비스로 작품 금액의 1.0% 추가 적립 및 배송비 무료 혜택을 제공합니다.</p>
											</div>
										</div>
									</div>
								</div>
								<div data-v-9e98616a="" data-v-7b67a23d="" class="data-row">
									<table data-v-9e98616a="">
										<tr data-v-9e98616a="">
											<td data-v-9e98616a="" class="data-row__title">구매후기</td>
											<td data-v-9e98616a="" class="data-row__content">
												<div data-v-7b67a23d="" data-v-9e98616a=""
													class="review-rate-box">
													<a data-v-4e8934ee="" data-v-7b67a23d="" href="#prd-review"
														class="review-rate-box" data-v-9e98616a="">
														<div data-v-4e8934ee="" style="padding-top: 1px;">
															<!-- 별점 등록 -->
															<span data-v-ef94db98="" data-v-4e8934ee=""
																data-value="4.6" class="ui_rating fr"> <i
																data-v-ef94db98="" data-state="active"
																class="ui_icon--star idus-icon-star-fill"
																style="font-size: 15px;"></i> <i data-v-ef94db98=""
																data-state="active"
																class="ui_icon--star idus-icon-star-fill"
																style="font-size: 15px;"></i> <i data-v-ef94db98=""
																data-state="active"
																class="ui_icon--star idus-icon-star-fill"
																style="font-size: 15px;"></i> <i data-v-ef94db98=""
																data-state="active"
																class="ui_icon--star idus-icon-star-fill"
																style="font-size: 15px;"></i> <i data-v-ef94db98=""
																data-state="active"
																class="ui_icon--star idus-icon-star-fill"
																style="font-size: 15px;"></i>
															</span>
														</div>
														<div data-v-4e8934ee="" style="margin-left: 3px;">(37)</div>
														<div data-v-4e8934ee="" style="margin-top: 2px;">
															<i data-v-4e8934ee="" class="idus-icon-arrow-right"
																style="font-size: 12px;"></i>
														</div>
													</a>
												</div>
											</td>
										</tr>
									</table>
									<!---->
								</div>
								<div data-v-9e98616a="" data-v-7b67a23d="" class="data-row">
									<table data-v-9e98616a="">
										<tr data-v-9e98616a="">
											<td data-v-9e98616a="" class="data-row__title">배송비</td>
											<td data-v-9e98616a="" class="data-row__content"><span
												data-v-7b67a23d="" data-v-9e98616a=""> 2,900원 <span
													data-v-7b67a23d="" data-v-9e98616a="" class="subcontent">
														(50,000원 이상 무료배송) </span>
											</span>
												<div data-v-9e98616a="" class="balloon">
													<img data-v-9e98616a=""
														src="resources/images/detail/icon-info.svg" alt="">
												</div></td>
										</tr>
									</table>
									<div data-v-9e98616a="" class="balloon__content">
										<button data-v-9e98616a="" type="button"
											class="close_btn mobile-show">
											<i data-v-9e98616a="" class="idus-icon-close"></i>
										</button>
										<li data-v-7b67a23d="" data-v-9e98616a=""><span
											data-v-7b67a23d="" data-v-9e98616a="">동일 작가 작품 50,000원
												이상 구매 시 무료배송</span></li>
										<li data-v-7b67a23d="" data-v-9e98616a="">제주 / 도서산간 추가비용
											: <span data-v-7b67a23d="" data-v-9e98616a="">3,000원</span>
										</li>
									</div>
								</div>
								<div data-v-9e98616a="" data-v-7b67a23d="" class="data-row">
									<table data-v-9e98616a="">
										<tr data-v-9e98616a="">
											<td data-v-9e98616a="" class="data-row__title">배송 시작</td>
											<td data-v-9e98616a="" class="data-row__content"><div
													data-v-7b67a23d="" data-v-9e98616a=""
													class="delivery-header-text-box">
													<p data-v-7b67a23d="" data-v-9e98616a=""
														class="delivery-average-text">평균</p>
													<p data-v-7b67a23d="" data-v-9e98616a=""
														class="delivery-average-text bold">1일</p>
													<!---->
													<p data-v-7b67a23d="" data-v-9e98616a=""
														class="delivery-average-text comma">,</p>
													<p data-v-7b67a23d="" data-v-9e98616a=""
														class="delivery-average-text">최대 7일 이내</p>
												</div> <!----></td>
										</tr>
									</table>
									<!---->
								</div>
								<div data-v-9e98616a="" data-v-7b67a23d="" class="data-row">
									<table data-v-9e98616a="">
										<tr data-v-9e98616a="">
											<td data-v-9e98616a="" class="data-row__title">수량</td>
											<td data-v-9e98616a="" class="data-row__content"><span
												data-v-7b67a23d="" data-v-9e98616a="">${goods.goods_stock}</span>
												<!----></td>
										</tr>
									</table>
									<!---->
								</div>
							</div>
							<!---->
						</div>

						<!-- 작품 추가 정보: 배송비 & 적립금 -->
						<div class="tab-style" data-ui="toggle-tab" style="display: none">
							<div class="tab">
								<span> 주문시 제작 </span>
							</div>

							<div class="tab" data-ui-id="product_info_detail">
								<span>배송비 2,900원</span> <span>7일 이내 발송</span> <i
									class="idus-icon-arrow-down"></i>
							</div>
							<ul data-ui="tab-panel" data-panel-id="product_info_detail">
								<li>제주 / 도서산간 추가비용 : <span>3,000원</span>
								</li>
								<li><span>50,000원 이상 구매시 배송비 무료(제주, 도서산간 추가 비용 제외)</span></li>
							</ul>
							<!-- 적립금 -->
							<div class="tab" data-ui-id="user_point">
								<span>적립금</span> <span>최대 3.5% 적립</span> <i
									class="idus-icon-arrow-down"></i>
							</div>
							<div class="user-point" data-ui="tab-panel"
								data-panel-id="user_point">
								<dl>
									<dt>회원등급 적립률</dt>
									<dd class="hilight blue">2.0%</dd>
									<dt>VIP 클럽 가입</dt>
									<dd class="hilight blue">+1.0%</dd>
									<dt>간편하게 카드 결제시</dt>
									<dd class="hilight blue">+0.5%</dd>
								</dl>
								<h4 class="hilight red">아이디어스 VIP 클럽</h4>
								<p>핸드메이드를 사랑하는 회원님들에게 제공하는 유료 서비스로 작품 금액의 1.0% 추가 적립 및 배송비
									무료 혜택을 제공합니다.</p>
								<a href="/w/me/vipclub" class="hilight blue">더 알아보기></a>
							</div>
						</div>

						<!-- 작품 옵션 선택 -->
						<div data-v-1c074f7f="">
							<div data-v-1c074f7f="" class="vue-curtain"></div>
							<form data-v-1c074f7f="" id="buyScrollable"
								class="checkout_product Scrollable">
								<div data-v-1c074f7f="" class="mobile-layer">
									<button data-v-1c074f7f="" type="button"
										class="mobile-show mobile-ui-close">
										<i data-v-1c074f7f="" class="idus-icon-arrow-down"></i>
									</button>
									<button data-v-1c074f7f="" type="button"
										class="ui_btn select_group_trigger">
										옵션 선택 <i data-v-1c074f7f="" class="idus-icon-arrow-down"></i>
									</button>
									<div data-v-1c074f7f="" id="optionScrollable"
										class="select_group Scrollable" style="display: none;">
										<div data-v-1c074f7f="" class="select_group__header">
											<span data-v-1c074f7f="" class="select_group__title">전체
												옵션 2개 중 0개 선택</span>
											<button data-v-1c074f7f="" type="button">
												<i data-v-1c074f7f="" class="idus-icon-close"></i>
											</button>
										</div>
										<div data-v-1c074f7f="" class="select_group__body">
											<!---->
											<ol data-v-1c074f7f=""
												class="select_group__parent_list active">
												<li data-v-1c074f7f=""><span data-v-1c074f7f="">1.
														수제청 용량선택</span> <span data-v-1c074f7f="" class="align_right">

												</span> <i data-v-1c074f7f="" class="icon idus-icon-arrow up"></i></li>
												<div data-v-1c074f7f="" class="bottom-border full"></div>
												
												<!-- 작품의 옵션 리스트 -->
												<ul data-v-1c074f7f=""
													class="select_group__child_list active">
													<li data-v-1c074f7f=""><span data-v-1c074f7f="">레몬청
															500g 1개</span> <!----></li>
													<li data-v-1c074f7f=""><span data-v-1c074f7f="">레몬청
															1000g 1개</span> <span data-v-1c074f7f="">(+12,000원)</span></li>
													<li data-v-1c074f7f=""><span data-v-1c074f7f="">레몬청
															500g 1개(선물포장)</span> <span data-v-1c074f7f="">(+1,500원)</span></li>
													<li data-v-1c074f7f=""><span data-v-1c074f7f="">레몬청
															1000g 1개(선물포장)</span> <span data-v-1c074f7f="">(+13,500원)</span></li>
												</ul>
											</ol>
											<ol data-v-1c074f7f="" class="select_group__parent_list">
												<li data-v-1c074f7f=""><span data-v-1c074f7f="">2.
														⛔배송날짜동의필수⛔</span> <span data-v-1c074f7f="" class="align_right">

												</span> <i data-v-1c074f7f="" class="icon idus-icon-arrow down"></i></li>
												<div data-v-1c074f7f="" class="bottom-border"></div>
												<!---->
											</ol>
										</div>
										<button data-v-1c074f7f="" type="button"
											class="ui_btn--large select_group__close">옵션 선택 닫기</button>
									</div>
									<div data-v-1c074f7f="" class="selected_options">
										<!---->
									</div>
								</div>
								<fieldset data-v-1c074f7f=""
									class="checkout_product__btn_group show1">
									<!---->
									<button data-v-1c074f7f="" type="submit" data-to="cart"
										class="ui_btn cart">장바구니</button>
									<button data-v-1c074f7f="" type="submit" data-to="payment"
										data-pay-type="npay" class="ui_btn npay">
										<img data-v-1c074f7f="" src="/resources/dist/images/npay.svg"
											alt="N Pay">
									</button>
									<button data-v-1c074f7f="" type="submit" data-to="payment"
										class="ui_btn--red buy">구매하기</button>
									<button data-v-1c074f7f="" type="submit" data-to="present"
										data-pay-type="present" class="ui_btn--redline present">
										<div data-v-1c074f7f="" class="inner">
											<i data-v-1c074f7f="" class="idus-icon-gift"></i>
											<div data-v-1c074f7f="" class="btn_txt">선물하기</div>
										</div>
									</button>
								</fieldset>
								<!---->
								<div data-v-1c074f7f="" class="alertmsg">
									<span data-v-1c074f7f="" class="close-btn"><i
										data-v-1c074f7f="" class="idus-icon-close"></i></span>
									<p data-v-1c074f7f="">장바구니에 작품이 담겼습니다.</p>
									<a data-v-1c074f7f="" href="/w/cart"
										class="btn btn-s btn-point">장바구니 가기</a>
								</div>
							</form>
						</div>

					</div>
					<!-- 쿠폰 받기 -->
					<div data-vue="GetProductCoupon"></div>
				</aside>
				<a data-vue-ref="artist_message_url" href="message.do"
					class="artist-inquire-float-btn" target="_blank"
					data-ui="inquire-float-btn" style="bottom: 102px;"> <img
					src="resources/images/detail/artist-inquire-icon.svg" alt="작가 문의"
					style="bottom: 30px;">
				</a>
			</div>

			<div class="inner-w">
				<!-- vip club banner -->

				<div>
					<div data-vue="vip-banner"></div>
				</div>
				<!-- 배송기간 그래프 -->
				<section class="prd-detail-section">
					<div data-v-98dfbe4e="" class="delivery-graph-box ">
						<div data-v-98dfbe4e="" class="delivery-header-text-box">
							<p data-v-98dfbe4e="" class="delivery-average-text">평균</p>
							<p data-v-98dfbe4e="" class="delivery-average-text bold">1일</p>
							<!---->
							<p data-v-98dfbe4e="" class="delivery-average-text comma">,</p>
							<p data-v-98dfbe4e="" class="delivery-average-text">최대 7일 이내
								배송 시작</p>
						</div>
						<div data-v-98dfbe4e="">
							<div data-v-491c69d6="" data-v-98dfbe4e="" class="graph-line-box">
								<div data-v-491c69d6="" class="graph-line-day content-text ">
									당일</div>
								<div data-v-491c69d6="" class="graph-line-bar">
									<div data-v-66bdffec="" data-v-491c69d6=""
										class="graph-bar-box">
										<div data-v-66bdffec="" class="graph-bar-rate black"
											style="width: 33%;"></div>
									</div>
								</div>
								<div data-v-491c69d6="" class="graph-line-rate content-text ">
									33%</div>
							</div>
							<div data-v-491c69d6="" data-v-98dfbe4e="" class="graph-line-box">
								<div data-v-491c69d6="" class="graph-line-day content-text red">
									1일</div>
								<div data-v-491c69d6="" class="graph-line-bar">
									<div data-v-66bdffec="" data-v-491c69d6=""
										class="graph-bar-box">
										<div data-v-66bdffec="" class="graph-bar-rate red"
											style="width: 60%;"></div>
									</div>
								</div>
								<div data-v-491c69d6="" class="graph-line-rate content-text red">
									60%</div>
							</div>
							<div data-v-491c69d6="" data-v-98dfbe4e="" class="graph-line-box">
								<div data-v-491c69d6="" class="graph-line-day content-text ">
									2일</div>
								<div data-v-491c69d6="" class="graph-line-bar">
									<div data-v-66bdffec="" data-v-491c69d6=""
										class="graph-bar-box">
										<div data-v-66bdffec="" class="graph-bar-rate black"
											style="width: 7%;"></div>
									</div>
								</div>
								<div data-v-491c69d6="" class="graph-line-rate content-text ">
									7%</div>
							</div>
							<div data-v-491c69d6="" data-v-98dfbe4e="" class="graph-line-box">
								<div data-v-491c69d6="" class="graph-line-day content-text ">
									3일</div>
								<div data-v-491c69d6="" class="graph-line-bar">
									<div data-v-66bdffec="" data-v-491c69d6=""
										class="graph-bar-box">
										<!---->
									</div>
								</div>
								<div data-v-491c69d6="" class="graph-line-rate content-text ">
									0%</div>
							</div>
							<div data-v-491c69d6="" data-v-98dfbe4e="" class="graph-line-box">
								<div data-v-491c69d6="" class="graph-line-day content-text ">
									4일 이상</div>
								<div data-v-491c69d6="" class="graph-line-bar">
									<div data-v-66bdffec="" data-v-491c69d6=""
										class="graph-bar-box">
										<!---->
									</div>
								</div>
								<div data-v-491c69d6="" class="graph-line-rate content-text ">
									0%</div>
							</div>
						</div>
						<div data-v-98dfbe4e="" class="delivery-footer-text-box">최근
							3개월 주문의 배송준비 기간 (주말, 공휴일 제외)</div>
					</div>
					<script>
						vuepack
								.createDeliveryGraph('[data-vue="delivery-graph"]');
					</script>
				</section>
				<div data-trigger-detail="true"></div>
				<div data-trigger="fixposition"></div>
				<nav class="flex_nav_style nav-mobile" data-ui-position="default"
					data-ui="tab-control" data-page="product">
					<a href="#prd-info" data-id="prd-info" class="active">작품정보</a> <a
						href="#prd-enquiries" data-id="prd-enquiries">배송 / 교환 / 환불</a> <a
						href="#prd-review" data-id="prd-review">구매후기(37)</a> <a
						href="#prd-comments" data-id="prd-comments">댓글</a>
				</nav>

				<!-- 제품정보 -->
				<section id="prd-info" class="prd-detail-section"
					data-scroll="hashChecker">
					<!-- 안전식품 고지 -->
					<div class="safe-food-box">
						<h2 class="safe-food-title">안심하고 드세요!</h2>
						<p class="safe-food-text">식품위생법에 따른 영업 신고, 등록을 하신 작가님이 판매하는
							안전식품입니다.</p>
					</div>

					<p style="word-break: break-all" class="para">
						${goods.goods_info}</p>

					<div class="hashtag-box">
						<div class="center-txt">
							<span class="txt">Category &amp; Keyword</span> <a
								class="txt-strong" href="cate_goods.do"> 농축수산물 </a>
						</div>
						<div class="listwrap">
							<ul>
								<li><a href="product_search.do">#밤조림</a></li>
								<li><a
									href="/search?word=부모님선물&keyword_channel=pdp_keyword">#부모님선물</a></li>
								<li><a
									href="/search?word=임산부아이간식&keyword_channel=pdp_keyword">#임산부아이간식</a></li>
								<li><a href="/search?word=부여밤&keyword_channel=pdp_keyword">#부여밤</a></li>
								<li><a href="/search?word=알밤&keyword_channel=pdp_keyword">#알밤</a></li>
								<li><a href="/search?word=깐밤&keyword_channel=pdp_keyword">#깐밤</a></li>
								<li><a href="/search?word=군밤&keyword_channel=pdp_keyword">#군밤</a></li>
								<li><a href="/search?word=맛있는밤&keyword_channel=pdp_keyword">#맛있는밤</a></li>
								<li><a
									href="/search?word=선물용깐밤&keyword_channel=pdp_keyword">#선물용깐밤</a></li>
								<li><a href="/search?word=깐은행&keyword_channel=pdp_keyword">#깐은행</a></li>
							</ul>
						</div>
					</div>

					<div class="tab-style" data-ui="toggle-tab">
						<div class="split">
							<div class="tab" data-ui-id="info-prd">
								<span>작품 정보제공 고시</span> <i class="icon idus-icon-arrow down"></i>
							</div>
							<table class="table-style column" data-ui="tab-panel"
								data-panel-id="info-prd">
								<colgroup>
									<col width="30%">
									<col width="*">
								</colgroup>
								<tbody>
									<tr>
										<th>포장단위별 용량(중량), 수량</th>
										<td>500g, 1kg</td>
									</tr>
									<tr>
										<th>생산자 및 소재지</th>
										<td>달하산농장 / 충남부여 (굿뜨래)</td>
									</tr>
									<tr>
										<th>원재료명 및 함량</th>
										<td>밤 100%, 은행100%</td>
									</tr>
									<tr>
										<th>제조연월일, 유통기한 또는 품질유지기한</th>
										<td>당해년도 수확, 작품상세표시.</td>
									</tr>
									<tr>
										<th>관리법상 표시사항</th>
										<td>통신판매신고 No : 제2004-00013호</td>
									</tr>
									<tr>
										<th>구성</th>
										<td>깐 밤 , 깐은행, 황 률(건조밤)</td>
									</tr>
									<tr>
										<th>보관방법 또는 취급방법</th>
										<td>개봉후 김치냉장 보관 or 냉동보관바람니다.</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="split">
							<div class="tab" data-ui-id="info-artist">
								<span>판매 작가 정보</span> <i class="icon idus-icon-arrow down"></i>
							</div>
							<table class="table-style column" data-ui="tab-panel"
								data-panel-id="info-artist">
								<colgroup>
									<col width="30%">
									<col width="*">
								</colgroup>
								<tbody>
									<tr>
										<th>대표자명</th>
										<td>${goods.userSellerVO.seller_name}</td>
									</tr>

									<tr>
										<th>이메일</th>
										<td>${goods.userSellerVO.user_id}</td>
									</tr>
									<tr>
										<th>전화번호</th>
										<td>아이디위드 고객센터 1668-3651
											<div class="txt-extra">작품 관련 문의는 작품 상세페이지 내, 우측 하단 “작가
												문의” 버튼을 이용해 주세요.</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div data-vue="ReportCenterTab"></div>
						<div id="prd-enquiries" class="split" data-scroll="hashChecker">
							<div class="title-style-dropdown tab active prd-detail-section"
								data-ui-id="info-delivery">
								<span>배송 / 교환 / 환불</span> <i class="icon idus-icon-arrow down"></i>
							</div>
							<table class="table-style column active" data-ui="tab-panel"
								data-panel-id="info-delivery">
								<colgroup>
									<col width="30%">
									<col width="70%">
								</colgroup>
								<tbody>
									<tr>
										<th>배송비</th>
										<td>
											<ul class="inner">
												<li>기본료 : <em class="hilight blue">2,900원</em>
												</li>
												<li>배송비 무료 조건 : <em class="hilight blue">50,000원</em> <em
													class="txt-dim">제주, 도서산간일 경우 기본료만 무료가 됩니다.</em>
												</li>
												<li>제주 / 도서산간 추가비용 : <em class="hilight blue">3,000원</em>
												</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th>제작 / 배송</th>
										<td>
											<div class="inner">
												<em class="hilight blue">7일 이내</em> <br /> <span
													class="txt-preline">주문 후 제작에 들어가는 작품입니다.</span>
											</div>
										</td>
									</tr>
									<tr>
										<th>교환 / 환불</th>
										<td>
											<div class="inner">
												<em class="hilight blue">가능</em> <br /> <span
													class="txt-preline">주문 전 판매 작가님과 연락하여 확인해주세요.</span>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</section>

				<!-- 구매후기 -->
				<section id="prd-review" class="prd-detail-section"
					data-scroll="hashChecker">
					<div class="title-style-sub" style="margin-bottom: 0;">
						<h3 class="txt">구매후기(37)</h3>
						<a class="to-right btn btn-xs btn-white" href="review_detail.do"
							data-modal-trigger="modal-link" data-modal-id="modal-review"
							data-modal-type="post">구매후기 작성하기</a>
					</div>
					<ul data-v-2e5d0212>
						<li data-v-a301bac8="" data-v-2e5d0212="" class="review"><a
							data-v-a301bac8="" href="review_detail.do">
								<div data-v-a301bac8="" class="review-header">
									<div data-v-a301bac8="" class="reviewer-info">
										<div data-v-a301bac8="" class="reviewer-thumbnail"
											style="background-image: url(resources/images/detail/artist01.PNG);"></div>
										<div data-v-a301bac8="" class="reviewer-detail-info">
											<span data-v-a301bac8="" class="reviewer-name">이보라</span> <span
												data-v-a301bac8="" class="review-date">2021년 06월 10일</span>
										</div>
									</div>
									<div data-v-a301bac8="" class="review-rate">
										<span data-v-ef94db98="" data-v-a301bac8="" data-value="5"
											class="ui_rating fr"> <i data-v-ef94db98=""
											data-state="active" class="ui_icon--star idus-icon-star-fill"
											style="font-size: 12px;"></i> <i data-v-ef94db98=""
											data-state="active" class="ui_icon--star idus-icon-star-fill"
											style="font-size: 12px;"></i> <i data-v-ef94db98=""
											data-state="active" class="ui_icon--star idus-icon-star-fill"
											style="font-size: 12px;"></i> <i data-v-ef94db98=""
											data-state="active" class="ui_icon--star idus-icon-star-fill"
											style="font-size: 12px;"></i> <i data-v-ef94db98=""
											data-state="active" class="ui_icon--star idus-icon-star-fill"
											style="font-size: 12px;"></i>
										</span>
									</div>
								</div>
								<div data-v-a301bac8="" class="review-body">
									<div data-v-a301bac8="" class="review-contents">애들이 생밤을
										좋아해서 사봤는데 달고맛있어요</div>
								</div>
								<p data-v-a301bac8="" class="review-option">
									<strong data-v-a301bac8="">구매 작품</strong> : 깐밤,은행: 깐밤 500g
								</p>
						</a></li>
						<nav data-v-450a0b42="" data-v-2e5d0212="">
							<!---->
							<button data-v-450a0b42="" type="button" class="active">1</button>
							<button data-v-450a0b42="" type="button" class="">2</button>
							<button data-v-450a0b42="" type="button" class="">3</button>
							<button data-v-450a0b42="" type="button" class="">4</button>
							<button data-v-450a0b42="" type="button" class="arrows">
								| 다음<i data-v-450a0b42="" class="idus-icon-arrow right"></i>
							</button>
						</nav>
					</ul>
					<div data-vue="ReviewList"></div>
				</section>

				<!-- 댓글 -->
				<section id="prd-comments" class="prd-detail-section comment-ui"
					data-scroll="hashChecker">
					<div class="title-style-sub">
						<h3 class="txt">댓글</h3>
						<a
							href="/w/product/d1e300b8-c0c7-48bd-803f-dfed5543954a/comment?before="
							class="to-right hilight blue" data-ui="comment-load">댓글 더보기</a>
					</div>


					<div class="banner-empty smaller hide">
						<div class="banner-icon">
							<i class="idus-icon-message"></i>
						</div>
						<p class="txt">행운의 첫 댓글을 남겨보세요.</p>
					</div>
					<ul class="comment-list" data-ui="comment-list">
						<li class="comment-item"><input name="uuid" type="hidden"
							value="7fc0b890-3366-4b19-9367-e2696f7418bf"> <input
							name="time_stamp" type="hidden" value="1592960344000">
							<div class="img-bg"
								style="background-image: url(resources/images/detail/artist01.PNG);"></div>
							<div class="area-txt">
								<span>조상미</span>
								<p class="txt">나중 도착한 500g도 도착하자마자 순삭 수고하셨습니다 1kg 또 주문합니다</p>
							</div></li>
						<li class="comment-item"><input name="uuid" type="hidden"
							value="8a2bccb8-5bcd-49ef-a2b7-6d96c4f659cf"> <input
							name="time_stamp" type="hidden" value="1594726057000">
							<div class="img-bg"
								style="background-image: url(resources/images/detail/artist01.PNG);"></div>
							<div class="area-txt">
								<span>람람</span>
								<p class="txt">혹시 냉동해두고 실온에 녹여서 생으로 먹어도 되나용?</p>
							</div></li>
					</ul>

					<form
						action="/w/product/d1e300b8-c0c7-48bd-803f-dfed5543954a/comment"
						class="area-form with-profile" data-ui="comment-form"
						aria-label="댓글남기기">
						<div class="inner">
							<div class="img-bg" style="background-image: url()"></div>
							<i class="idus-icon-mypage comment-icon" style="font-size: 32px;"></i>
							<label class="input-text" for="add_comment"
								aria-label="add_comment"> <input type="text"
								id="add_comment" name="comment" class="input-text"
								placeholder="댓글을 남겨주세요" autocomplete="off"
								aria-labelledby="add_comment">
							</label>
							<button type="submit" class="btn btn-s btn-point">등록</button>
						</div>
					</form>
					<!-- 기획전 배너 -->
					<div data-vue="detail_showroom_banner"></div>
				</section>
			</div>

			<!-- 작가 정보 -->
			<div class="full-w">
				<div id="sticky-end" class="inner-w banner-artist clf layout-split "
					data-layout-split="artist-banner" data-trigger="nav-end"
					title="artist-another-product">
					<a href="/w/artist/feba4e69-cd92-449f-8226-02e1d84ed3e4/product"
						class="ui_btn mobile-show more">작가님의 판매작품 더보기</a>

					<div class="ui_grid">
						<div class="title-style-sub">
							<h2 class="txt">판매중인 다른 작품들</h2>
							<a href="seller_goods?seller_code=${goods.seller_code}"
								class="to-right btn btn-xs btn-white mobile-hide">더보기</a>
						</div>

						<ul class="ui_grid__cols--4">
							<li class="ui_grid__item">
								<div class="ui_card ">
									<button type="button"
										class="ui_card__overlay btn-ico sp-icon icon-favorite"
										aria-label="찜하기" data-name="starred-toolbar"
										data-starred-type="product" data-init="" data-starred=""
										data-target-id="6bb0d3b2-c05c-4ac4-a048-895ef317ca73">
									</button>

									<div class="ui_card__imgcover">
										<a href="/w/product/6bb0d3b2-c05c-4ac4-a048-895ef317ca73"
											target="_blank" aria-label="✔청포도청500g/1kg 생일 선물"
											class="ui_card__img"
											data-product-id="6bb0d3b2-c05c-4ac4-a048-895ef317ca73"
											style="background-image: url()" data-was-processed="true"></a>
										<!-- 판매중인 다른 작품 이미지 넣기 -->
									</div>

									<div class="ui_card__info">
										<a href="/w/artist/feba4e69-cd92-449f-8226-02e1d84ed3e4"
											class="ui_card__label" target="_blank">
											<!-- 상점명 넣기 -->
										</a> <a href="/w/product/6bb0d3b2-c05c-4ac4-a048-895ef317ca73"
											class="ui_card__title" target="_blank">
											<!-- 판매중인 다른 작품명 넣기 -->
										</a>
									</div>

								</div>
							</li>
						</ul>
					</div>
					<!-- QuickProfileContainer -->
					<section data-v-2618eab2="" class="quick-profile"
						style="border-left: 1px solid rgb(217, 217, 217); width: 480px; padding: 40px 24px 32px; margin: 39px 0px 0px 16px;">
						<div data-v-2618eab2="" class="profile-area">
							<a data-v-2618eab2=""
								href="/w/artist/feba4e69-cd92-449f-8226-02e1d84ed3e4/product"
								target="_blank:"
								style="width: 68px; height: 68px; margin-right: 22px; position: relative;"><img
								data-v-2618eab2=""
								src="https://image.idus.com/image/files/5865afde983b4a8ab97578b23e42728b.jpg"
								alt="artist thumbnail" class="artist-thumbnail"> <!----></a>
							<div data-v-2618eab2="" class="artist-info">
								<div data-v-2618eab2="" class="artist-info__head">
									<div data-v-2618eab2="">
										<a data-v-2618eab2=""
											href="seller_goods?seller_code=${goods.seller_code}"
											target="_blank"><p data-v-2618eab2=""
												class="artist-info__name">
												${goods.userSellerVO.store_name} <i data-v-2618eab2=""
													class="idus-icon-arrow right"></i>
											</p></a>
										<div data-v-2618eab2="" class="artist-info__rate">
											<span data-v-ef94db98="" data-v-2618eab2="" data-value="4.9"
												class="ui_rating fr"><i data-v-ef94db98=""
												data-state="active"
												class="ui_icon--star idus-icon-star-fill"
												style="font-size: 14px;"></i><i data-v-ef94db98=""
												data-state="active"
												class="ui_icon--star idus-icon-star-fill"
												style="font-size: 14px;"></i><i data-v-ef94db98=""
												data-state="active"
												class="ui_icon--star idus-icon-star-fill"
												style="font-size: 14px;"></i><i data-v-ef94db98=""
												data-state="active"
												class="ui_icon--star idus-icon-star-fill"
												style="font-size: 14px;"></i><i data-v-ef94db98=""
												data-state="active"
												class="ui_icon--star idus-icon-star-fill"
												style="font-size: 14px;"></i></span> <span data-v-2618eab2="">
												4.9 </span> <span data-v-2618eab2=""> (163) </span>
										</div>
									</div>
									<!---->
								</div>
								<div data-v-2618eab2="" class="artist-info__statistics">
									<div data-v-2618eab2="" class="data-area">
										<p data-v-2618eab2="" class="title">작품 찜</p>
										<span data-v-2618eab2="" class="data">
											${goods.goods_select} </span>
									</div>
									<div data-v-2618eab2="" class="data-area">
										<p data-v-2618eab2="" class="title">팔로워</p>
										<span data-v-2618eab2="" class="data"> 395 </span>
									</div>
									<div data-v-2618eab2="" class="data-area">
										<p data-v-2618eab2="" class="title">후원해주신 분들</p>
										<span data-v-2618eab2="" class="data"> 39 </span>
									</div>
								</div>
							</div>
						</div>
						<div data-v-2618eab2="" class="profile-contents"
							style="margin-left: 0px;">
							<div data-v-2618eab2="" class="introduce-area">
								<p data-v-2618eab2="" class="introduce-txt">${goods.userSellerVO.seller_profile}</p>
								<!---->
							</div>
							<div data-v-2618eab2="" class="btn-group">
								<button data-v-b534333e="" data-v-2618eab2="" type="button"
									class="follow"
									style="background-color: rgb(255, 123, 48); min-width: 50%; width: 50%; height: 36px; font-size: 14px; color: rgb(255, 255, 255); border: 1px solid rgb(255, 123, 48); border-radius: 4px;">
									<i data-v-b534333e="" class="idus-icon-plus"
										style="font-size: 16px;"></i> 팔로우
								</button>
								<!---->
								<!---->
								<a data-v-2618eab2=""
									href="seller_story?seller_code=${goods.seller_code}"
									target="_blank" class="story"> 스토리 보기 </a>
								<!---->
							</div>
							<!---->
						</div>
						<!---->
					</section>
				</div>
			</div>
		</div>



		<section class="mobile-ui"></section>
		<section class="ui-img-viewer" data-ui="img-viewer"
			style="display: none">
			<span class="close"></span>
			<div class="ui-slider view-main" data-resize="true" data-zoom="false">
				<div class="outer-frame current-view">
					<ul class="inner-frame"></ul>
				</div>
				<fieldset class="ui-control">
					<button type="button" class="ui-btn prev" aria-label="이전">
						<i class="fa fa-2x fa-angle-left"></i>
					</button>
					<ul class="indicator thumb-list"></ul>
					<button type="button" class="ui-btn next" aria-label="다음">
						<i class="fa fa-2x fa-angle-right"></i>
					</button>
				</fieldset>
			</div>
		</section>
		<a href="#header" class="to-top" data-ui="scroll-to-top" data-page=""
			style="display: flex;"> <img
			src="resources/images/common/go-to-top-image.png" alt="go to top">
		</a>
		<jsp:include page="footer.jsp" />

	</div>
	<!-- div WRAP -->

</body>
</html>
