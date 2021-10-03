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
													<button type="button"
														class="ui_card__overlay btn-ico sp-icon icon-favorite"
														data-name="starred-toolbar" data-starred-type="product"
														data-init="" data-starred="" style="background-image:url(resources/images/index/sp-icon.png); z-index:80;">
													</button>

													<!-- 썸네일 -->
													<div class="ui_card__imgcover">
														<a href="detail_content.do" target="_blank"
															aria-label="${goodsVO.goods_name }"
															class="ui_card__img lazy "
															style="background-image: url(${goodsVO.goods_photo[0]})"></a>
													</div>

													<!-- 상품정보 -->
													<div class="ui_card__info">
														<a href="seller_goods.do" class="ui_card__label"
															target="_blank">${goodsVO.goods_name }</a> <a
															href="detail_content.do" class="ui_card__title"
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
						<a href="/w/review" class="ui_title__txt"> <span>실시간 후기</span>
							<i class="bubble"></i></a>
					</div>
					<div class="outer-frame">
						<ul class="inner-frame">
							<li class="ui-slide ui_grid col3 m-col1" data-index="0"
								style="width: 1056px;">
								<ul class="ui_grid__cols--2 ui_grid__cols--m1">
									<!-- 후기 하나 시작 -->
									<li class="ui_grid__item">
										<div class="ui_card--side">
											<div class="ui_card__inner">
												<div class="ui_card__imgcover">
													<a href="/w/product/13ca986c-5c6e-4d49-989c-42110b4e564b"
														class="ui_card__img"
														data-product-id="13ca986c-5c6e-4d49-989c-42110b4e564b"
														target="_blank"
														style="background-image: url(https://image.idus.com/image/files/a3c952ea78414a18991b184c048f28b9_720.png)">
													</a>
												</div>

												<div class="ui_card__txtarea">
													<div class="ui_card__info">
														<a href="/w/product/13ca986c-5c6e-4d49-989c-42110b4e564b"
															data-product-id="13ca986c-5c6e-4d49-989c-42110b4e564b"
															 target="_blank"
															class="ui_card__title">코코넛소보로쿠키</a> <span
															class="ui_card__para"> 언제 먹어도 맛나요 </span>
													</div>

													<div class="ui_card__rating">
														<div class="ui_card__vcenter">
															<div class="ui_rating" data-ui="rating" data-value="5">
																<i class="idus-icon-star-fill" data-state="active"></i>
																<i class="idus-icon-star-fill" data-state="active"></i>
																<i class="idus-icon-star-fill" data-state="active"></i>
																<i class="idus-icon-star-fill" data-state="active"></i>
																<i class="idus-icon-star-fill" data-state="active"></i>
																<span>&nbsp;| 꿀꿀이</span>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</li>
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
							<li class="ui_grid__item">
								<div class="card-style story">
									<div class="bordering">
										<a href="/w/story/0113e77e-009d-4aae-a784-9a8fcf6095d2"
											data-story-uuid="0113e77e-009d-4aae-a784-9a8fcf6095d2"
											target="blank">
											<div class="area-txt">
												<div class="split-hard">
													<span class="split crop-circ"
														style="background-image: url(https://image.idus.com/image/files/a73d543b92a14a7a895bf64f058fba99_320.jpg)">
													</span>
													<div class="split">
														<span class="txt-strong">늘해랑 떡공방</span> <span class="txt">2021년
															09월 28일</span>
													</div>
													<button type="button" class="split btn-ico active"
														aria-label="하트" data-name="starred-toolbar"
														data-starred-type="artist" data-init="1" data-starred="1"
														data-target-id="2e754b3a-8c6e-4904-a8ab-9cac555cef5c"
														data-state="active">

														<i class="idus-icon-heart"></i>
													</button>
												</div>
												<p class="desc">포장하기전 한컷💓 가을이 성큼다가왔네요 여름화과자 디자인은 이번달이
													마지막이고 은은한 가을톤에 화과자와 양갱을 개발중입니다! 예쁜 디자인으로 연구중이니 기대해주세요💗</p>
											</div>
											<div class="area-img"
												style="background-image: url(https://image.idus.com/image/files/781a96bd71fb42ea87fa15a3f8f31041_720.jpg)"></div>
										</a>
									</div>
								</div>
							</li>
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
									<li class="ui_grid__item">
										<div class="card-style-profile medal-award">
											<div class="bordering">
												<!-- 상단부분 -->
												<div class="split">
													<div class="img-bg"
														style="background-image: url(https://image.idus.com/image/files/46fdc1bf39244427bfe66704d990b2b0_720.jpg);">
													</div>
													<a class="img-profile"
														style="background-image: url(https://image.idus.com/image/files/60f2791e05e748feba3496c930f80409_320.jpg);"
														target=""
														href="/w/artist/52b07e12-4222-4091-8e40-f024f8fdbe2f/product">
													</a>
												</div>
												<!-- 하단부분  -->
												<div class="split">
													<div class="area-txt">
														<a
															href="/w/artist/52b07e12-4222-4091-8e40-f024f8fdbe2f/product"
															class="title" target="">규린이네 수제과일청</a>
														<div class="ui_rating" data-ui="rating" data-value="5">
															<i class="idus-icon-star-fill" style="font-size: 14px;"
																data-state="active"></i> <i class="idus-icon-star-fill"
																style="font-size: 14px;" data-state="active"></i> <i
																class="idus-icon-star-fill" style="font-size: 14px;"
																data-state="active"></i> <i class="idus-icon-star-fill"
																style="font-size: 14px;" data-state="active"></i> <i
																class="idus-icon-star-fill" style="font-size: 14px;"
																data-state="active"></i>
														</div>
														<p class="desc">🎀채널A 서민갑부 317회 출연🎀 🎖아이디어스 핸드메이드 어워드
															3년연속수상🎖 🔰2018년 우수신인작가 🔰2019년 대상작가 🔰2020년 고객후원상 두아이를
															키우는 엄마의 정직한 마음으로 믿고 먹을수 있는 건강한 먹거리를 만들어요♡</p>
													</div>
													<div class="area-btns">
														<div class="col">
															<a href="#" class="btn btn-s btn-white toggle-heart"
																data-name="starred-toolbar" data-starred-type="artist"
																data-init="1" data-starred="" target=""
																data-target-id="52b07e12-4222-4091-8e40-f024f8fdbe2f">
																<em class="txt"><i class="idus-icon-plus"
																	style="font-size: 12px;"></i> 팔로우</em> <em
																class="txt active"><i class="idus-icon-check"
																	style="font-size: 12px;"></i> 팔로잉</em>
															</a>
														</div>
														<div class="col popular-artist-col">
															<a class="btn btn-s btn-white" target=""
																href="/w/artist/52b07e12-4222-4091-8e40-f024f8fdbe2f/product">
																작품 더보기 </a>
														</div>
													</div>
												</div>
											</div>
										</div>
									</li>
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
						<a href="/w/main/category" class="ui_title__txt"> <span>전체
								카테고리</span> <i class="bubble"></i></a>
					</div>

					<div class="ui_grid" data-on-scroll="load-content"
						data-endpoint="/mainAsync/api_category">
						<div class="ui_grid__cols--6">
							<div class="ui_grid__item">
								<div class="card-style boxed">
									<div class="img-wrap">
										<a
											href="/w/main/category/5c6bc7d4-7760-4702-b63f-7f29eca479e3"
											data-category-uuid="5c6bc7d4-7760-4702-b63f-7f29eca479e3"
											class="area-img"
											style="background-image: url(https://image.idus.com/image/files/3be4ff61715349509911d14dc2d1921b_720.jpg);">
										</a>
									</div>
									<a href="/w/main/category/5c6bc7d4-7760-4702-b63f-7f29eca479e3"
										class="area-txt">디저트, 베이커리, 떡</a>
								</div>
							</div>

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
