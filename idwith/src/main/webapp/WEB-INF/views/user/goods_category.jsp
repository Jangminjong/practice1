<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if lt IE 7]><html class="lt-ie9 lt-ie8 lt-ie7"><![endif]-->
<!--[if IE 7]><html class="lt-ie9 lt-ie8"><![endif]-->
<!--[if IE 8]><html class="lt-ie9"><![endif]-->
<!--[if gt IE 8]><html class="ie9"><![endif]-->
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="naver-site-verification"
	content="a8c6e5633b597db7b48d05e4a7d247011f6794ec" />
<meta name="google-site-verification"
	content="NnaPRa-jWBb5SnBiwjEZkMqm1pFS2Y8mVdUG0nJqO4c" />
<title>디저트, 베이커리, 떡 | 아이디위드 - 핸드메이드, 수공예, 수제 먹거리</title>
<meta name="theme-color" content="#ffffff" />
<!-- 파비콘 이미지 설정 -->
<link rel="shortcut icon" type="image/x-icon"
	href="resources/images/title/icon_300.PNG">
<link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
  />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=5.0, user-scalable=0 viewport-fit=cover" />
<meta name="application-name" content="아이디위드" />
<meta name="keywords" content="핸드메이드, 수공예, 수제 먹거리" />
<meta property="og:title" content="핸드메이드 라이프스타일 플랫폼, 아이디위드" />
<meta property="og:type" content="website" />

<link rel="stylesheet" href="resources/css/cate_goods.css">
<link rel="stylesheet" href="resources/css/idus.web.min.css" />
<link rel="stylesheet" href="resources/css/vendor.client.min.css" />
<link rel="stylesheet" href="resources/css/sp-icon.css">
<link rel="stylesheet" href="resources/css/uipack-local.css">

<script src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="resources/js/goods_category.js"></script>
<script type="text/javascript" src="resources/js/index.js"></script>


