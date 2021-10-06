<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if lt IE 7]><html class="lt-ie9 lt-ie8 lt-ie7"><![endif]-->
<!--[if IE 7]><html class="lt-ie9 lt-ie8"><![endif]-->
<!--[if IE 8]><html class="lt-ie9"><![endif]-->
<!--[if gt IE 8]><html class="ie9"><![endif]-->
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="naver-site-verification"
	content="a8c6e5633b597db7b48d05e4a7d247011f6794ec" />
<meta name="google-site-verification"
	content="NnaPRa-jWBb5SnBiwjEZkMqm1pFS2Y8mVdUG0nJqO4c" />
<title>${categoryName.class_category_name } | 클래스</title>

<link rel="stylesheet" href="resources/css/class_category.css" />
<link rel="stylesheet" href="resources/css/vendor.client.min.css" />
<link rel="stylesheet" href="resources/css/idus.web.min.css" />

<!-- 파비콘 이미지 설정 -->
<link rel="shortcut icon" type="image/x-icon"
	href="resources/images/title/icon_300.PNG">
	
<meta name="theme-color" content="#ffffff" />
<link rel="manifest" href="/manifest.json">

<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=5.0, user-scalable=0 viewport-fit=cover" />
<meta name="application-name" content="아이디어스" />
<meta name="keywords" content="핸드메이드, 수공예, 수제 먹거리" />
<meta property="fb:app_id" content="1410666675867984" />
<meta name="description"
	content="취향 맞춤 작품 구매부터 취미 생활까지, 아이디어스로 일상에 특별함을 잇다!" />
<meta property="og:title" content="핸드메이드 라이프스타일 플랫폼, 아이디어스" />
<meta property="og:type" content="website" />
<meta property="og:description"
	content="취향 맞춤 작품 구매부터 취미 생활까지, 아이디어스로 일상에 특별함을 잇다!" />
<meta property="og:url" content="http://www.idus.com/c/category/3/16" />
<meta property="og:image"
	content="http://www.idus.com/resources/dist/images/ogimg-idus.png?ver=2.0" />

<!-- project src -->
<link rel="icon" href="/resources/favicon_32.ico" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet"
	href="resources/css/idus.web.min.css">
<link rel="stylesheet"
	href="resources/css/vendor.client.min.css">
<script src="resources/js/vendor.client.min.js"></script>
<script src="resources/js/vuepack.js"></script>
<script type="text/javascript" src="resources/js/class/class_category.js"></script>

