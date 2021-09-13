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
<meta name="naver-site-verification"
	content="a8c6e5633b597db7b48d05e4a7d247011f6794ec" />
<meta name="google-site-verification"
	content="NnaPRa-jWBb5SnBiwjEZkMqm1pFS2Y8mVdUG0nJqO4c" />
<title>디저트, 베이커리, 떡 | 아이디어스 - 핸드메이드, 수공예, 수제 먹거리</title>
<meta name="theme-color" content="#ffffff" />
<link rel="apple-touch-icon" sizes="384x384"
	href="resources/images/title/app-icon/icon_300.png">

<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=5.0, user-scalable=0 viewport-fit=cover" />
<meta name="application-name" content="아이디어스" />
<meta name="keywords" content="핸드메이드, 수공예, 수제 먹거리" />
<meta property="fb:app_id" content="1410666675867984" />
<meta name="description"
	content="[디저트, 베이커리, 떡] 작품이 검색되었습니다. 더 많은 핸드메이드, 수공예 작품, 수제 먹거리등을 아이디어스에 확인하세요." />
<meta property="og:title" content="핸드메이드 라이프스타일 플랫폼, 아이디어스" />
<meta property="og:type" content="website" />
<meta property="og:description"
	content="[디저트, 베이커리, 떡] 작품이 검색되었습니다. 더 많은 핸드메이드, 수공예 작품, 수제 먹거리등을 아이디어스에 확인하세요." />
<!-- project src -->
<link rel="icon" href="resources/favicon_32.ico" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
	integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
	crossorigin="anonymous">
<link rel="stylesheet" href="resources/css/cate_goods.css">
<link rel="stylesheet" href="resources/css/idus.web.min.css" />
<link rel="stylesheet" href="resources/css/vendor.client.min.css" />