</head>
<body>

	<div data-vue="token"></div>
	<div data-vue="globalUser"></div>
	<div data-vue="resizeHandler"></div>

	<div class="wrap">
		<jsp:include page="header_goods.jsp"/>
		<div class="dimmed-background"></div>
		<div data-vue="category-detail">
			<div id="content" class="content" data-page="2dep-list">
				<div class="inner-w mobile-full hide-gnb">
					<!--상단-->
					<div data-v-22a8d4ba="" class="ui_title m-mod mobile-hide">
						<h2 data-v-22a8d4ba="" class="ui_title__txt">${categoryName}</h2>
					</div>
					<!-- 정렬, 필터 조건 -->
					<div class="CategoryFilter">
						<div class="category_tab">
							<!-- 카테고리 탭의 타이틀? -->
							<div class="category_tab__title">
								<span>디저트, 베이커리, 떡 <i class="idus-icon-arrow-down"></i>
								</span>
							</div>
							<!---->
							<!---->
						</div>
						<span></span>
						<div class="ProductFilter">
							<!-- 필터 시작 -->
							<div class="DesktopProductFilter">
								<div class="DesktopProductFilter__filterGroup">
									<!-- 필터 : 박스 -->
									<div class="DesktopProductFilter__filterColumn">
										<!---->
										<div class="DesktopCheckboxFilterRow" style="display:flex; justify-content:center;">
											<!--필터 : 가격대 -->
											<div class="DesktopCheckboxFilterRow__head">가격대</div>
											<div class="DesktopCheckboxFilterRow__body">
												<div
													class="DesktopCheckboxFilterRow__item">
													<div class="filter_item">
														<div class="checkbox">
															<div class="input-checkbox">
																<input id="price-range1" type="checkbox" autocomplete="off"
																	class="bp" value="10000">
															</div>
															<span class="checkbox__label">1만원 이하</span>
														</div>
													</div>
												</div>
												<div class="DesktopCheckboxFilterRow__item">
													<div class="filter_item">
														<div class="checkbox">
															<div class="input-checkbox">
																<input id="price-range2" type="checkbox" autocomplete="off"
																	class="bp"
																	value="30000">
															</div>
															<span class="checkbox__label">3만원 이하</span>
														</div>
													</div>
												</div>
												<div class="DesktopCheckboxFilterRow__item">
													<div class="filter_item">
														<div class="checkbox">
															<div class="input-checkbox">
																<input data-v-5e27c696="" id="price-range3" type="checkbox"
																	autocomplete="off" class="bp"
																	value="50000">
															</div>
															<span class="checkbox__label">5만원 이하</span>
														</div>
													</div>
												</div>
												<div class="DesktopCheckboxFilterRow__item">
													<div class="filter_item">
														<div class="checkbox">
															<div class="input-checkbox">
																<input id="price-range4" type="checkbox" autocomplete="off"
																	class="bp"
																	value="70000">
															</div>
															<span class="checkbox__label">7만원 이하</span>
														</div>
													</div>
												</div>
												<div class="DesktopCheckboxFilterRow__item">
													<div class="filter_item">
														<div class="checkbox">
															<div class="input-checkbox">
																<input id="price-range5" type="checkbox" autocomplete="off"
																	class="bp" value="100000">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">10만원 이하</span>
														</div>
													</div>
												</div>
												<div class="DesktopCheckboxFilterRow__item">
													<div class="filter_item">
														<div class="checkbox">
															<div class="input-checkbox">
																<input id="price-range6" type="checkbox" autocomplete="off"
																	class="bp" value="100000">
															</div>
															<span data-v-5e27c696="" class="checkbox__label">10만원 초과</span>
														</div>
													</div>
												</div>
											</div>
											<div class="DesktopCheckboxFilterRow__button">
												<button id="price-range"><a href="javascript:priceRangeSet()">검색하기</a></button>											
											</div>
										<!---->
									</div>
								</div>
								<!-- 필터 : 박스 끝-->
								<div class="DesktopProductFilter__filterBottom">
									<!-- 필터: 하단-->
									<div class="DesktopProductFilter__sortSelector">
										<!--정렬 시작-->
										<div class="Single-Selector">
											<select id="goods-condition" class="BaseSelector__selector category-select" onchange="setCondition()" style="display: block;">
												<option value="all">----- 정렬 -----</option>
												<option value="volume">판매수가 많은 순</option>
												<option value="rowPrice">낮은 가격순</option>
												<option value="highPrice">높은 가격순</option>
											</select>
											<input type="hidden" id="selected-category" value="${goods_category }"/>
										</div>
										<!--정렬 끝-->
									</div>
									<!--필터 하단 끝-->
								</div>
							</div>
						<!-- 필터 끝-->
					</div>
					<!-- 정렬, 필터 조건 끝 -->
				</div>
				<!-- 상단 끝 -->
				<div class="inner-w">
					<!-- 본문 / 사진 들어가는 곳-->
					<div class="ui_grid mt10">
						<c:set var="i" value="-1"/>
						<c:if test="${i eq -1 }">
						<div class="ui_grid__cols--4">
						</c:if>
							<!-- 이것이 한 세트씩 들어가야됨-->
							<c:forEach var="goods" items="${goodsList}">
								<c:set var="i" value="${i + 1}"/>
							<div class="ui_grid__item">
								<!-- 컨텐츠 1개 -->
								<div class="base-card card--vertical product">
									<a href="detail_content.do?goods_code=${goods.goods_code}" target="_blank">
										<div class="card-thumb-cover">
											<!--컨텐츠 이미지-->
											<div class="product-thumb-img" style="background-image: url('${goods.goods_photo[0]}');"></div>
											<div class="product-bookmark">
													<button type="button" id="btn-${goods.goods_code }"
														class="ui_card__overlay btn-ico sp-icon icon-favorite"
														data-name="starred-toolbar" data-starred-type="product"
														data-init="" data-starred=""
														style="background-image: url(resources/images/index/sp-icon.png); z-index: 80;" onclick="changeChoice('${goods.goods_code }')">
													</button>
											</div>
											</div> <!-- 컨텐츠 이미지 끝-->
										<div class="card-info product-info">
											<!-- 컨텐츠 정보-->
											<!-- 작가 이름 -->
											<div class="product-info__artist-name">${goods.store_name }</div>
											<!-- 제목 -->
											<div class="product-info__name">${goods.goods_name }</div>
											<!-- 가격 -->
											<div class="product-info__price">
												<span class="price-sale">${goods.goods_price }
													<span style="font-size: 14px;">원</span>
												</span>
											</div>
											<div class="product-info__review">
												<!-- 컨텐츠 리뷰-->
												<div class="review-rating">
													<span class="ui_rating fr" data-value="${goods.goods_grade }"> 
														<i class="fa fa-star" aria-hidden="true" style="color:#f2b705; font-size:11px;"></i>
													</span> <span class="review-count">(2479)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">${goods.goods_review_context}</div>
												</div>
											</div>
										</div> <!--컨텐츠 정보 끝-->
									</a>
								</div>
							</div>
							<c:if test="${i eq 3 || i eq 7 || i eq 11}">
							</div>
							<div class="ui_grid__cols--4">
							</c:if>
							</c:forEach>
						</div>
						<div data-ui="scroll-paging" data-type="vue"
							class="scroll-pagination">
							<div id="scroll-pagination-marker"></div>
						</div>
						<div class="paging" data-ui="paging" data-sync="false">
					<nav>
						<c:choose>
							<c:when test="${paging.nowPage eq 1 }">
								<span style="width: auto;">◀ 이전 |</span>
							</c:when>
							<c:when test="${paging.nowPage ne 1 }">
								<a href="/mpweb/goods_category.do?nowPage=${paging.nowPage - 1 }&cntPerPage=${paging.cntPerPage}&goods_category=${goods_category}&set=${paging.set}" style="width: auto;">◀ 이전 |</a>
							</c:when>
						</c:choose>
						<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
							<c:choose>
								<c:when test="${p eq paging.nowPage }">
									<a href="/mpweb/goods_category.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}&goods_category=${goods_category}&set=${paging.set}" class="active" onclick="return false">${p }</a>
								</c:when>
								<c:when test="${p ne paging.nowPage }">
									<a href="/mpweb/goods_category.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}&goods_category=${goods_category}&set=${paging.set}">${p }</a>
								</c:when>
							</c:choose>
						</c:forEach>
						<c:choose>
							<c:when test="${paging.endPage eq paging.lastPage}">
								<span style="width: auto;">| 다음 ▶</span>
							</c:when>
							<c:when test="${paging.endPage ne paging.lastPage}">
								<a href="/mpweb/goods_category.do?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}&goods_category=${goods_category}&set=${paging.set}" style="width: auto;">| 다음 ▶</a>
							</c:when>
						</c:choose>
						<!-- <a href="/w/board/notice?&amp;page=1" class="active">1</a> <a
							href="/w/board/notice?&amp;page=2" class="">2</a> <a
							href="/w/board/notice?&amp;page=2" class="next" aria-label="다음">
							<span>다음</span> <i class="fa fa-chevron-right" disabled=""></i>
						</a> -->
					</nav>
				</div>
					</div>
				</div>
			</div>
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
		<jsp:include page="footer.jsp" />
	</div>
</body>
</html>