</head>
<body>
	<div data-vue="token"></div>
	<div data-vue="globalUser"></div>
	<div data-vue="resizeHandler"></div>
	
	<div class="wrap">
	<jsp:include page="../header_class.jsp"/>
		<div class="dimmed-background"></div>
		<div id="content" class="content layout_navigation"
			data-gnb-show="true">

			<div class="inner-w mobile-full padded-top">
				<div class="breadcrumb_container">
					<nav class="breadcrumb">
						<a href="class_index.do">클래스<i class="fa fa-chevron-right" aria-hidden="true"></i></a>
						<a href="class_category.do?class_category_code=${categoryName.class_category_code }">${categoryName.class_category_name }<i class="fa fa-chevron-right" aria-hidden="true"></i></a>
						<input type="hidden" id="category-name" value="${categoryName.class_category_name }"/>
					</nav>
				</div>
			</div>

			<div class="layout-split fix-wrap-width"
				data-layout-split="edu-category">
				<div class="inner-w mobile-full">
					<ul class="side_nav">
						<li class="side_nav__menu active" style="border-bottom: 3px solid #d9d9d9;">
							<a href="class_category.do?class_category_code=${categoryName.class_category_code }">${categoryName.class_category_name}</a>
						</li>
						<c:forEach var="category" items="${categoryList }">
						<li class="side_nav__menu" style="border-bottom: 1px solid #d9d9d9; display:flex; justify-content:space-between; align-items:center;">
							<a href="class_category.do?class_category_code=${category.class_category_code }">${category.class_category_name }</a>
							<i class="fa fa-chevron-right" aria-hidden="true"></i>
						</li>
						</c:forEach>
					</ul>
				</div>
				<div class="inner-w">
					<div class="ui_grid">
					 <c:set var="i" value="-1"/>
					 <ul class="ui_grid__cols--3 ui_grid__cols--m2"
							data-ui="scroll-paging" data-param="NULL">
					 <c:forEach var="class" items="${classList }">
							 <c:set var="i" value="${i + 1}"/>
							<li class="ui_grid__item">
								<div class="ui_card--white loadevent" data-ui="eduCard"
									data-target-id="5997" data-stats-artist="7559077"
									data-stats-category-depth1="3" data-stats-category-depth2="16"
									data-lazy-loaded="false" data-logging="edu_list_item">
									<span class="ui_card__overlay--label">${class.class_open_address }</span>

									<button type="button"
										class="ui_card__overlay btn-ico sp-icon icon-favorite "
										aria-label="좋아하는 클래스 추가" data-ui="stats-star"
										data-starred-type="edu" data-target-id="5997"
										data-stats-artist="7559077" data-stats-category-depth1="3"
										data-stats-category-depth2="16" data-state="">
									</button>
									<div class="ui_card__imgcover">
										<a href="class_detail_content.do?class_category_code=${category.class_category_code }" target="_blank" class="ui_card__img"
											data-lazy-img="resources/images/index/${class.class_open_photo[0]}"
											style="background-image: url(resources/images/index/${class.class_open_photo[0]});">
										</a>
									</div>
									<div class="ui_card__txtarea">
										<div class="ui_card__info">
											<a href="/c/class/5997" target="_blank"
												class="ui_card__label">${class.class_category_name }</a> <a
												href="class_detail_content.do?class_open_class_code=${class.class_open_class_code }" target="_blank" class="ui_card__title"><b>${class.class_open_name }</b></a>
										</div>
											<div class="ui_card__rating">
												<div class="ui_card__vcenter">
													<div class="ui_rating" data-ui="rating" data-value="5">
														 <i class="fa fa-star" aria-hidden="true" style="color:#f2b705;"></i>
														 <i class="fa fa-star" aria-hidden="true" style="color:#f2b705;"></i>
														 <i class="fa fa-star" aria-hidden="true" style="color:#f2b705;"></i>
														 <i class="fa fa-star" aria-hidden="true" style="color:#f2b705;"></i>
														 <i class="fa fa-star" aria-hidden="true" style="color:#f2b705;"></i>
														 <em class="ui_rating__label">(1)</em>
													</div>
												</div>
											</div>
										</div>
								</div>
							</li>
						<c:if test="${ i eq 2 || i eq 5} ">
						</ul>
						<ul class="ui_grid__cols--3 ui_grid__cols--m2"
							data-ui="scroll-paging" data-param="NULL">
						</c:if>
						</c:forEach>
						</ul>
					</div>
					<div class="paging" data-ui="paging" data-sync="false">
						<nav>
							<c:choose>
								<c:when test="${paging.nowPage eq 1 }">
									<span style="width: auto;">◀ 이전 |</span>
								</c:when>
								<c:when test="${paging.nowPage ne 1 }">
									<a
										href="/mpweb/class_category.do?nowPage=${paging.nowPage - 1 }&cntPerPage=${paging.cntPerPage}&class_category_code=${categoryName.class_category_code}"
										style="width: auto;">◀ 이전 |</a>
								</c:when>
							</c:choose>
							<c:forEach begin="${paging.startPage }" end="${paging.endPage }"
								var="p">
								<c:choose>
									<c:when test="${p eq paging.nowPage }">
										<a
											href="/mpweb/class_category.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}&class_category_code=${categoryName.class_category_code}"
											class="active" onclick="return false">${p }</a>
									</c:when>
									<c:when test="${p ne paging.nowPage }">
										<a
											href="/mpweb/class_category.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}&class_category_code=${categoryName.class_category_code}">${p }</a>
									</c:when>
								</c:choose>
							</c:forEach>
							<c:choose>
								<c:when test="${paging.endPage eq paging.lastPage}">
									<span style="width: auto;">| 다음 ▶</span>
								</c:when>
								<c:when test="${paging.endPage ne paging.lastPage}">
									<a
										href="/mpweb/class_category.do?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}&class_category_code=${categoryName.class_category_code}"
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
				</div>
			</div>
		</div>

		
		<div data-vue="ToastPopup"></div>
		<div data-vue="BottomSheet"></div>
		<div data-vue="WideBottomSheet"></div>
		<div data-vue="FooterModal"></div>
		<div data-vue="InactiveToast"></div>

	</div>

	<a href="#header" class="to-top" data-ui="scroll-to-top" data-page=""
		style="display: flex;"> <img
		src="resources/images/common/go-to-top-image.png" alt="go to top">
	</a>
	<jsp:include page="../footer.jsp" />
	<!-- div WRAP -->
	<script type="text/javascript"
		src="resources/js/idus.web.min.js"></script>
	
</body>
</html>