</head>
<body>
	<div data-vue="token"></div>
	<div data-vue="globalUser"></div>
	<div data-vue="resizeHandler"></div>

	<div class="wrap">
		<!-- 헤더 자리 -->
		<div class="dimmed-background"></div>
		<div data-vue="category-detail">
			<div id="content" class="content" data-page="2dep-list">
				<div class="inner-w mobile-full hide-gnb">
					<!--상단-->
					<div class="ui_title m-mod mobile-hide">
						<!-- 타이틀 -->
						<h2 class="ui_title__txt">디저트, 베이커리, 떡</h2>
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
						<div class="ProductFilter">
							<!-- 필터 시작 -->
							<div class="DesktopProductFilter">
								<div class="DesktopProductFilter__filterGroup">
									<!-- 필터 : 박스 -->
									<div class="DesktopProductFilter__filterColumn">
										<!---->
										<div class="DesktopRadioFilterRow">
											<!-- 필터: 배송비 -->
											<div class="DesktopRadioFilterRow__head">배송비</div>
											<div class="DesktopRadioFilterRow__body">
												<div class="DesktopRadioFilterRow__item">
													<!--전체-디폴트-->
													<label type="radio" class="BaseRadio"> <input
														type="radio" name="" autocomplete="off"
														class="BaseRadio__button idus-icon-radio"> <span
														class="BaseRadio__label"></span>
													</label>
													<!---->
													<span class="DesktopRadioFilterRow__label">전체</span>
												</div>
												<div class="DesktopRadioFilterRow__item">
													<!--무료배송-->
													<label type="radio" class="BaseRadio"> <input
														type="radio" name="is_delivery_free=1" autocomplete="off"
														class="BaseRadio__button idus-icon-radio"> <span
														class="BaseRadio__label"></span>
													</label>
													<div class="FilterBadge">
														<div class="badge badge-delivery">무료배송</div>
													</div>
													<span class="DesktopRadioFilterRow__label">만 보기</span>
												</div>
												<div class="DesktopRadioFilterRow__item">
													<!--2500원이하-->
													<label type="radio" class="BaseRadio"> <input
														type="radio"
														name="artist_delivery_style=0&amp;artist_delivery_fee__lte=2500"
														autocomplete="off"
														class="BaseRadio__button idus-icon-radio"> <span
														class="BaseRadio__label"></span>
													</label>
													<!---->
													<span class="DesktopRadioFilterRow__label">2,500원
														이하만 보기</span>
												</div>
												<div class="DesktopRadioFilterRow__item">
													<!--3000원이하-->
													<label type="radio" class="BaseRadio"> <input
														type="radio"
														name="artist_delivery_style=0&amp;artist_delivery_fee__lte=3000"
														autocomplete="off"
														class="BaseRadio__button idus-icon-radio"> <span
														class="BaseRadio__label"></span>
													</label>
													<!---->
													<span class="DesktopRadioFilterRow__label">3,000원
														이하만 보기</span>
												</div>
											</div>
										</div>
										<!---->
										<div class="DesktopRadioFilterRow">
											<!-- 필터: 할인율-->
											<div class="DesktopRadioFilterRow__head">할인율</div>
											<div class="DesktopRadioFilterRow__body">
												<div class="DesktopRadioFilterRow__item">
													<!--전체-디폴트-->
													<label type="radio" class="BaseRadio"> <input
														type="radio" name="" autocomplete="off"
														class="BaseRadio__button idus-icon-radio"> <span
														class="BaseRadio__label"></span>
													</label>
													<!---->
													<span class="DesktopRadioFilterRow__label">전체</span>
												</div>
												<div class="DesktopRadioFilterRow__item">
													<!-- 50% 이상-->
													<label type="radio" class="BaseRadio"> <input
														type="radio" name="sale_state=1&amp;sale_rate__gte=50"
														autocomplete="off"
														class="BaseRadio__button idus-icon-radio"> <span
														class="BaseRadio__label"></span>
													</label>
													<!---->
													<span class="DesktopRadioFilterRow__label">50% 이상 할인</span>
												</div>
												<div class="DesktopRadioFilterRow__item">
													<!-- 30% 이상 -->
													<label type="radio" class="BaseRadio"> <input
														type="radio" name="sale_state=1&amp;sale_rate__gte=30"
														autocomplete="off"
														class="BaseRadio__button idus-icon-radio"> <span
														class="BaseRadio__label"></span>
													</label>
													<!---->
													<span class="DesktopRadioFilterRow__label">30% 이상 할인</span>
												</div>
												<div class="DesktopRadioFilterRow__item">
													<!-- 20% 이상 -->
													<label type="radio" class="BaseRadio"> <input
														type="radio" name="sale_state=1&amp;sale_rate__gte=20"
														autocomplete="off"
														class="BaseRadio__button idus-icon-radio"> <span
														class="BaseRadio__label"></span>
													</label>
													<!---->
													<span class="DesktopRadioFilterRow__label">20% 이상 할인</span>
												</div>
												<div class="DesktopRadioFilterRow__item">
													<!-- 10% 이상 -->
													<label type="radio" class="BaseRadio"> <input
														type="radio" name="sale_state=1&amp;sale_rate__gte=10"
														autocomplete="off"
														class="BaseRadio__button idus-icon-radio"> <span
														class="BaseRadio__label"></span>
													</label>
													<!---->
													<span class="DesktopRadioFilterRow__label">10% 이상 할인</span>
												</div>
											</div>
										</div>
										<div class="DesktopCheckboxFilterRow">
											<!--필터 : 가격대 -->
											<div class="DesktopCheckboxFilterRow__head">가격대</div>
											<div class="DesktopCheckboxFilterRow__body">
												<div class="DesktopCheckboxFilterRow__item">
													<!--7000원 이하-->
													<div class="filter_item">
														<div class="checkbox">
															<div class="input-checkbox">
																<input id="" type="checkbox" autocomplete="off"
																	class="bp" value="price__lte=7000">
															</div>
															<span class="checkbox__label">7천원 이하</span>
														</div>
													</div>
												</div>
												<div class="DesktopCheckboxFilterRow__item">
													<!-- 만사천원 이하 -->
													<div class="filter_item">
														<div class="checkbox">
															<div class="input-checkbox">
																<input id="" type="checkbox" autocomplete="off"
																	class="bp" value="price__gte=7000&amp;price__lte=14000">
															</div>
															<span class="checkbox__label">7천원 ~ 1만 4천원</span>
														</div>
													</div>
												</div>
												<div class="DesktopCheckboxFilterRow__item">
													<!-- 이만천원 이하-->
													<div class="filter_item">
														<div class="checkbox">
															<div class="input-checkbox">
																<input id="" type="checkbox" autocomplete="off"
																	class="bp"
																	value="price__gte=14000&amp;price__lte=21000">
															</div>
															<span class="checkbox__label">1만 4천원 ~ 2만 1천원</span>
														</div>
													</div>
												</div>
												<div class="DesktopCheckboxFilterRow__item">
													<!-- 이만팔천원 이하-->
													<div class="filter_item">
														<div class="checkbox">
															<div class="input-checkbox">
																<input id="" type="checkbox" autocomplete="off"
																	class="bp"
																	value="price__gte=21000&amp;price__lte=28000">
															</div>
															<span class="checkbox__label">2만 1천원 ~ 2만 8천원</span>
														</div>
													</div>
												</div>
												<div class="DesktopCheckboxFilterRow__item">
													<!--이만팔천원 이상-->
													<div class="filter_item">
														<div class="checkbox">
															<div class="input-checkbox">
																<input id="" type="checkbox" autocomplete="off"
																	class="bp" value="price__gte=28000">
															</div>
															<span class="checkbox__label">2만 8천원 이상</span>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!---->
									</div>
									<!--선택한 필터값이 생기면 이 부분 추가-->
									<div data-v-6d7c9b5f="" class="filter_controller">
										<div class="filter_controller__head">
											<div class="filter_controller__head__disable_all">전체해제
											</div>
										</div>
										<div class="filter_controller__body">
											<div class="filter_controller__chip">
												<!---->
												<span>7천원 이하</span> <span
													class="filter_controller__chip__close"> <i
													class="idus-icon-close fas fa-times"></i>
												</span>
											</div>
										</div>
									</div>
									<!--조건 추가시 생성부분 끝-->
								</div>
								<!-- 필터 : 박스 끝-->
								<div class="DesktopProductFilter__filterBottom">
									<!-- 필터: 하단-->
									<button class="only-img-button">
										<!-- 이미지만 볼래요 -->
										<div class="only-img-button-box">
											<div class="checkbox">
												<div class="input-checkbox">
													<input id="" type="checkbox" autocomplete="off" class="bp"
														value="false">
												</div>
												<!---->
											</div>
											<p class="only-img-button-text margin-left ">이미지만 볼래요</p>
										</div>
									</button>
									<!-- 이미지만 볼래요 끝-->
									<div class="tooltip with-close" style="">
										<!-- 말풍선 -->
										<p class="img-only-tooltip-text">이미지만 모아 빠르게 구경하세요!</p>
										<span class="close-btn"> <i class="far fa-times-circle"></i>
										</span>
										<div class="triangle bottom end">
											<div class="before"></div>
											<div class="after"></div>
										</div>
									</div>
									<!-- 말풍선 끝-->
									<div class="DesktopProductFilter__sortSelector">
										<!--정렬 시작-->
										<div class="SingleSelector">
											<div class="BaseSelector">
												<select class="BaseSelector__selector"></select>
												<button type="button" class="BaseSelector__triggerButton">
													<span class="BaseSelector__selectedItem">인기순</span> <i
														class="ui-icon fa fas fa-chevron-down"></i>
												</button>
												<ul class="BaseSelector__optionItemList">
													<li value="sort=-POPULAR" class="BaseSelector__optionItem">인기순</li>
													<li value="sort=-CREATED_AT"
														class="BaseSelector__optionItem">최신순 (NEW)</li>
													<li value="sort=-FAVORITE" class="BaseSelector__optionItem">찜
														많은 순</li>
													<li value="sort=-REVIEW" class="BaseSelector__optionItem">구매후기가
														많은 순</li>
													<li value="sort=-PURCHASE" class="BaseSelector__optionItem">판매수가
														많은 순</li>
													<li value="sort=-SALE_RATE"
														class="BaseSelector__optionItem">할인 높은순</li>
													<li value="sort=PRICE" class="BaseSelector__optionItem">낮은
														가격순</li>
													<li value="sort=-PRICE" class="BaseSelector__optionItem">높은
														가격순</li>
												</ul>
											</div>
										</div>
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
						<div class="ui_grid__cols--4">
							<!-- 이것이 한 세트씩 들어가야됨-->
							<div class="ui_grid__item">
								<!-- 컨텐츠 1개 -->
								<div class="base-card card--vertical product">
									<a href="detail_content.do" target="_blank">
										<div class="card-thumb-cover">
											<!--컨텐츠 이미지-->
											<div class="product-thumb-img"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div> <!-- 컨텐츠 이미지 끝-->
										<div class="card-info product-info">
											<!-- 컨텐츠 정보-->
											<!-- 작가 이름 -->
											<div class="product-info__artist-name">시루아네</div>
											<!-- 제목 -->
											<div class="product-info__name">[추석할인] 시루아네
												카스테라앙절미(40구)</div>
											<!-- 가격 -->
											<div class="product-info__price">
												<span class="sale-rate">16%</span> <span class="price-sale">16,800
													<span style="font-size: 14px;">원</span>
												</span>
												<div class="price-origin--before-sale">
													<del>20,000원</del>
												</div>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 12px">
												<div class="badge badge-food">안전식품</div>
											</div>
											<div class="product-info__review">
												<!-- 컨텐츠 리뷰-->
												<div class="review-rating">
													<span class="ui_rating fr" data-value="4.8"> <i
														style="font-size: 11px" class="ui_icon--star fas fa-star"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star fas fa-star" data-state="active"></i>
														<i style="font-size: 11px"
														class="ui_icon--star fas fa-star" data-state="active"></i>
														<i style="font-size: 11px"
														class="ui_icon--star fas fa-star" data-state="active"></i>
														<i style="font-size: 11px"
														class="ui_icon--star fas fa-star" data-state="active"></i>
													</span> <span class="review-count">(2479)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">너무너무 달아요..</div>
												</div>
											</div>
										</div> <!--컨텐츠 정보 끝-->
									</a>
								</div>
							</div>
							<div class="ui_grid__item">
								<!-- 컨텐츠 1개 -->
								<div class="base-card card--vertical product">
									<a href="detail_content.do" target="_blank">
										<div class="card-thumb-cover">
											<!--컨텐츠 이미지-->
											<div class="product-thumb-img"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div> <!-- 컨텐츠 이미지 끝-->
										<div class="card-info product-info">
											<!-- 컨텐츠 정보-->
											<!-- 작가 이름 -->
											<div class="product-info__artist-name">시루아네</div>
											<!-- 제목 -->
											<div class="product-info__name">[추석할인] 시루아네
												카스테라앙절미(40구)</div>
											<!-- 가격 -->
											<div class="product-info__price">
												<span class="sale-rate">16%</span> <span class="price-sale">16,800
													<span style="font-size: 14px;">원</span>
												</span>
												<div class="price-origin--before-sale">
													<del>20,000원</del>
												</div>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 12px">
												<div class="badge badge-food">안전식품</div>
											</div>
											<div class="product-info__review">
												<!-- 컨텐츠 리뷰-->
												<div class="review-rating">
													<span class="ui_rating fr" data-value="4.8"> <i
														style="font-size: 11px" class="ui_icon--star fas fa-star"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star fas fa-star" data-state="active"></i>
														<i style="font-size: 11px"
														class="ui_icon--star fas fa-star" data-state="active"></i>
														<i style="font-size: 11px"
														class="ui_icon--star fas fa-star" data-state="active"></i>
														<i style="font-size: 11px"
														class="ui_icon--star fas fa-star" data-state="active"></i>
													</span> <span class="review-count">(2479)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">너무너무 달아요..</div>
												</div>
											</div>
										</div> <!--컨텐츠 정보 끝-->
									</a>
								</div>
							</div>
							<div class="ui_grid__item">
								<!-- 컨텐츠 1개 -->
								<div class="base-card card--vertical product">
									<a href="detail_content.do" target="_blank">
										<div class="card-thumb-cover">
											<!--컨텐츠 이미지-->
											<div class="product-thumb-img"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div> <!-- 컨텐츠 이미지 끝-->
										<div class="card-info product-info">
											<!-- 컨텐츠 정보-->
											<!-- 작가 이름 -->
											<div class="product-info__artist-name">시루아네</div>
											<!-- 제목 -->
											<div class="product-info__name">[추석할인] 시루아네
												카스테라앙절미(40구)</div>
											<!-- 가격 -->
											<div class="product-info__price">
												<span class="sale-rate">16%</span> <span class="price-sale">16,800
													<span style="font-size: 14px;">원</span>
												</span>
												<div class="price-origin--before-sale">
													<del>20,000원</del>
												</div>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 12px">
												<div class="badge badge-food">안전식품</div>
											</div>
											<div class="product-info__review">
												<!-- 컨텐츠 리뷰-->
												<div class="review-rating">
													<span class="ui_rating fr" data-value="4.8"> <i
														style="font-size: 11px" class="ui_icon--star fas fa-star"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star fas fa-star" data-state="active"></i>
														<i style="font-size: 11px"
														class="ui_icon--star fas fa-star" data-state="active"></i>
														<i style="font-size: 11px"
														class="ui_icon--star fas fa-star" data-state="active"></i>
														<i style="font-size: 11px"
														class="ui_icon--star fas fa-star" data-state="active"></i>
													</span> <span class="review-count">(2479)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">너무너무 달아요..</div>
												</div>
											</div>
										</div> <!--컨텐츠 정보 끝-->
									</a>
								</div>
							</div>
							<div class="ui_grid__item">
								<!-- 컨텐츠 1개 -->
								<div class="base-card card--vertical product">
									<a href="detail_content.do" target="_blank">
										<div class="card-thumb-cover">
											<!--컨텐츠 이미지-->
											<div class="product-thumb-img"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div> <!-- 컨텐츠 이미지 끝-->
										<div class="card-info product-info">
											<!-- 컨텐츠 정보-->
											<!-- 작가 이름 -->
											<div class="product-info__artist-name">시루아네</div>
											<!-- 제목 -->
											<div class="product-info__name">[추석할인] 시루아네
												카스테라앙절미(40구)</div>
											<!-- 가격 -->
											<div class="product-info__price">
												<span class="sale-rate">16%</span> <span class="price-sale">16,800
													<span style="font-size: 14px;">원</span>
												</span>
												<div class="price-origin--before-sale">
													<del>20,000원</del>
												</div>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 12px">
												<div class="badge badge-food">안전식품</div>
											</div>
											<div class="product-info__review">
												<!-- 컨텐츠 리뷰-->
												<div class="review-rating">
													<span class="ui_rating fr" data-value="4.8"> <i
														style="font-size: 11px" class="ui_icon--star fas fa-star"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star fas fa-star" data-state="active"></i>
														<i style="font-size: 11px"
														class="ui_icon--star fas fa-star" data-state="active"></i>
														<i style="font-size: 11px"
														class="ui_icon--star fas fa-star" data-state="active"></i>
														<i style="font-size: 11px"
														class="ui_icon--star fas fa-star" data-state="active"></i>
													</span> <span class="review-count">(2479)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">너무너무 달아요..</div>
												</div>
											</div>
										</div> <!--컨텐츠 정보 끝-->
									</a>
								</div>
							</div>
						</div>
						<div data-ui="scroll-paging" data-type="vue"
							class="scroll-pagination">
							<div id="scroll-pagination-marker"></div>
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
		<!-- 푸터 자리 -->
	</div>
</body>
</html>