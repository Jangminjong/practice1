<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="resources/css/seller_goods.css">
<link rel="stylesheet" href="resources/css/common.css">
<link rel="stylesheet" href="resources/css/idus.web.min.css">
<link rel="stylesheet" href="resources/css/vendor.client.min.css">
</head>
<body>
	<jsp:include page="header_goods.jsp" />
	<section class="artist-contents">
	<jsp:include page="seller_main.jsp" />
		<div data-v-825a8b32="">
			<div data-v-825a8b32="" data-trigger-detail="true"></div>
			<div data-v-825a8b32="" data-trigger="fixposition"></div>
			<nav data-v-825a8b32="" data-ui="artist-home-tab-control"
				class="tab-group">
				
				<a data-v-825a8b32=""
					href="seller_profile.do?seller_code="
					class="tab">프로필</a> <a data-v-825a8b32=""
					href="seller_story.do"
					class="tab">스토리</a> <a data-v-825a8b32=""
					href="seller_goods.do"
					class="tab active">판매작품</a> <a data-v-825a8b32=""
					href="seller_class.do"
					class="tab">클래스</a> <a data-v-825a8b32=""
					href="seller_review.do"
					class="tab">구매후기</a>
			</nav>
		</div>
		<div class="contents-container">
			<div data-v-62c8a401="">
				<div data-v-86e49a34="" data-v-62c8a401=""
					class="ArtistDesktopProductFilter">
					<div data-v-86e49a34=""
						class="ArtistDesktopProductFilte__filterTop"
						style="border-bottom: 1px solid rgb(217, 217, 217);">
						<button data-v-08fc3558="" data-v-86e49a34=""
							class="only-img-button">
							<div data-v-08fc3558="" class="only-img-button-box">
								<div data-v-5e27c696="" data-v-08fc3558="" class="checkbox">
									<div data-v-5e27c696="" class="input-checkbox">
										<input data-v-5e27c696="" id="" type="checkbox"
											autocomplete="off" class="bp" value="false">
									</div>
									<!---->
								</div>
								<p data-v-08fc3558="" class="only-img-button-text margin-left ">
									이미지만 볼래요</p>
							</div>
						</button>
						<!---->
						<div data-v-86e49a34="" class="ArtistDesktopProductFilter_Right">
							<div data-v-86e49a34=""
								class="ArtistDesktopProductFilter__sortSelector">
								<div data-v-4dfbe33c="" data-v-86e49a34=""
									class="SingleSelector">
									<div data-v-4b6162e7="" data-v-4dfbe33c="" class="BaseSelector">
										<!-- <select data-v-4b6162e7="" class="BaseSelector__selector"></select>
										<button data-v-4b6162e7="" type="button"
											class="BaseSelector__triggerButton">
											<span data-v-4b6162e7="" class="BaseSelector__selectedItem">인기순</span>
											<i data-v-4b6162e7="" class="ui-icon fa fa-chevron-down"></i>
										</button> -->
										<!-- <ul data-v-4b6162e7="" class="BaseSelector__optionItemList">
											<li data-v-4b6162e7="" value="sort=-POPULAR"
												class="BaseSelector__optionItem">인기순</li>
											<li data-v-4b6162e7="" value="sort=-CREATED_AT"
												class="BaseSelector__optionItem">최신순 (NEW)</li>
											<li data-v-4b6162e7="" value="sort=-FAVORITE"
												class="BaseSelector__optionItem">찜 많은 순</li>
											<li data-v-4b6162e7="" value="sort=-REVIEW"
												class="BaseSelector__optionItem">구매후기가 많은 순</li>
											<li data-v-4b6162e7="" value="sort=-PURCHASE"
												class="BaseSelector__optionItem">판매수가 많은 순</li>
											<li data-v-4b6162e7="" value="sort=-SALE_RATE"
												class="BaseSelector__optionItem">할인 높은순</li>
											<li data-v-4b6162e7="" value="sort=PRICE"
												class="BaseSelector__optionItem">낮은 가격순</li>
											<li data-v-4b6162e7="" value="sort=-PRICE"
												class="BaseSelector__optionItem">높은 가격순</li>
										</ul> -->
										<select name='product_category' id="productCategory">
											<option value='' selected>인기순</option>
										</select>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!---->
				</div>
				<div data-v-62c8a401="" class="SearchArea">
					<p data-v-62c8a401="" class="items-size">
						<strong data-v-62c8a401="">53</strong>개의 판매작품
					</p>
					<div data-v-62c8a401="" class="search-section">
						<input data-v-62c8a401="" type="text" placeholder="작가님의 작품 검색"
							class="search-input"> <i data-v-62c8a401=""
							class="idus-icon-search"></i>
					</div>
				</div>
				<div data-v-38f53920="" data-v-62c8a401="" class="ui_grid mt10">
					<div data-v-38f53920="" class="ui_grid__cols--4">
					
					
					<c:forEach var="info" items="${info}">
						<div data-v-38f53920="" class="ui_grid__item">
							<div data-v-796f1feb="" data-v-38f53920=""
								class="base-card card--vertical product">
								<a data-v-796f1feb=""
									href="detail_content.do"
									target="_blank"><div data-v-796f1feb=""
										class="card-thumb-cover">
										<div data-v-796f1feb=""
											id="thumb-c8db523c-6f5a-4d60-831c-6cccab96a347"
											class="product-thumb-img"
											style="background-image: url(&quot;https://image.idus.com/image/files/4caa0829dd5a4a8a98bceae3db6373a9_512.jpg&quot;);"></div>
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
											${info.seller_name}</div>
										<div data-v-796f1feb="" class="product-info__name">
											${info.seller_profile}</div>
										<div data-v-796f1feb="" class="product-info__price">
											<span data-v-796f1feb="" class="sale-rate"> 22% </span> <span
												data-v-796f1feb="" class="price-sale"> <!-- 상품 할인 가격 --> <span
												data-v-796f1feb="" style="font-size: 14px;">원</span></span>
											<!-- 원가 -->
											<!-- <div data-v-796f1feb="" class="price-origin--before-sale">
												<del data-v-796f1feb="">17,000원</del>
											</div> -->
										</div>
										<div data-v-796f1feb="" class="product-info__badge-group"
											style="margin-top: 12px;">
											<div data-v-2f2bc7d4="" class="badge badge-food"
												data-v-796f1feb="">안전식품</div>
										</div>
										<div data-v-796f1feb="" class="product-info__review">
											<div data-v-796f1feb="" class="review-rating">
												<span data-v-ef94db98="" data-value="4.9"
													class="ui_rating fr" data-v-796f1feb=""><i
													data-v-ef94db98="" data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i></span> <span data-v-796f1feb=""
													class="review-count"> (67) </span>
											</div>
											<div data-v-796f1feb="" class="review-comment">
												<div data-v-796f1feb="" class="review-comment__badge">
													후기</div>
												<div data-v-796f1feb="" class="review-comment__contents">
													<!-- 상품 아이디 기준으로 후기 가져오기 --></div>
											</div>
										</div>
									</div></a>
							</div>
						</div>
					</c:forEach>
						
						<div data-v-70d95496="" data-v-38f53920="" data-ui="scroll-paging"
							data-type="vue" class="scroll-pagination">
							<div data-v-70d95496="" id="scroll-pagination-marker"></div>
							<!---->
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<jsp:include page="footer.jsp" />
</body>
</html>