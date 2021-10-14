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
<title>아이디위드 | 인기 작품</title>
<meta name="theme-color" content="#ffffff" />
<link rel="apple-touch-icon" sizes="384x384"
	href="resources/images/app-icon/icon_300.png">
<link rel="manifest" href="/manifest.json">

<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=5.0, user-scalable=0 viewport-fit=cover" />
<meta name="application-name" content="아이디위드" />
<meta name="keywords" content="핸드메이드, 수공예, 수제 먹거리" />
<meta property="fb:app_id" content="1410666675867984" />
<meta name="description"
	content="취향 맞춤 작품 구매부터 취미 생활까지, 아이디위드로 일상에 특별함을 잇다!" />
<meta property="og:title" content="핸드메이드 라이프스타일 플랫폼, 아이디위드" />
<meta property="og:type" content="website" />
<meta property="og:description"
	content="취향 맞춤 작품 구매부터 취미 생활까지, 아이디위드로 일상에 특별함을 잇다!" />
<meta property="og:url"
	content="http://www.idus.com/w/main/popular-category" />
<meta property="og:image"
	content="http://www.idus.com/resources/dist/images/ogimg-idus.png?ver=2.0" />
<link rel="canonical" href="http://www.idus.com/w/main/popular-category" />

<!-- project src -->
<link rel="icon" href="resources/favicon_32.ico" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link href="resources/css/content.css" rel="stylesheet" />
<link rel="stylesheet" href="resources/css/idus.web.min.css">
<link rel="stylesheet" href="resources/css/vendor.client.min.css">

</head>
<body>
	<div data-vue="token"></div>
	<div data-vue="globalUser"></div>
	<div data-vue="resizeHandler"></div>
	<div class="wrap">
		<jsp:include page="header_goods.jsp"/>
		<div class="dimmed-background"></div>
		<div id="content" class="content" data-gnb-show="true">
			<section class="banner-title" data-image="type1" data-theme="orange">
				<h1>인기작품</h1>
				<p>아이디위드에서 가장 인기있는 작품들이에요.</p>
			</section>

			<div class="inner-w">
			 <c:set var="i" value="-1"/>
			 <c:forEach var="goodsCategory" items="${goodsCategoryList}">
			  <c:set var="i" value="${i + 1}"/>
			 	<c:choose>
			 		<c:when test="${i eq 0 }">
				<div class="ui_title--bg" style="width:115%;">
					</c:when>
					<c:when test="${i ne 0 }">
					<div class="ui_title--bg" style="width:70%; margin-left:20%;">
					</c:when>
				</c:choose>
					<a
						href="goods_category.do?goods_category=${goodsCategory.goods_category_code}"
						data-category-uuid="a9970f75-ea75-11e4-8a46-06fd000000c2"
						class="ui_title__txt">${goodsCategory.goods_category_name}</a> 
					</a>
				</div>
				<c:choose>
			 		<c:when test="${i eq 0 }">
				<div class="ui_grid" style="width:115%;">
					</c:when>
					<c:when test="${i ne 0 }">
				<div class="ui_grid" style="width:70%; margin-left:20%;">
					</c:when>
				</c:choose>	
					<ul class="ui_grid__cols--5 ui_grid__cols--m2">
					
							<c:choose>
								<c:when test="${i eq 0}">
									<c:set var="items" value="${goodsList0 }" />
								</c:when>
								<c:when test="${i eq 1}">
									<c:set var="items" value="${goodsList1 }" />
								</c:when>
								<c:when test="${i eq 2}">
									<c:set var="items" value="${goodsList2 }" />
								</c:when>
								<c:when test="${i eq 3}">
									<c:set var="items" value="${goodsList3 }" />
								</c:when>
								<c:when test="${i eq 4}">
									<c:set var="items" value="${goodsList4 }" />
								</c:when>
								<c:when test="${i eq 5}">
									<c:set var="items" value="${goodsList5 }" />
								</c:when>
								<c:when test="${i eq 6}">
									<c:set var="items" value="${goodsList6 }" />
								</c:when>
								<c:when test="${i eq 7}">
									<c:set var="items" value="${goodsList7 }" />
								</c:when>
								<c:when test="${i eq 8}">
									<c:set var="items" value="${goodsList8 }" />
								</c:when>
								<c:when test="${i eq 9}">
									<c:set var="items" value="${goodsList9 }" />
								</c:when>
								<c:when test="${i eq 10}">
									<c:set var="items" value="${goodsList10 }" />
								</c:when>
								<c:when test="${i eq 11}">
									<c:set var="items" value="${goodsList11 }" />
								</c:when>
								<c:when test="${i eq 12}">
									<c:set var="items" value="${goodsList12 }" />
								</c:when>
								<c:when test="${i eq 13}">
									<c:set var="items" value="${goodsList13 }" />
								</c:when>
								<c:when test="${i eq 14}">
									<c:set var="items" value="${goodsList14 }" />
								</c:when>
								<c:when test="${i eq 15}">
									<c:set var="items" value="${goodsList15 }" />
								</c:when>
								<c:when test="${i eq 16}">
									<c:set var="items" value="${goodsList16 }" />
								</c:when>
								<c:when test="${i eq 17}">
									<c:set var="items" value="${goodsList17 }" />
								</c:when>
								<c:when test="${i eq 18}">
									<c:set var="items" value="${goodsList18 }" />
								</c:when>
								<c:when test="${i eq 19}">
									<c:set var="items" value="${goodsList19 }" />
								</c:when>
							</c:choose>
							<c:forEach var="goodsVO" items="${items }">
							<li class="ui_grid__item">
							<div class="card-add-icon">
								<em class="icon-num" data-ranking="${goodsVO.rownum }">${goodsVO.rownum }</em>
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

									<div class="ui_card__imgcover">
										<a href="detail_content.do?goods_code=${goodsVO.goods_code }"
											target="_blank" aria-label="${goodsVO.goods_name }"
											class="ui_card__img lazy "
											data-product-id="c2681596-227f-4b06-a558-296e711cf910"
											style="background-image: url('${goodsVO.goods_photo[0]}')"></a>
									</div>

									<div class="ui_card__info">
										<a href="/w/artist/f0775b5a-35ff-4396-9e6a-2b7084a40210"
											class="ui_card__label" target="_blank">${goodsVO.store_name }</a> <a
											href="detail_content.do?goods_code=${goodsVO.goods_code }"
											class="ui_card__title"
											data-product-id="c2681596-227f-4b06-a558-296e711cf910"
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
	</div>
	<!-- div WRAP -->
	<script type="text/javascript"
		src="resources/js/idus.web.min.js"></script>
	 <jsp:include page="footer.jsp" />
</body>
</html>