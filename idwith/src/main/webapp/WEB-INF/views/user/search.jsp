<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="resources/css/search.css" />
<link rel="stylesheet" href="resources/css/idus.web.min.css">
<link rel="stylesheet" href="resources/css/vendor.client.min.css">
<link rel="stylesheet" href="resources/css/uipack-local.css">


<link rel="shortcut icon" type="image/x-icon"
	href="resources/images/title/icon_300.PNG">
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="resources/js/idus.web.min.js"></script>
<script type="text/javascript" src="resources/js/vendor.client.min.js"></script>
<!-- <script type="text/javascript" src="resources/js/vuepack.js"></script>
 -->
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="naver-site-verification"
	content="a8c6e5633b597db7b48d05e4a7d247011f6794ec" />
<meta name="google-site-verification"
	content="NnaPRa-jWBb5SnBiwjEZkMqm1pFS2Y8mVdUG0nJqO4c" />
<title> '${keyword}' | 아이디위드 - 핸드메이드, 수공예, 수제 먹거리</title>

<!-- Intersection Observer polyfill -->

<!-- project src -->
<link rel="icon" href="/resources/favicon_32.ico" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- Kakao web SDK -->
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<!-- Signin With Apple -->
<script type="text/javascript"
	src="https://appleid.cdn-apple.com/appleauth/static/jsapi/appleid/1/en_US/appleid.auth.js"></script>

<!-- tracker vendors -->
<script async
	src="https://www.googletagmanager.com/gtag/js?id=AW-775263643"></script>
<script type="text/javascript" charset="UTF-8"
	src="//t1.daumcdn.net/adfit/static/kp.js"></script>
<script type="text/javascript" src="//static.criteo.net/js/ld/ld.js"
	async="true"></script>
