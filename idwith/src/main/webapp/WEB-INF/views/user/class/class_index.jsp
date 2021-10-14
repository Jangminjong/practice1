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
<title>아이디위드 | 클래스</title>
<meta name="theme-color" content="#ffffff" />

<!-- css -->
<link rel="stylesheet" href="resources/css/content.css" />
<link rel="stylesheet" href="resources/css/vendor.client.min.css" />
<link rel="stylesheet" href="resources/css/idus.web.min.css" />
<link rel="stylesheet" href="resources/css/sp-icon.css" />
<link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
  />

<!-- js -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=487ca5895feb7a04e42984525f8de371&libraries=services"></script>
<script type="text/javascript" src="resources/js/idus.web.min.js"></script>
<script type="text/javascript" src="resources/js/vendor.client.min.js"></script>
<script type="text/javascript" src="resources/js/vuepack.js"></script>
<script src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="resources/js/index.js"></script>

<!-- 파비콘 이미지 설정 -->
<link rel="shortcut icon" type="image/x-icon"
	href="resources/images/title/icon_300.PNG">

<link rel="manifest" href="/manifest.json">

</head>
<body>
	<div class="wrap">

		<div id="skip-to-content">
			<a href="#gnb">메뉴목록으로 바로가기</a> <a href="#content">컨텐츠로 바로가기</a>
		</div>

		<jsp:include page="../header_class.jsp"/>
		<div class="dimmed-background"></div>
		

		<div id="content" class="content" data-gnb-show="true"
			data-page="c-main">
			<!-- 메인 -->
			<section id="main_visual">
				<div class="index-slider style-main home" data-ui="slider"
					data-resize="true" data-rolling="true" data-indicator-type="label"
					tabindex="-1"
					style="touch-action: pan-y; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0)">
					<div id="slider" class="outer-frame">
						<ul class="inner-frame" style="margin-left: 0px;">
							<li class="ui-slide showroom-banner" style="background: #d16160;" data-id="1765"><a
								href="product_search.do"> <img
									src="resources/images/index/indexBannerImg9.jpg"
									alt="서울동부편">
							</a></li>
							<li class="ui-slide showroom-banner" style="background: #9D6F6F;"
								data-id="1710"><a href="product_search.do"> <img
									src="resources/images/index/indexBannerImg10.jpg" alt="서울서부편">
							</a></li>
							<li class="ui-slide showroom-banner" style="background: #316E64;"
								data-id="1766"><a href="product_search.do"> <img
									src="resources/images/index/indexBannerImg11.jpg"
									alt="서울북부편">
							</a></li>
							<li class="ui-slide showroom-banner" style="background: #F4F1ED;"
								data-id="1711"><a href="product_search.do"> <img
									src="resources/images/index/indexBannerImg12.jpg"
									alt="부산편">
							</a></li>
							<li class="ui-slide showroom-banner"
								style="background: #4B2C2C; display: list-item;" data-id="1709"><a
								href="index.do"> <img
									src="resources/images/index/indexBannerImg8.jpg"
									alt="서울남부편">
							</a></li>
						</ul>
					</div>
					<fieldset class="ui-control" style="display: block;">
						<button type="button" class="ui-btn prev control-prev"
							aria-label="이전" >
							<i class="fa fa-chevron-left fa-2x"></i>
						</button>
						<nav class="indicator"></nav>
						<button type="button" class="ui-btn next control-next"
							aria-label="다음" >
							<i class="fa fa-chevron-right fa-2x"></i>
						</button>
					</fieldset>
				</div>
			</section>

			<div class="inner-w">
				<nav class="nav_group">
					<a href="class_category.do?class_category_code=CLCR" class="nav_group__link"> <img
						src="resources/images/index/category_craft.png" alt="">
						<span>공예</span>
					</a> <a href="class_category.do?class_category_code=CLCO" class="nav_group__link"> <img
						src="resources/images/index/category_cook.png" alt="">
						<span>요리</span>
					</a> <a href="class_category.do?class_category_code=CLAR" class="nav_group__link"> <img
						src="resources/images/index/category_art.png" alt="">
						<span>미술</span>
					</a> <a href="class_category.do?class_category_code=CLFL" class="nav_group__link"> <img
						src="resources/images/index/category_flower.png" alt="">
						<span>플라워</span>
					</a> <a href="class_category.do?class_category_code=CLBU" class="nav_group__link"> <img
						src="resources/images/index/category_beauty.png" alt="">
						<span>뷰티</span>
					</a> <a href="class_category.do?class_category_code=CLEX" class="nav_group__link"> <img
						src="resources/images/index/category_etc.png" alt="">
						<span>체험 및 기타</span>
					</a>
				</nav>
			</div>
			<!-- 주변클래스 -->
			<div class="inner-w page-section">
				<div class="ui_title">
					<h2 class="ui_title__txt">
						주변 클래스
						<button data-v-ca1731d8="" type="button" class="location-label" style="cursor:pointer;" onclick="setClassWithLocation()">
							<i class="fa fa-map-marker" aria-hidden="true"></i> 
							<input type="text" value="${nearbyClassList[0].class_open_address }" id="location-input" style="border:none; outline:none;" readonly="readonly"/>
							<!---->
						</button>
					</h2>
				</div>
				<div class="ui_grid">
					<ul class="ui_grid__cols--4 ui_grid__cols--m2">
						<c:forEach var="classVO" items="${nearbyClassList}">
						<li class="ui_grid__item">
							<div class="ui_card--white" data-ui="eduCard"
								data-target-id="5291" data-stats-artist="4496741"
								data-stats-category-depth1="2" data-stats-category-depth2="11"
								data-lazy-loaded="false" data-logging="edu_list_item"
								data-was-processed="true">
								<span class="ui_card__overlay--label">${classVO.class_open_address }</span>

								<button type="button"
									class="ui_card__overlay btn-ico sp-icon icon-favorite "
									aria-label="좋아하는 클래스 추가" data-ui="stats-star"
									data-starred-type="edu" data-target-id="5291"
									data-stats-artist="4496741" data-stats-category-depth1="2"
									data-stats-category-depth2="11" data-state=""></button>
								<div class="ui_card__imgcover">
									<a href="class_detail_content.do?class_open_class_code=${classVO.class_open_class_code }" target="_blank" class="ui_card__img"
										data-lazy-img="resources/images/category_class/${classVO.class_open_photo[0] }"
										style="background-image: url(resources/images/category_class/${classVO.class_open_photo[0] });">
									</a>
								</div>
								<div class="ui_card__txtarea">
									<div class="ui_card__info">
										<a href="class_detail_content.do?class_open_class_code=${classVO.class_open_class_code }" target="_blank" class="ui_card__label">${classVO.class_category_name }</a>
										<a href="class_detail_content.do?class_open_class_code=${classVO.class_open_class_code }" target="_blank" class="ui_card__title"><b>${classVO.class_open_name }</b></a>
									</div>
									<div class="ui_card__rating">
										<div class="ui_card__vcenter">
											<div class="ui_rating" data-ui="rating" data-value="5">
												<i class="fa fa-star" aria-hidden="true" style="color:#f2b705;"></i>
												<i class="fa fa-star" aria-hidden="true" style="color:#f2b705;"></i>
												<i class="fa fa-star" aria-hidden="true" style="color:#f2b705;"></i>
												<i class="fa fa-star" aria-hidden="true" style="color:#f2b705;"></i>
												<i class="fa fa-star" aria-hidden="true" style="color:#f2b705;"></i>
												 <em
													class="ui_rating__label">(1)</em>
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
			
			<!-- 인기클래스 -->
			<div class="inner-w page-section">
				<div class="ui_title">
					<h2 class="ui_title__txt">인기 클래스</h2>
					<a href="/class_popular.do" class="ui_title__txtright">더보기 &gt;</a>
				</div>
				<div class="ui_grid">
					<ul class="ui_grid__cols--4 ui_grid__cols--m2">
					<c:forEach var="classVO" items="${popularClassList}">
						<li class="ui_grid__item">
							<div class="ui_card--white" data-ui="eduCard"
								data-target-id="789" data-stats-artist="1064389"
								data-stats-category-depth1="3" data-stats-category-depth2="26"
								data-lazy-loaded="false" data-logging="edu_list_item"
								data-was-processed="true">
								<span class="ui_card__overlay--label">${classVO.class_open_address}</span>

								<button type="button"
									class="ui_card__overlay btn-ico sp-icon icon-favorite "
									aria-label="좋아하는 클래스 추가" data-ui="stats-star"
									data-starred-type="edu" data-target-id="789"
									data-stats-artist="1064389" data-stats-category-depth1="3"
									data-stats-category-depth2="26" data-state=""></button>
								<div class="ui_card__imgcover">
									<a href="class_detail_content.do?class_open_class_code=${classVO.class_open_class_code}" target="_blank" class="ui_card__img"
										data-lazy-img="resources/images/category_class/${classVO.class_open_photo[0]}"
										style="background-image: url(resources/images/index/${classVO.class_open_photo[0]});">
									</a>
								</div>
								<div class="ui_card__txtarea">
									<div class="ui_card__info">
										<a href="class_detail_content.do?class_open_class_code=${classVO.class_open_class_code }" target="_blank" class="ui_card__label">${classVO.class_category_name }</a>
										<a href="class_detail_content.do?class_open_class_code=${classVO.class_open_class_code }" target="_blank" class="ui_card__title"><b>
												${classVO.class_open_name }</b></a>
									</div>
									<div class="ui_card__rating">
										<div class="ui_card__vcenter">
											<div class="ui_rating" data-ui="rating" data-value="5">
												<i class="fa fa-star" aria-hidden="true" style="color:#f2b705;"></i>
												<i class="fa fa-star" aria-hidden="true" style="color:#f2b705;"></i>
												<i class="fa fa-star" aria-hidden="true" style="color:#f2b705;"></i>
												<i class="fa fa-star" aria-hidden="true" style="color:#f2b705;"></i>
												<i class="fa fa-star" aria-hidden="true" style="color:#f2b705;"></i>
												 <em
													class="ui_rating__label">(31)</em>
											</div>
										</div>
									</div>
								</div>
							</div>
						</li>
						</c:forEach>
					</ul>
				</div>
				<a href="class_popular.do" class="ui_btn--large mobile-show">인기 클래스
					더보기</a>
			</div>
			
			<!-- 신규클래스 -->
			<div class="inner-w page-section">
				<div class="ui_title">
					<h2 class="ui_title__txt">신규 클래스</h2>
				</div>
				<div class="ui_grid">
					<ul class="ui_grid__cols--4 ui_grid__cols--m2">
						<c:forEach var="classVO" items="${newClassList}">
						<li class="ui_grid__item">
							<div class="ui_card--white" data-ui="eduCard"
								data-target-id="6103" data-stats-artist="1047348"
								data-stats-category-depth1="2" data-stats-category-depth2="10"
								data-lazy-loaded="false" data-logging="edu_list_item"
								data-was-processed="true">
								<span class="ui_card__overlay--label">${classVO.class_open_address }</span>

								<button type="button"
									class="ui_card__overlay btn-ico sp-icon icon-favorite "
									aria-label="좋아하는 클래스 추가" data-ui="stats-star"
									data-starred-type="edu" data-target-id="6103"
									data-stats-artist="1047348" data-stats-category-depth1="2"
									data-stats-category-depth2="10" data-state=""></button>
								<div class="ui_card__imgcover">
									<a href="class_detail_content.do?class_open_class_code=${classVO.class_open_class_code }" target="_blank" class="ui_card__img"
										data-lazy-img="resources/images/category_class/${classVO.class_open_photo[0] }"
										style="background-image: url(resources/images/category_class/${classVO.class_open_photo[0] });">
									</a>
								</div>
								<div class="ui_card__txtarea">
									<div class="ui_card__info">
										<a href="class_detail_content.do?class_open_class_code=${classVO.class_open_class_code }" target="_blank" class="ui_card__label">${classVO.class_category_name }</a>
										<a href="class_detail_content.do?class_open_class_code=${classVO.class_open_class_code }" target="_blank" class="ui_card__title"><b>${classVO.class_open_name }</b></a>
									</div>
									<div class="ui_card__rating">
										<dl class="ui_card__vcenter">
											<div></div>
										</dl>
									</div>
								</div>
							</div>
						</li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>

		<div data-vue="ToastPopup"></div>
		<div data-vue="BottomSheet"></div>
		<div data-vue="WideBottomSheet"></div>
		<div data-vue="FooterModal"></div>
		<div data-vue="InactiveToast"></div>
		<a href="#header" class="to-top" data-ui="scroll-to-top" data-page="">
			<img src="/resources/dist/images/go-to-top-image.png" alt="go to top">
		</a>
		<jsp:include page="../footer.jsp"/>
	</div>
	<!-- div WRAP -->
	<script type="text/javascript"
		src="resources/js/idus.web.min.js"></script>
	
</body>
</html>
