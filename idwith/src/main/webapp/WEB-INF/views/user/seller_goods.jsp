<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>아이디위드 | 작가 상품</title>
<!-- 파비콘 이미지 설정 -->
<link rel="shortcut icon" type="image/x-icon"
	href="resources/images/title/icon_300.PNG">

<link rel="stylesheet" href="resources/css/seller_goods.css">
<link rel="stylesheet" href="resources/css/seller_main.css">
<link rel="stylesheet" href="resources/css/common.css">
<link rel="stylesheet" href="resources/css/idus.web.min.css">
<link rel="stylesheet" href="resources/css/vendor.client.min.css">
<link rel="stylesheet" href="resources/css/board.css">

<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>

</head>
<body>
	<jsp:include page="header_goods.jsp" />
	<section class="artist-contents">
		<!-- 상단 프로필 -->
		<section data-v-2618eab2="" class="quick-profile"
			style="width: 526px; padding: 30px 0px 36px;">
			<div data-v-2618eab2="" class="profile-area">
				<a data-v-2618eab2="" href="seller_goods.do" target="_blank:"
					style="width: 108px; height: 108px; margin-right: 33px; position: relative;">
					<img data-v-2618eab2="" src="${sellerInfo.seller_profile_img[0]}"
					alt="artist thumbnail" class="artist-thumbnail"> <!---->
				</a>
				<div data-v-2618eab2="" class="artist-info">
					<div data-v-2618eab2="" class="artist-info__head">
						<div data-v-2618eab2="">
							<a data-v-2618eab2="" href="seller_goods.do" target="_blank">
								<p data-v-2618eab2="" class="artist-info__name">
									${sellerInfo.seller_name}</p>
							</a>
							<div data-v-2618eab2="" class="artist-info__rate">
								<span data-v-ef94db98="" data-v-2618eab2="" data-value="4.85"
									class="ui_rating fr">
								<i class="fa fa-star" aria-hidden="true" style="color: #f5eb75;"></i>
								</span> <span data-v-2618eab2=""> 4.85<!-- 작가 평균 별점 -->
								</span> <span data-v-2618eab2=""> (3,768)<!-- 별점 작성한 회원의 수 -->
								</span>
							</div>
						</div>
					</div>
					<div data-v-2618eab2="" class="artist-info__statistics">
						<div data-v-2618eab2="" class="data-area">
							<p data-v-2618eab2="" class="title">작품 찜</p>
							<span data-v-2618eab2="" class="data"> 2.8만<!-- 찜 한 회원의 수 -->
							</span>
						</div>
						<div data-v-2618eab2="" class="data-area">
							<p data-v-2618eab2="" class="title">팔로워</p>
							<span data-v-2618eab2="" class="data"> 8.3천<!-- 팔로워 한 회원의 수 -->
							</span>
						</div>
						<div data-v-2618eab2="" class="data-area">
							<p data-v-2618eab2="" class="title">후원해주신 분들</p>
							<span data-v-2618eab2="" class="data"> 975<!-- 후원 한 회원의 수 -->
							</span>
						</div>
					</div>
				</div>
			</div>
			<div data-v-2618eab2="" class="profile-contents"
				style="margin-left: 143px;">
				<div data-v-2618eab2="" class="introduce-area">
					<p data-v-2618eab2="" class="introduce-txt">${sellerInfo.seller_profile}</p>
				</div>
				<div data-v-2618eab2="" class="btn-group">
					<button data-v-b534333e="" data-v-2618eab2="" type="button"
						class="follow"
						style="background-color: rgb(255, 123, 48); witdh: 100%; height: 36px; font-size: 14px; color: rgb(255, 255, 255); border: 1px solid rgb(255, 123, 48); border-radius: 4px;">
						<i class="fa fa-bookmark" aria-hidden="true" style="font-size: 16px;"></i>&nbsp;&nbsp;팔로우
					</button>
					<!-- <button data-v-2618eab2="" data-modal-trigger="support-artist"
					data-modal="open" class="support">후원하기</button> -->
					<!---->
					<!---->
				</div>
				<!-- <div data-v-2618eab2="" class="coupon-area">
				<div data-v-6ec8e2fd="" data-v-39059e14="" data-v-2618eab2=""
					class="coupon follow">
					<div data-v-6ec8e2fd="" class="coupon__dotted-line top"></div>
					<div data-v-6ec8e2fd="" class="coupon__dotted-line bottom"></div>
					<div data-v-39059e14="" data-v-6ec8e2fd="" class="coupon-contents">
						<div data-v-39059e14="" data-v-6ec8e2fd=""
							class="coupon-contents__info">
							<div data-v-39059e14="" data-v-6ec8e2fd="">
								<p data-v-39059e14="" data-v-6ec8e2fd="" class="desc">작가
									팔로우하고 혜택받자!</p>
								<strong data-v-39059e14="" data-v-6ec8e2fd="" class="price">
									<span data-v-39059e14="" data-v-6ec8e2fd=""> 2,000원 </span>
									할인쿠폰 받기
								</strong>
							</div>
						</div>
						<div data-v-39059e14="" data-v-6ec8e2fd=""
							class="coupon-contents__btn-area">
							<div data-v-39059e14="" data-v-6ec8e2fd="" class="icon-wrapper">
								<i data-v-39059e14="" data-v-6ec8e2fd=""
									class="idus-icon-download"></i>
							</div>
						</div>
					</div>
				</div>
			</div> -->
			</div>
			<!---->
			<!-- <div data-v-2618eab2="" data-modal-root=""
			data-modal-id="support-artist" class="modal root"
			style="display: none;">
			<div data-v-2618eab2="" data-modal-overlay="" class="modal overlay"></div>
			<div data-v-2618eab2=""
				class="modal wrap modal-m donation_content_modal">
				<section data-v-2618eab2="" class="modal body">
					<form data-v-2618eab2="" data-ui="form-support"
						action="/support/payment" class="inner">
						<fieldset data-v-2618eab2="" class="donation_content bg">
							<label data-v-2618eab2="" class="flex-span space-between">
								<div data-v-2618eab2="" class="flex-span">
									<input data-v-2618eab2="" type="radio" name="support"
										value="1000" checked="checked" class="idus-icon-radio">
									<p data-v-2618eab2="" class="flex-span"
										style="margin-left: 13px;">
										<i data-v-2618eab2=""
											class="donation_icon idus-icon-donation-01"></i>시원한 캔음료
									</p>
								</div>
								<p data-v-2618eab2="">1,000원</p>
							</label> <label data-v-2618eab2="" class="flex-span space-between">
								<div data-v-2618eab2="" class="flex-span">
									<input data-v-2618eab2="" type="radio" name="support"
										value="3000" class="idus-icon-radio">
									<p data-v-2618eab2="" class="flex-span"
										style="margin-left: 13px;">
										<i data-v-2618eab2=""
											class="donation_icon idus-icon-donation-02"></i>따뜻한 커피
									</p>
								</div>
								<p data-v-2618eab2="">3,000원</p>
							</label> <label data-v-2618eab2="" class="flex-span space-between">
								<div data-v-2618eab2="" class="flex-span">
									<input data-v-2618eab2="" type="radio" name="support"
										value="5000" class="idus-icon-radio">
									<p data-v-2618eab2="" class="flex-span"
										style="margin-left: 13px;">
										<i data-v-2618eab2=""
											class="donation_icon idus-icon-donation-03"></i>달콤한 디저트
									</p>
								</div>
								<p data-v-2618eab2="">5,000원</p>
							</label> <label data-v-2618eab2="" class="flex-span space-between">
								<div data-v-2618eab2="" class="flex-span">
									<input data-v-2618eab2="" type="radio" name="support"
										value="10000" class="idus-icon-radio">
									<p data-v-2618eab2="" class="flex-span"
										style="margin-left: 13px;">
										<i data-v-2618eab2=""
											class="donation_icon idus-icon-donation-04"></i>든든한 식사
									</p>
								</div>
								<p data-v-2618eab2="">10,000원</p>
							</label>
						</fieldset>
						<div data-v-2618eab2="" class="donation_content_bottom flex-span">
							<legend data-v-2618eab2="" class="donation_content_color">
								결제방법 </legend>
							<label data-v-2618eab2="" style="margin-left: 16px;"> <input
								data-v-2618eab2="" type="radio" name="payment_type" value="CARD"
								checked="checked" class="idus-icon-radio"> <span
								data-v-2618eab2="" class="donation_content_color"
								style="padding-left: 2px;">신용카드</span>
							</label> <label data-v-2618eab2="" style="margin-left: 16px;"> <input
								data-v-2618eab2="" type="radio" name="payment_type"
								value="CELLPHONE" class="idus-icon-radio"> <span
								data-v-2618eab2="" class="donation_content_color"
								style="padding-left: 2px;">휴대폰</span>
							</label>
						</div>
						<input data-v-2618eab2="" type="hidden" name="artist_uuid"
							value="21b7fd4a-e03b-4dd5-b4d0-2f01e0d9b46a"> <input
							data-v-2618eab2="" type="hidden" name="call_uri"
							value="https://www.idus.com/w/artist/21b7fd4a-e03b-4dd5-b4d0-2f01e0d9b46a/profile">
						<div data-v-2618eab2="" class="btn-center">
							<button data-v-2618eab2="" type="submit"
								class="btn btn-s btn-point">후원하기</button>
						</div>
					</form>
				</section>
			</div>
		</div> -->
		</section>

		<!-- Tab Menu -->
		<div data-v-825a8b32="">
			<div data-v-825a8b32="" data-trigger-detail="true"></div>
			<div data-v-825a8b32="" data-trigger="fixposition"></div>
			<nav data-v-825a8b32="" data-ui="artist-home-tab-control"
				class="tab-group">

				<a data-v-825a8b32=""
					href="seller_profile.do?seller_code=${seller_code}" class="tab">프로필</a>
				<a data-v-825a8b32=""
					href="seller_story.do?seller_code=${seller_code}" class="tab">스토리</a>
				<a data-v-825a8b32=""
					href="seller_goods.do?seller_code=${seller_code}"
					class="tab active">판매작품</a> <a data-v-825a8b32=""
					href="seller_class.do?seller_code=${seller_code}" class="tab">클래스</a>
				<a data-v-825a8b32=""
					href="seller_review.do?seller_code=${seller_code}" class="tab">구매후기</a>
			</nav>
		</div>
		<div class="contents-container">

			<c:choose>
				<c:when test="${goodsCheck eq true}">
					<div data-v-62c8a401="">
						<!-- <div data-v-86e49a34="" data-v-62c8a401=""
							class="ArtistDesktopProductFilter">
							<div data-v-86e49a34=""
								class="ArtistDesktopProductFilte__filterTop"
								style="border-bottom: 1px solid rgb(217, 217, 217);">
								
								<div data-v-86e49a34="" class="ArtistDesktopProductFilter_Right">
									<div data-v-86e49a34=""
										class="ArtistDesktopProductFilter__sortSelector">
										<div data-v-4dfbe33c="" data-v-86e49a34=""
											class="SingleSelector">
											<div data-v-4b6162e7="" data-v-4dfbe33c=""
												class="BaseSelector">
											</div>
										</div>
									</div>
								</div>
							</div>
							
						</div> -->
						<div data-v-62c8a401="" class="SearchArea">
							<p data-v-62c8a401="" class="items-size">
							<c:set var="goodsCount" value="0"/>
							<c:forEach var="gsCount" items="${goodsList}">
								<c:set var="goodsCount" value="${goodsCount + 1}" />
							</c:forEach>
								<strong data-v-62c8a401=""><c:out value="${goodsCount}"/></strong>개의 판매작품
							</p>
						</div>
						<div data-v-38f53920="" data-v-62c8a401="" class="ui_grid mt10">
							<div data-v-38f53920="" class="ui_grid__cols--4">


								<c:forEach var="info" items="${goodsList}">
									<input type="hidden" id="seller_code"
										value="${info.seller_code}" />
									<div data-v-38f53920="" class="ui_grid__item">
										<div data-v-796f1feb="" data-v-38f53920=""
											class="base-card card--vertical product">
											<a data-v-796f1feb="" href="detail_content.do"
												target="_blank"><div data-v-796f1feb=""
													class="card-thumb-cover">
													<div data-v-796f1feb=""
														id="thumb-c8db523c-6f5a-4d60-831c-6cccab96a347"
														class="product-thumb-img"
														style="background-image: url(${info.goods_photo[0]})"></div>
													<div data-v-796f1feb="" class="product-bookmark">
														<button data-v-488f5f82="" aria-label="찜하기"
															class="full-button" data-v-796f1feb=""
															style="width: 24px; height: 24px;">
															<i data-v-488f5f82="" class="sp-icon icon-favorite"></i>
														</button>
													</div>
												</div>
												<div data-v-796f1feb="" class="card-info product-info">
													<div data-v-796f1feb="" class="product-info__artist-name">
														${sellerInfo.seller_name}</div>
													<div data-v-796f1feb="" class="product-info__name">
														${info.goods_name}</div>
													<div data-v-796f1feb="" class="product-info__price">
														<!-- <span data-v-796f1feb="" class="sale-rate"> 22% </span> <span
													data-v-796f1feb="" class="price-sale">
													<span data-v-796f1feb="" style="font-size: 14px;">원</span></span> -->
														<!-- 원가 -->
														<div data-v-796f1feb="" class="price-origin--before-sale">
															<span data-v-796f1feb="">${info.goods_price}원</span>
														</div>
													</div>
													<div data-v-796f1feb="" class="product-info__badge-group"
														style="margin-top: 12px;">
														<div data-v-2f2bc7d4="" class="badge badge-food"
															data-v-796f1feb="">안전식품</div>
													</div>
													<div data-v-796f1feb="" class="product-info__review">
														<div data-v-796f1feb="" class="review-rating">
															<span data-v-ef94db98="" data-value="4.9"
																class="ui_rating fr" data-v-796f1feb="">
																<i class="fa fa-star" aria-hidden="true" style="color: #f5eb75;"></i>
																<i class="fa fa-star" aria-hidden="true" style="color: #f5eb75;"></i>
																<i class="fa fa-star" aria-hidden="true" style="color: #f5eb75;"></i>
																<i class="fa fa-star" aria-hidden="true" style="color: #f5eb75;"></i>
																<i class="fa fa-star" aria-hidden="true" style="color: #f5eb75;"></i>
																</span> 
																<span data-v-796f1feb="" class="review-count"> (67) </span>
														</div>
														<div data-v-796f1feb="" class="review-comment">
															<div data-v-796f1feb="" class="review-comment__badge">
																후기</div>
															<div data-v-796f1feb="" class="review-comment__contents">
																<!-- 상품 아이디 기준으로 후기 가져오기 -->
															</div>
														</div>
													</div>
												</div></a>
										</div>
									</div>
								</c:forEach>

								<div data-v-70d95496="" data-v-38f53920=""
									data-ui="scroll-paging" data-type="vue"
									class="scroll-pagination">
									<div data-v-70d95496="" id="scroll-pagination-marker"></div>
									<!---->
								</div>
							</div>
						</div>
					</div>
				</c:when>
				<c:when test="${goodsCheck eq false}">
					<div class="empty-data">
						<i class="idus-icon-logo-empty"></i> 작가님의 작품이 없습니다.
					</div>
				</c:when>
			</c:choose>

		</div>


		<!-- 페이징 -->
		<div class="paging" data-ui="paging" data-sync="false">
			<nav>
				<c:choose>
					<c:when test="${paging.nowPage eq 1 }">
						<span style="width: auto;">◀ 이전 |</span>
					</c:when>
					<c:when test="${paging.nowPage ne 1 }">
						<a
							href="seller_goods.do?nowPage=${paging.nowPage - 1 }&cntPerPage=${paging.cntPerPage}&seller_code=${seller_code}"
							style="width: auto;">◀ 이전 |</a>
					</c:when>
				</c:choose>
				<c:forEach begin="${paging.startPage }" end="${paging.endPage }"
					var="p">
					<c:choose>
						<c:when test="${p eq paging.nowPage }">
							<a
								href="seller_goods.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}&seller_code=${seller_code}"
								class="active" onclick="return false">${p }</a>
						</c:when>
						<c:when test="${p ne paging.nowPage }">
							<a
								href="seller_goods.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}&seller_code=${seller_code}">${p }</a>
						</c:when>
					</c:choose>
				</c:forEach>
				<c:choose>
					<c:when test="${paging.endPage eq paging.lastPage}">
						<span style="width: auto;">| 다음 ▶</span>
					</c:when>
					<c:when test="${paging.endPage ne paging.lastPage}">
						<a
							href="seller_goods.do?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}&seller_code=${seller_code}"
							style="width: auto;">| 다음 ▶</a>
					</c:when>
				</c:choose>
				<!-- <a href="/w/board/notice?&amp;page=1" class="active">1</a> <a
							href="/w/board/notice?&amp;page=2" class="">2</a> <a
							href="/w/board/notice?&amp;page=2" class="next" aria-label="다음">
							<span>다음</span> <i class="fa fa-chevron-right" disabled=""></i>
						</a> -->
			</nav>
		</div>
	</section>
	<jsp:include page="footer.jsp" />
</body>
</html>