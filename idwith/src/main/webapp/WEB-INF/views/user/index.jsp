<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	String emailSplit = (String)session.getAttribute("emailSplit");
%>
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

			<!-- 내가 본 작품의 연관 작품 -->
			<section id="related-product" class="page-section inner-w">
				<div data-vue="MainRelatedProductSection"></div>
			</section>
			<!-- 내가 본 작품의 연관 작품 -->

			<!-- 인기작품 신규 -->
			<section id="ranking" class="page-section inner-w"
				data-ui="load-all-on-scroll">
				<div class="stickyparent">
					<div class="ui_title">
						<a href="cate_goods.do" class="ui_title__txt"> <span>인기작품</span>
						</a>
					</div>
					<div data-on-scroll="load-content" data-endpoint="/mainAsync/api_category_popular?item=3&amp;p_item=10">
						<div class="ui_title--bg">
							<a href="cate_goods.do"
								data-category-uuid="5c6bc7d4-7760-4702-b63f-7f29eca479e3"
								class="ui_title__txt">디저트, 베이커리, 떡</a> <a href="cate_goods.do"
								data-category-uuid="5c6bc7d4-7760-4702-b63f-7f29eca479e3"
								class="ui_title__txtright">더보기<i
								class="idus-icon-arrow-right"></i></a>
						</div>

						<div class="ui_grid">
										<ul class="ui_grid__cols--5" data-category-uuid="5c6bc7d4-7760-4702-b63f-7f29eca479e3">
											<li class="ui_grid__item">
												<div class="card-add-icon">
													<em class="icon-num" data-ranking="1">1</em>
													<div class="ui_card">
														<button type="button"
															class="ui_card__overlay btn-ico sp-icon icon-favorite"
															data-name="starred-toolbar" data-starred-type="product"
															data-init="" data-starred=""
															data-target-id="046e334b-6b1d-451b-972a-a1601034f9f4">
														</button>

														<div class="ui_card__imgcover">
															<a href="detail_content.do"
																target="_blank"
																aria-label="[추석할인] 시루아네 정성종합세트(개별포장, 24개입)"
																class="ui_card__img"
																data-product-id="046e334b-6b1d-451b-972a-a1601034f9f4"
																style="background-image: url('resources/images/footer/item01.PNG')"
																data-was-processed="true"></a>
														</div>

														<div class="ui_card__info">
															<a href="seller_goods.do"
																class="ui_card__label" target="_blank">시루아네</a> <a
																href="detail_content.do"
																class="ui_card__title"
																data-product-id="046e334b-6b1d-451b-972a-a1601034f9f4"
																target="_blank">[추석할인] 시루아네 정성종합세트(개별포장, 24개입)</a>
														</div>

														<div class="ui_card__rating">
															<div class="ui_card__vcenter">
																<div class="ui_rating" data-ui="rating" data-value="5">
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																</div>
															</div>

															<span class="ui_card__comment">시댁이 보내드렸는데 먹어보시더니
																맛있다고 좋아하셨어요~ 추석상에 올리신다하여 40구짜리로 추가주문하려구요~^^ </span>
														</div>
													</div>
												</div>
											</li>
											<li class="ui_grid__item">
												<div class="card-add-icon">
													<em class="icon-num" data-ranking="2">2</em>
													<div class="ui_card">
														<button type="button"
															class="ui_card__overlay btn-ico sp-icon icon-favorite"
															data-name="starred-toolbar" data-starred-type="product"
															data-init="" data-starred=""
															data-target-id="b772e5e8-345f-478b-ac62-a4300982bdb6">
														</button>

														<div class="ui_card__imgcover">
															<a href="/w/product/b772e5e8-345f-478b-ac62-a4300982bdb6"
																target="_blank" aria-label="[추석할인] 시루아네 담음 종합세트(40구)"
																class="ui_card__img"
																data-product-id="b772e5e8-345f-478b-ac62-a4300982bdb6"
																style="background-image: url('https://image.idus.com/image/files/85e4924d54db42f8b9aae200fb741ce3_512.png')"
																data-was-processed="true"></a>
														</div>

														<div class="ui_card__info">
															<a href="/w/artist/3d6bb4d7-6a97-4d42-b76f-83e75e1c8075"
																class="ui_card__label" target="_blank">시루아네</a> <a
																href="/w/product/b772e5e8-345f-478b-ac62-a4300982bdb6"
																class="ui_card__title"
																data-product-id="b772e5e8-345f-478b-ac62-a4300982bdb6"
																target="_blank">[추석할인] 시루아네 담음 종합세트(40구)</a>
														</div>

														<div class="ui_card__rating">
															<div class="ui_card__vcenter">
																<div class="ui_rating" data-ui="rating" data-value="5">
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																</div>
															</div>

															<span class="ui_card__comment">떡 하나하나가 너무 맛있어요. 특히
																전 오메기떡이 너무너무 맛있네요. 통팥의 달콤함^^</span>
														</div>
													</div>
												</div>
											</li>
											<li class="ui_grid__item">
												<div class="card-add-icon">
													<em class="icon-num" data-ranking="3">3</em>
													<div class="ui_card">
														<button type="button"
															class="ui_card__overlay btn-ico sp-icon icon-favorite"
															data-name="starred-toolbar" data-starred-type="product"
															data-init="" data-starred=""
															data-target-id="82fb28c8-7e6a-444f-b375-19fa10f464ae">
														</button>

														<div class="ui_card__imgcover">
															<a href="/w/product/82fb28c8-7e6a-444f-b375-19fa10f464ae"
																target="_blank" aria-label="[추석할인] 시루아네 카스테라앙절미(40구)"
																class="ui_card__img"
																data-product-id="82fb28c8-7e6a-444f-b375-19fa10f464ae"
																style="background-image: url('https://image.idus.com/image/files/16923dfff30f4e42a2dd964ce3ce75f7_512.jpg')"
																data-was-processed="true"></a>
														</div>

														<div class="ui_card__info">
															<a href="/w/artist/3d6bb4d7-6a97-4d42-b76f-83e75e1c8075"
																class="ui_card__label" target="_blank">시루아네</a> <a
																href="/w/product/82fb28c8-7e6a-444f-b375-19fa10f464ae"
																class="ui_card__title"
																data-product-id="82fb28c8-7e6a-444f-b375-19fa10f464ae"
																target="_blank">[추석할인] 시루아네 카스테라앙절미(40구)</a>
														</div>

														<div class="ui_card__rating">
															<div class="ui_card__vcenter">
																<div class="ui_rating" data-ui="rating" data-value="5">
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																</div>
															</div>

															<span class="ui_card__comment">선물했는데 너무 맛있다고 하네요
																앞으로 30대 이상 선물용으로 기억해놔야겠어요 아침대용으로도 좋고 입이 심심할때도 먹기 좋데요 일주일
																만에 거의 다 먹었다고 ;ㅎ 냉동 보관하면서 먹기 좋다고 하니 선물하기 까다로운 남자분들에게도 잘
																맞아요! 맛있는 떡 감사합니다:)</span>
														</div>
													</div>
												</div>
											</li>
											<li class="ui_grid__item">
												<div class="card-add-icon">
													<em class="icon-num" data-ranking="4">4</em>
													<div class="ui_card">
														<button type="button"
															class="ui_card__overlay btn-ico sp-icon icon-favorite"
															data-name="starred-toolbar" data-starred-type="product"
															data-init="" data-starred=""
															data-target-id="1457a4bf-bece-4d9a-bff3-3312511c986e">
														</button>

														<div class="ui_card__imgcover">
															<a href="/w/product/1457a4bf-bece-4d9a-bff3-3312511c986e"
																target="_blank"
																aria-label="수제떡맛집 쫀득한 찹쌀약과🍪 추석과 생일 간식선물🎁"
																class="ui_card__img"
																data-product-id="1457a4bf-bece-4d9a-bff3-3312511c986e"
																style="background-image: url('https://image.idus.com/image/files/9a76c4d74abd4408b35114658a773908_512.jpg')"
																data-was-processed="true"></a>
														</div>

														<div class="ui_card__info">
															<a href="/w/artist/9e885570-d829-4999-93b4-a0ce2f5235a0"
																class="ui_card__label" target="_blank">떠카나주</a> <a
																href="/w/product/1457a4bf-bece-4d9a-bff3-3312511c986e"
																class="ui_card__title"
																data-product-id="1457a4bf-bece-4d9a-bff3-3312511c986e"
																target="_blank">수제떡맛집 쫀득한 찹쌀약과🍪 추석과 생일 간식선물🎁</a>
														</div>

														<div class="ui_card__rating">
															<div class="ui_card__vcenter">
																<div class="ui_rating" data-ui="rating" data-value="5">
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																</div>
															</div>

															<span class="ui_card__comment">시판보단 크기가 작지만 맛은 정말
																최고에요!👍 정말 촉촉하고 덜 달아서 먹기 좋아요♡ 딱딱한거 싫거든요ㅠㅠㅎㅎ 남편도 덜 달아서
																맛있다고 더 사라하네요.ㅋㅋ 추석 전에 한번더 사러 오겠습니다!^^ 서비스도 감사히 잘 먹었습니당~</span>
														</div>
													</div>
												</div>
											</li>
											<li class="ui_grid__item">
												<div class="card-add-icon">
													<em class="icon-num" data-ranking="5">5</em>
													<div class="ui_card">
														<button type="button"
															class="ui_card__overlay btn-ico sp-icon icon-favorite"
															data-name="starred-toolbar" data-starred-type="product"
															data-init="" data-starred=""
															data-target-id="bbd56d61-41d0-4678-9c71-ea44320e243f">
														</button>

														<div class="ui_card__imgcover">
															<a href="/w/product/bbd56d61-41d0-4678-9c71-ea44320e243f"
																target="_blank" aria-label="추석선물 반짝할인⭐ 인기짱 다홍에그타르트"
																class="ui_card__img"
																data-product-id="bbd56d61-41d0-4678-9c71-ea44320e243f"
																style="background-image: url('https://image.idus.com/image/files/73f18243b49d43b6b019cfd12e06747b_512.jpg')"
																data-was-processed="true"></a>
														</div>

														<div class="ui_card__info">
															<a href="/w/artist/cb040e66-0de0-417e-b975-17cbcdb8e481"
																class="ui_card__label" target="_blank">카페다홍</a> <a
																href="/w/product/bbd56d61-41d0-4678-9c71-ea44320e243f"
																class="ui_card__title"
																data-product-id="bbd56d61-41d0-4678-9c71-ea44320e243f"
																target="_blank">추석선물 반짝할인⭐ 인기짱 다홍에그타르트</a>
														</div>

														<div class="ui_card__rating">
															<div class="ui_card__vcenter">
																<div class="ui_rating" data-ui="rating" data-value="5">
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																</div>
															</div>

															<span class="ui_card__comment">맛있게 잘 먹고있어요..크림이
																많아서 좋아요</span>
														</div>
													</div>
												</div>
											</li>
											<li class="ui_grid__item">
												<div class="card-add-icon">
													<em class="icon-num" data-ranking="6">6</em>
													<div class="ui_card">
														<button type="button"
															class="ui_card__overlay btn-ico sp-icon icon-favorite"
															data-name="starred-toolbar" data-starred-type="product"
															data-init="" data-starred=""
															data-target-id="e4f52656-827e-4e07-aae1-1729b5d3573e">
														</button>

														<div class="ui_card__imgcover">
															<a href="/w/product/e4f52656-827e-4e07-aae1-1729b5d3573e"
																target="_blank" aria-label="추석선물 머랭쿠키🥮👀🥮"
																class="ui_card__img"
																data-product-id="e4f52656-827e-4e07-aae1-1729b5d3573e"
																style="background-image: url('https://image.idus.com/image/files/42038760d3fa4b41aef6aa54f2094be2_512.jpg')"
																data-was-processed="true"></a>
														</div>

														<div class="ui_card__info">
															<a href="/w/artist/192d5628-71e8-4662-a861-689ee546e81c"
																class="ui_card__label" target="_blank">디저트미닛</a> <a
																href="/w/product/e4f52656-827e-4e07-aae1-1729b5d3573e"
																class="ui_card__title"
																data-product-id="e4f52656-827e-4e07-aae1-1729b5d3573e"
																target="_blank">추석선물 머랭쿠키🥮👀🥮</a>
														</div>

														<div class="ui_card__rating">
															<div class="ui_card__vcenter">
																<div class="ui_rating" data-ui="rating" data-value="5">
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																</div>
															</div>

															<span class="ui_card__comment">11개 시켜서 직장상사분들도 드리고
																부모님들 챙겨드렸는데 엄청좋아하셨어요 서비스로 엄청 주셨는데, 주신거 한개 먹어봤는데 많이 달지도
																않고 계속 손이 가더라구요 결국 혼자 한박스 먹은것같아요...ㅎㅎ 밑에 과자랑 조합도 좋아요
																👍🏻👍🏻</span>
														</div>
													</div>
												</div>
											</li>
											<li class="ui_grid__item">
												<div class="card-add-icon">
													<em class="icon-num" data-ranking="7">7</em>
													<div class="ui_card">
														<button type="button"
															class="ui_card__overlay btn-ico sp-icon icon-favorite"
															data-name="starred-toolbar" data-starred-type="product"
															data-init="" data-starred=""
															data-target-id="9fcb2152-cb02-490c-b839-dba81c66e160">
														</button>

														<div class="ui_card__imgcover">
															<a href="/w/product/9fcb2152-cb02-490c-b839-dba81c66e160"
																target="_blank"
																aria-label="7일출고 추석선물🎁❣디디얌 마카롱 수제 뚱카롱 24종"
																class="ui_card__img"
																data-product-id="9fcb2152-cb02-490c-b839-dba81c66e160"
																style="background-image: url('https://image.idus.com/image/files/78815aa1431e4befa7545613b8794bce_512.jpg')"
																data-was-processed="true"></a>
														</div>

														<div class="ui_card__info">
															<a href="/w/artist/6c50c76e-d7df-437c-acd6-a95aaba517a1"
																class="ui_card__label" target="_blank">디디얌</a> <a
																href="/w/product/9fcb2152-cb02-490c-b839-dba81c66e160"
																class="ui_card__title"
																data-product-id="9fcb2152-cb02-490c-b839-dba81c66e160"
																target="_blank">7일출고 추석선물🎁❣디디얌 마카롱 수제 뚱카롱 24종</a>
														</div>

														<div class="ui_card__rating">
															<div class="ui_card__vcenter">
																<div class="ui_rating" data-ui="rating" data-value="5">
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																</div>
															</div>

															<span class="ui_card__comment">무난해요 그냥.... 가격값하는 것
																같았어요 꼬끄부터 너무 아쉬웠던... 😢</span>
														</div>
													</div>
												</div>
											</li>
											<li class="ui_grid__item">
												<div class="card-add-icon">
													<em class="icon-num" data-ranking="8">8</em>
													<div class="ui_card">
														<button type="button"
															class="ui_card__overlay btn-ico sp-icon icon-favorite"
															data-name="starred-toolbar" data-starred-type="product"
															data-init="" data-starred=""
															data-target-id="eec15f2e-a4b5-4ea8-9c8e-219d017519be">
														</button>

														<div class="ui_card__imgcover">
															<a href="/w/product/eec15f2e-a4b5-4ea8-9c8e-219d017519be"
																target="_blank" aria-label="[그릭데이]그릭요거트 시그니처 600g"
																class="ui_card__img"
																data-product-id="eec15f2e-a4b5-4ea8-9c8e-219d017519be"
																style="background-image: url('https://image.idus.com/image/files/57d1c4bcbaa1441f858f52a41031f4b1_512.png')"
																data-was-processed="true"></a>
														</div>

														<div class="ui_card__info">
															<a href="/w/artist/8b2faef3-aae7-4019-bdc7-fa420e4a881b"
																class="ui_card__label" target="_blank">그릭데이</a> <a
																href="/w/product/eec15f2e-a4b5-4ea8-9c8e-219d017519be"
																class="ui_card__title"
																data-product-id="eec15f2e-a4b5-4ea8-9c8e-219d017519be"
																target="_blank">[그릭데이]그릭요거트 시그니처 600g</a>
														</div>

														<div class="ui_card__rating">
															<div class="ui_card__vcenter">
																<div class="ui_rating" data-ui="rating" data-value="5">
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																</div>
															</div>

															<span class="ui_card__comment">빠른배송도 좋고 그릭요거트도
																신선하고 맛나요</span>
														</div>
													</div>
												</div>
											</li>
											<li class="ui_grid__item">
												<div class="card-add-icon">
													<em class="icon-num" data-ranking="9">9</em>
													<div class="ui_card">
														<button type="button"
															class="ui_card__overlay btn-ico sp-icon icon-favorite"
															data-name="starred-toolbar" data-starred-type="product"
															data-init="" data-starred=""
															data-target-id="ee8b572a-9ba8-4288-81bb-a939ad7f106e">
														</button>

														<div class="ui_card__imgcover">
															<a href="/w/product/ee8b572a-9ba8-4288-81bb-a939ad7f106e"
																target="_blank" aria-label="[추석]시즌판매 달콤시원 🫒샤인머스캣 망개떡🫒"
																class="ui_card__img"
																data-product-id="ee8b572a-9ba8-4288-81bb-a939ad7f106e"
																style="background-image: url('https://image.idus.com/image/files/c5431ecfad0f466a9fc55573d5ded9f5_512.jpg')"
																data-was-processed="true"></a>
														</div>

														<div class="ui_card__info">
															<a href="/w/artist/0a25b0a9-08d9-42d0-be77-b24733437036"
																class="ui_card__label" target="_blank">2대가함께하는 망개떡
																창원생과방</a> <a
																href="/w/product/ee8b572a-9ba8-4288-81bb-a939ad7f106e"
																class="ui_card__title"
																data-product-id="ee8b572a-9ba8-4288-81bb-a939ad7f106e"
																target="_blank">[추석]시즌판매 달콤시원 🫒샤인머스캣 망개떡🫒</a>
														</div>

														<div class="ui_card__rating">
															<div class="ui_card__vcenter">
																<div class="ui_rating" data-ui="rating" data-value="5">
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																</div>
															</div>

															<span class="ui_card__comment">너무 맛있었어요 엥
																샤인머스켓??이랬는데 전 개인적으로 딸기보다는 이쪽에 더 손을 들어주고 싶네요! 엄마도 달지도 않고
																너무 맛있다고 하시더라구요~</span>
														</div>
													</div>
												</div>
											</li>
											<li class="ui_grid__item">
												<div class="card-add-icon">
													<em class="icon-num" data-ranking="10">10</em>
													<div class="ui_card">
														<button type="button"
															class="ui_card__overlay btn-ico sp-icon icon-favorite"
															data-name="starred-toolbar" data-starred-type="product"
															data-init="" data-starred=""
															data-target-id="f3cf2036-1394-42f5-8dc1-94e43db5222d">
														</button>

														<div class="ui_card__imgcover">
															<a href="/w/product/f3cf2036-1394-42f5-8dc1-94e43db5222d"
																target="_blank" aria-label="🐤🐤🐤미니오리마들렌12개한세트🐥🐥🐣🐣"
																class="ui_card__img"
																data-product-id="f3cf2036-1394-42f5-8dc1-94e43db5222d"
																style="background-image: url('https://image.idus.com/image/files/d8e8f99077b74b9e8b4d15fb1424968b_512.jpg')"
																data-was-processed="true"></a>
														</div>

														<div class="ui_card__info">
															<a href="/w/artist/7cb1359b-5456-456a-bba6-c860b5c1f1ff"
																class="ui_card__label" target="_blank">뽀리수제쿠키 앤 수제청</a>
															<a href="/w/product/f3cf2036-1394-42f5-8dc1-94e43db5222d"
																class="ui_card__title"
																data-product-id="f3cf2036-1394-42f5-8dc1-94e43db5222d"
																target="_blank">🐤🐤🐤미니오리마들렌12개한세트🐥🐥🐣🐣</a>
														</div>

														<div class="ui_card__rating">
															<div class="ui_card__vcenter">
																<div class="ui_rating" data-ui="rating" data-value="5">
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																	<i class="idus-icon-star-fill" data-state="active"></i>
																</div>
															</div>

															<span class="ui_card__comment">넘 귀여워요ㅋㅋ눈이 초코칩이네요.♡
																구매수량 변경하려고 취소요청도 했는데 빨리 해주셔서 감사했어요.</span>
														</div>
													</div>
												</div>
											</li>
										</ul>
						</div>
					</div>
				</div>
				<a href="/w/main/popular-category" class="ui_btn--large">인기작품
					더보기</a>
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