<script src="//wcs.naver.net/wcslog.js"></script>
</head>
<body>
	<div class="wrap">
		<jsp:include page="header_goods.jsp" />
		<div class="dimmed-background"></div>
		<div data-vue="search-detail">
			<div class="content" id="content" page-data="2dep-list" sticky-container class="SearchDetail content">
				<!-- <div data-v-6d7c9b5f="" class="DesktopProductFilter__filterBottom">
					<button data-v-08fc3558="" data-v-6d7c9b5f=""
						class="only-img-button">
						<div data-v-08fc3558="" class="only-img-button-box">
							<div data-v-5e27c696="" data-v-08fc3558="" class="checkbox">
								<div data-v-5e27c696="" class="input-checkbox">
									<input data-v-5e27c696="" id="" type="checkbox"
										autocomplete="off" class="bp" value="false">
								</div>
								
							</div>
							<p data-v-08fc3558="" class="only-img-button-text margin-left ">이미지만
								볼래요</p>
						</div>
					</button>
					
					<div data-v-6d7c9b5f="" class="DesktopProductFilter__sortSelector">
						<div data-v-4dfbe33c="" data-v-6d7c9b5f="" class="SingleSelector">
							<div data-v-4b6162e7="" data-v-4dfbe33c="" class="BaseSelector">
								<select data-v-4b6162e7="" class="BaseSelector__selector"></select>
								<button data-v-4b6162e7="" type="button"
									class="BaseSelector__triggerButton BaseSelector__triggerButton--active">
									<span data-v-4b6162e7="" class="BaseSelector__selectedItem">인기순</span>
									<i data-v-4b6162e7="" class="ui-icon fa fa-chevron-down"></i>
								</button>
								<ul data-v-4b6162e7=""
									class="BaseSelector__optionItemList BaseSelector__optionItemList--active">
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
								</ul>
							</div>
						</div>
					</div>
				</div> -->




				<div class="inner-w">
					<div data-v-d3c44402="" class="search-result-list">
						<div data-v-d3c44402="" class="search-result-list__item--full">
							<div data-v-66d71af7="" data-v-d3c44402="" class="lecture-goods-search-list">
								<h2 data-v-c9688b12="" data-v-66d71af7="" class="search-title">
									<!-- '검색어' 관련 클래스 수정필요 -->"${keyword}" 에 대한 작품 검색결과
								</h2>
								<div data-v-66d71af7="" class="vertical-container"></div>
							</div>
							
							<!-- 작품 검색 결과 -->
							<!-- for문 돌리기 -->
							<c:forEach var="goodsList" items="${goodsList}">
								<div data-v-d3c44402="" class="search-result-list__item--grid">
									<div data-v-d3c44402="" class="search-product-card">
										<div data-v-796f1feb="" data-v-74fd357a=""
											class="base-card card--vertical product">
											<a data-v-796f1feb=""
												href="seller_goods.do?goods_code=${goodsList.goods_code}"
												target="_blank"><div data-v-796f1feb=""
													class="card-thumb-cover">
													<div data-v-74fd357a="" data-v-796f1feb=""
														id="thumb-ec375a22-41bf-4d30-87dd-5c6fe4dd2290"
														class="product-thumb-img"
														style="background-image: url('${goodsList.goods_photo[0]}');"></div>
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="product-bookmark">
														<button data-v-488f5f82="" data-v-74fd357a=""
															aria-label="찜하기" class="full-button" data-v-796f1feb=""
															style="width: 24px; height: 24px;">
															<i data-v-74fd357a="" data-v-488f5f82=""
																class="sp-icon icon-favorite"></i>
														</button>
													</div>
												</div>
												<div data-v-796f1feb="" class="card-info product-info">
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="product-info__artist-name">${goodsList.store_name}</div>
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="product-info__name">${goodsList.goods_name}
													</div>
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="product-info__price">
														<!---->
														<span data-v-74fd357a="" data-v-796f1feb=""
															class="price-origin"> ${goodsList.goods_price} <span
															data-v-74fd357a="" data-v-796f1feb=""
															style="font-size: 14px;">원</span></span>
														<!---->
													</div>
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="product-info__badge-group" style="margin-top: 8px;">
														<div data-v-2f2bc7d4="" data-v-74fd357a=""
															class="badge badge-food" data-v-796f1feb="">안전식품</div>
													</div>
													<div data-v-74fd357a="" data-v-796f1feb=""
														class="product-info__review">
														<div data-v-74fd357a="" data-v-796f1feb=""
															class="review-rating">
															<span data-v-ef94db98="" data-v-74fd357a=""
																data-value="4.8" class="ui_rating fr" data-v-796f1feb="">
																<i class="fa fa-star" aria-hidden="true" style="color: #f5eb75;"></i>
																<i class="fa fa-star" aria-hidden="true" style="color: #f5eb75;"></i>
																<i class="fa fa-star" aria-hidden="true" style="color: #f5eb75;"></i>
																<i class="fa fa-star" aria-hidden="true" style="color: #f5eb75;"></i>
																<i class="fa fa-star" aria-hidden="true" style="color: #f5eb75;"></i>	
															</span> <span data-v-74fd357a=""
																data-v-796f1feb="" class="review-count"> (1627) </span>
														</div>
														<div data-v-74fd357a="" data-v-796f1feb=""
															class="review-comment">
															<div data-v-74fd357a="" data-v-796f1feb=""
																class="review-comment__badge">후기</div>
															<div data-v-74fd357a="" data-v-796f1feb=""
																class="review-comment__contents">${goodsList.goods_review_context}</div>
														</div>
													</div>
												</div></a>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
						
						<div data-v-d3c44402="" class="search-result-list__item--full">
							<div data-v-66d71af7="" data-v-d3c44402=""
								class="lecture-search-list">
								<h2 data-v-c9688b12="" data-v-66d71af7="" class="search-title">
									<!-- '검색어' 관련 클래스 수정필요 -->"${keyword}" 에 대한 클래스 검색결과
								</h2>
								<div data-v-66d71af7="" class="vertical-container"></div>
							</div>
							
							<!-- 클래스 상품 -->
							<!-- for문 돌리기 -->
							<ul class="ui_grid__cols--4 ui_grid__cols--m2" data-ui="scroll-paging" data-param="NULL">
								<c:forEach var="classList" items="${classList}">
									<li class="ui_grid__item">
										<div class="ui_card--white" data-ui="eduCard"
											data-target-id="2084" data-stats-artist="68625"
											data-stats-category-depth1="4"
											data-stats-category-depth2="32" data-lazy-loaded="false"
											data-logging="edu_list_item" data-was-processed="true">
											<span class="ui_card__overlay--label">${classList.class_open_address}</span>

											<button type="button"
												class="ui_card__overlay btn-ico sp-icon icon-favorite "
												aria-label="좋아하는 클래스 추가" data-ui="stats-star"
												data-starred-type="edu" data-target-id="2084"
												data-stats-artist="68625" data-stats-category-depth1="4"
												data-stats-category-depth2="32" data-state=""></button>
											<div class="ui_card__imgcover">
												<a
													href="/c/class/2084?search_word=d&amp;keyword_channel=user"
													target="_blank" class="ui_card__img"
													data-lazy-img="https://image.idus.com/image/files/e917b5637ba342f293a88f8697d00ffd_320.png"
													style="background-image: url(${classList.class_open_photo});">
												</a>
											</div>
											<div class="ui_card__txtarea">
												<div class="ui_card__info">
													<a href="/c/class/2084" target="_blank"
														class="ui_card__label">미술</a> <a href="/c/class/2084"
														target="_blank" class="ui_card__title"><b>${classList.class_open_info}</b></a>
												</div>
												<div class="ui_card__rating">
													<div class="ui_card__vcenter">
														<div class="ui_rating" data-ui="rating" data-value="5">
															<i class="idus-icon-star-fill" data-state="active"></i> <i
																class="idus-icon-star-fill" data-state="active"></i> <i
																class="idus-icon-star-fill" data-state="active"></i> <i
																class="idus-icon-star-fill" data-state="active"></i> <i
																class="idus-icon-star-fill" data-state="active"></i> <em
																class="ui_rating__label">(39)</em>
														</div>
													</div>
												</div>
											</div>
										</div>
									</li>
								</c:forEach>
							</ul>

						</div>
						
						
					</div>
				</div>
			</div>
			
			
			<!-- 페이징 처리 -->
			<div class="paging" data-ui="paging" data-sync="false">
				<nav>
					<c:choose>
						<c:when test="${paging.nowPage eq 1 }">
							<span style="width: auto;">◀ 이전 |</span>
						</c:when>
						<c:when test="${paging.nowPage ne 1 }">
							<a href="search.do?nowPage=${paging.nowPage - 1 }&cntPerPage=${paging.cntPerPage}" style="width: auto;">◀ 이전 |</a>
						</c:when>
					</c:choose>
					<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
						<c:choose>
							<c:when test="${p eq paging.nowPage }">
								<a href="search.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}" class="active" onclick="return false">${p }</a>
							</c:when>
							<c:when test="${p ne paging.nowPage }">
								<a href="search.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
							</c:when>
						</c:choose>
					</c:forEach>
					<c:choose>
						<c:when test="${paging.endPage eq paging.lastPage}">
							<span style="width: auto;">| 다음 ▶</span>
						</c:when>
						<c:when test="${paging.endPage ne paging.lastPage}">
							<a href="search.do?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}" style="width: auto;">| 다음 ▶</a>
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
		<a href="#header" class="to-top" data-ui="scroll-to-top" data-page="">
			<img src="resources/images/common/go-to-top-image.png"
			alt="go to top">
		</a>
	
		<a href="#header" class="to-top" data-ui="scroll-to-top" data-page="" style="display: flex;"> 
			<img src="resources/images/common/go-to-top-image.png" alt="go to top">
		</a>
		<jsp:include page="footer.jsp" />
		
	</div>
	<!-- div WRAP -->
</body>
</html>
