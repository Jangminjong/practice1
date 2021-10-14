<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>아이디어스 - 핸드메이드, 수공예, 수제 먹거리</title>
<link href="resources/css/content.css" rel="stylesheet" />
<script src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="resources/js/index.js"></script>

<!-- 파비콘 이미지 설정 -->
<link rel="shortcut icon" type="image/x-icon"
	href="resources/images/title/icon_300.PNG">
<link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
  />
<link rel="stylesheet" href="resources/css/sp-icon.css">
<link rel="stylesheet" href="resources/css/uipack-local.css">
<link rel="stylesheet" href="resources/css/idus.web.min.css">
<link rel="stylesheet" href="resources/css/vendor.client.min.css">
<link rel="stylesheet" href="resources/css/index.css">
  
</head>
<body>
	<div data-vue="token"></div>
	<div data-vue="globalUser"></div>
	<div data-vue="resizeHandler"></div>

	<div class="wrap">

	<jsp:include page="header_goods.jsp"/>
		
		<div id="skip-to-content">
			<a href="#gnb">메뉴목록으로 바로가기</a> <a href="#content">컨텐츠로 바로가기</a>
		</div>

		<div class="dimmed-background"></div>
		<input type="hidden" id="email" value="${email}"/>
		<div id="content" class="content" data-page="main">
			<!-- 메인 -->
			<section id="main_visual">
				<div class="index-slider style-main home" data-ui="slider"
					data-resize="true" data-rolling="true" data-indicator-type="label"
					tabindex="-1"
					style="touch-action: pan-y; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0)">
					<div id="slider" class="outer-frame">
						<ul class="inner-frame" style="margin-left: 0px;">
							<li class="ui-slide showroom-banner"
								style="background: #4B2C2C; display: list-item;" data-id="1709"><a
								href="index.do"> <img
									src="resources/images/index/indexBannerImg1.jpg"
									alt="🍁가을 별미 열전🍁">
							</a></li>
							<li class="ui-slide showroom-banner" style="background: #d16160;" data-id="1765"><a
								href="product_search.do"> <img
									src="resources/images/index/indexBannerImg2.jpg"
									alt="🌕프리미엄 주얼리 할인혜택">
							</a></li>
							<li class="ui-slide showroom-banner" style="background: #9D6F6F;"
								data-id="1710"><a href="product_search.do"> <img
									src="resources/images/index/indexBannerImg3.jpg" alt="🍁오늘만 할인">
							</a></li>
							<li class="ui-slide showroom-banner" style="background: #316E64;"
								data-id="1766"><a href="product_search.do"> <img
									src="resources/images/index/indexBannerImg4.jpg"
									alt="🍂이번주 인기 신상">
							</a></li>
							<li class="ui-slide showroom-banner" style="background: #F4F1ED;"
								data-id="1711"><a href="product_search.do"> <img
									src="resources/images/index/indexBannerImg5.jpg"
									alt="🌝입점 기념 할인🌕매주 금요일🌕">
							</a></li>
							<li class="ui-slide showroom-banner" style="background: #F5BA93;"
								data-id="1767"><a href="product_search.do"> <img
									src="resources/images/index/indexBannerImg6.jpg"
									alt="🌰환절기 피부고민 끝">
							</a></li>
							<li class="ui-slide showroom-banner"
								style="background: #13456A; height: 480px;" data-id="1719"><a
								href="product_search.do"> <img
									src="resources/images/index/indexBannerImg7.jpg"
									alt="🤑가을 스타일 탐구 생활">
							</a></li>
						</ul>
					</div>
					<fieldset class="ui-control" style="display: block;">
						<button type="button" class="ui-btn prev control-prev goods-prev"
							aria-label="이전" >
							<i class="fa fa-chevron-left fa-2x"></i>
						</button>
						<nav class="indicator"></nav>
						<button type="button" class="ui-btn next control-next goods-next"
							aria-label="다음" >
							<i class="fa fa-chevron-right fa-2x"></i>
						</button>
					</fieldset>
				</div>
			</section>

			<!-- 인기작품 신규 -->
			<section id="ranking" class="page-section inner-w"
				data-ui="load-all-on-scroll">
				<div class="stickyparent">
					<div class="ui_title">
						<a href="pdfTest.do">PDF 사용해보기</a>
						<a href="goods_popular.do" class="ui_title__txt"> <span>인기작품</span>
							<i class="bubble"></i></a>
					</div>
					 <c:set var="i" value="-1"/>
					<c:forEach var="goodsCategory" items="${goodsCategoryList}">
						<div data-on-scroll="load-content"
							data-endpoint="/mainAsync/api_category_popular?item=3&amp;p_item=10">
							<div class="ui_title--bg">
								<a
									href="goods_category.do?goods_category=${goodsCategory.goods_category_code}"
									data-category-uuid="8daa0fc3-d370-46c5-a58b-9a0c71a6ae08"
									class="ui_title__txt">${goodsCategory.goods_category_name}</a>
							</div>
							<div class="ui_grid">
								<ul class="ui_grid__cols--5">
								 <c:set var="i" value="${i + 1}"/>
								 <c:choose>
								 	<c:when test="${i eq 0}">
										<c:set var="items" value="${goodsList0 }"/>
									</c:when>
									<c:when test="${i eq 1}">
										<c:set var="items" value="${goodsList1 }"/>
									</c:when>
									<c:when test="${i eq 2}">
										<c:set var="items" value="${goodsList2 }"/>
									</c:when>
									<c:when test="${i eq 3}">
										<c:set var="items" value="${goodsList3 }"/>
									</c:when>
									<c:when test="${i eq 4}">
										<c:set var="items" value="${goodsList4 }"/>
									</c:when>
								</c:choose>
									<c:forEach var="goodsVO" items="${items }">
										<li class="ui_grid__item">
											<div class="card-add-icon">
												<em class="icon-num" data-ranking="${goodsVO.rownum }" style="z-index:1;">${goodsVO.rownum }</em>
												<div class="ui_card">
													<!-- 찜 버튼 -->
													<div class="favCheck">
														<input type="hidden" class="goods_code" name="goods_code" value="${goodsVO.goods_code }"/>
														<button type="button" id="btn-${goodsVO.goods_code }"
															class="ui_card__overlay btn-ico sp-icon icon-favorite"
															data-name="starred-toolbar" data-starred-type="product"
															data-init="" data-starred="" data-goods="${goodsVO.goods_code }"
															style="background-image: url(resources/images/index/sp-icon.png); z-index: 80;" onclick="changeChoice('${goodsVO.goods_code }')">
														</button>
													</div>

													<!-- 썸네일 -->
													<div class="ui_card__imgcover">
														<a href="detail_content.do?goods_code=${goodsVO.goods_code}" target="_blank"
															aria-label="${goodsVO.goods_name }"
															class="ui_card__img lazy "
															style="background-image: url('${goodsVO.goods_photo[0]}')"></a>
													</div>

													<!-- 상품정보 -->
													<div class="ui_card__info">
														<a href="seller_goods.do" class="ui_card__label"
															target="_blank">${goodsVO.store_name }</a> <a
															href="detail_content.do?goods_code=${goodsVO.goods_code }" class="ui_card__title"
															target="_blank">${goodsVO.goods_name }</a>
													</div>

													<!-- 별점이랑 후기 -->
													<div class="ui_card__rating">
														<div class="ui_card__vcenter">
															<div class="ui_rating" data-ui="rating"
																data-value="${goodsVO.goods_grade }">
																<i class="fa fa-star" aria-hidden="true" style="color:#f2b705;"></i>
																<span>${goodsVO.goods_grade }</span>
															</div>
														</div>
														<span class="ui_card__comment">${goodsVO.goods_review_context }</span>
													</div><!-- 별점이랑 후기 -->
												</div>
											</div>
										</li>
									</c:forEach>
								</ul>
							</div>
						</div>
					</c:forEach>
				</div>
				<a href="goods_popular.do" class="ui_btn--large">인기작품 더보기</a>
			</section>

			<!-- 후기 최신꺼 6개만-->
			<section id="review" class="page-section inner-w">
				<div class="ui-slider stickyparent" data-ui="slider"
					data-indicator-type="label" tabindex="-1"
					style="touch-action: pan-y; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
					<div class="ui_title">
						<a href="index.do" class="ui_title__txt"> 
							<span>후기</span>
							<i class="bubble"></i>
						</a>
					</div>
					<div class="outer-frame">
						<ul class="inner-frame">
							<li class="ui-slide ui_grid col3 m-col1" data-index="0"
								style="width: 1056px;">
								<ul class="ui_grid__cols--2 ui_grid__cols--m1">
									<!-- 후기 하나 시작 -->
									<c:forEach var="review" items="${reviewList }">
									<li class="ui_grid__item">
										<div class="ui_card--side">
											<div class="ui_card__inner">
												<div class="ui_card__imgcover">
													<a href="detail_content.do?goods_code=${review.goods_review_code }"
														class="ui_card__img"
														target="_blank"
														style="background-image: url(resources/images/review/${review.goods_review_image[0]})">
													</a>
												</div>

												<div class="ui_card__txtarea">
													<div class="ui_card__info">
														<a href="detail_content.do?goods_code=${review.goods_review_code }"
															 target="_blank"
															class="ui_card__title">${review.goods_name }</a> <span
															class="ui_card__para">${review.goods_review_context}</span>
													</div>

													<div class="ui_card__rating">
														<div class="ui_card__vcenter">
															<div class="ui_rating" data-ui="rating" data-value="5">
																<c:forEach var="i" begin="1" end="${review.goods_review_point}" >
																	<i class="fa fa-star" aria-hidden="true" style="color:#f2b705;"></i>
																</c:forEach>
																<span>&nbsp;| ${review.goods_review_id.split("@")[0]}</span>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</li>
									</c:forEach>
									<!-- 후기 하나 끝 -->
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</section>
			
			<!-- 스토리 -->
			<section id="story" class="page-section inner-w"
				data-ui="load-all-on-scroll">
				<div class="stickyparent">
					<div class="ui_title">
						<a href="story.do" class="ui_title__txt"> <span>스토리</span> <i
							class="bubble"></i></a>
					</div>
					<div class="ui_grid" data-on-scroll="load-content"
						data-endpoint="/mainAsync/api_story?item=6">
						<ul class="ui_grid__cols--3 ui_grid__cols--m1">
						<c:forEach var="story" items="${storyList}">
							<li class="ui_grid__item">
								<div class="card-style story">
									<div class="bordering">
										<a href="seller_main.do?storySellerId=${story.seller_id }"
											data-story-uuid="${story.story_tseq }"
											target="blank">
											<div class="area-txt">
												<div class="split-hard">
													<span class="split crop-circ"
														style="background-image: url(resources/images/seller_profile/${story.seller_profile_img[0]})">
													</span>
													<div class="split">
														<span class="txt-strong">${story.store_name }</span> <span class="txt">${story.story_date }</span>
													</div>
													<button type="button" id="btn-${story.seller_id }"
														class="ui_card__overlay btn-ico sp-icon icon-favorite btn-${story.seller_id }"
														data-name="starred-toolbar" data-starred-type="product"
														data-init="" data-starred="" style="background-image:url(resources/images/index/sp-icon.png); z-index:80;" onclick="changeFollow('${story.seller_id }')">
													</button>
												</div>
												<p class="desc">${story.story_context }</p>
											</div>
											<div class="area-img"
												style="background-image: url(resources/images/seller_profile/${story.seller_profile_img[1]})"></div>
										</a>
									</div>
								</div>
							</li>
							</c:forEach>
						</ul>
					</div>
				</div>
				<a href="story.do" class="ui_btn--large">스토리 더보기</a>
			</section>
			
			<!-- 인기작가 -->
			<section id="popular_artist" class="page-section inner-w"
				data-ui="load-all-on-scroll">
				<div class="ui-slider stickyparent" tabindex="-1"
					style="touch-action: pan-y; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
					<div class="ui_title">
						<a href="seller_list.do" class="ui_title__txt"> <span>인기작가</span>
							<i class="bubble"></i></a>
					</div>
					<div class="outer-frame" data-on-scroll="load-content"
						data-endpoint="/mainAsync/api_popular_artist?page=5&amp;item=3">
						<ul class="inner-frame">
							<li class="ui-slide ui_grid" data-index="0"
								style="width: 1056px;">
								<ul class="ui_grid__cols--3 ui_grid__cols--m1">
								<c:forEach var="seller" items="${sellerList }">
									<li class="ui_grid__item">
										<div class="card-style-profile medal-award">
											<div class="bordering">
												<!-- 상단부분 -->
												<div class="split">
													<div class="img-bg"
														style="background-image: url(resources/images/seller_profile/${seller.seller_profile_img[0]});">
													</div>
													<a class="img-profile"
														style="background-image: url(resources/images/seller_profile/${seller.seller_profile_img[1]});"
														target=""
														href="seller_main.do?seller_code=${seller.seller_code }">
													</a>
												</div>
												<!-- 하단부분  -->
												<div class="split">
													<div class="area-txt">
														<a
															href="seller_goods.do?seller_code=${seller.seller_code }"
															class="title" target="">${seller.store_name }</a>
														<div class="ui_rating seller-rating" data-ui="rating" data-value="${seller.follow_count}">
															<i class="fa fa-user-plus" aria-hidden="true" style="font-size: 14px; color:#1f88fa;"></i>
															<span class="follow-count" style="font-size: 14px;">${seller.follow_count}</span>
														</div>
														<p class="desc">${seller.seller_profile }</p>
													</div>
													<div class="area-btns">
														<div class="col">
															<a href="index.do" class="btn btn-s btn-white toggle-heart btn-${story.seller_id }" id="btn-${seller.seller_code }"
																data-name="starred-toolbar" data-starred-type="artist"
																data-init="1" data-starred="" target="" onclick="changeFollow('${seller.seller_code }')">
																<em class="txt">
																	<i class="fa fa-plus" aria-hidden="true" style="font-size:12px;"></i> 
																	팔로우
																</em>
																<em class="txt active">
																	<i class="fa fa-check" aria-hidden="true"></i>
																	팔로잉
																</em>
															</a>
														</div>
														<div class="col popular-artist-col">
															<a class="btn btn-s btn-white" target=""
																href="seller_goods.do?seller_code=${seller.seller_code }">
																작품 더보기 </a>
														</div>
													</div>
												</div>
											</div>
										</div>
									</li>
									</c:forEach>
								</ul>
							</li>
						</ul>
					</div>
				</div>
				<a href="/w/main/artist" class="ui_btn--large">인기작가 더보기</a>
			</section>

			<!-- 전체 카테고리 -->
			<section id="category" class="page-section inner-w"
				data-ui="load-all-on-scroll">
				<div class="stickyparent">
					<div class="ui_title">
						<a href="goods_category.do" class="ui_title__txt"> <span>전체
								카테고리</span> <i class="bubble"></i></a>
					</div>
					
					<div class="ui_grid" data-on-scroll="load-content"
						data-endpoint="/mainAsync/api_category">
						<div class="ui_grid__cols--6">
							<c:forEach var="category" items="${getAllGoodsCategory }">
							<div class="ui_grid__item">
								<div class="card-style boxed">
									<div class="img-wrap">
										<a
											href="goods_category.do?goods_category_code=${category.goods_category_code }"
											class="area-img"
											style="background-image: url('${category.goods_photo[0]}');">
										</a>
									</div>
									<a href="goods_category.do?goods_category_code=${category.goods_category_code }"
										class="area-txt" style="font-size:14px;">${category.goods_category_name }</a>
								</div>
							</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</section>

			<!-- 메인페이지의 바텀시트 컨트롤 파트 -->
			<div data-vue="MainBottomSheet"></div>
		</div>

		
		<div data-vue="ToastPopup"></div>
		<div data-vue="BottomSheet"></div>
		<div data-vue="WideBottomSheet"></div>
		<div data-vue="FooterModal"></div>
		<div data-vue="InactiveToast"></div>
		<a href="#header" class="to-top" data-ui="scroll-to-top" data-page="">
			<img src="resources/images/go-to-top-image.png">
		</a>
		
	</div>
	<!-- div WRAP -->
	 <jsp:include page="footer.jsp" />
</body>
</html>
