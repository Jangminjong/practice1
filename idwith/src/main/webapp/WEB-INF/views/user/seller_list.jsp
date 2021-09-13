<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="resources/css/seller_list.css">
<link rel="stylesheet" href="resources/css/common.css">
<link rel="stylesheet" href="resources/css/idus.web.min.css">
<link rel="stylesheet" href="resources/css/vendor.client.min.css">
</head>
<body>
	<jsp:include page="header_goods.jsp" />
	<div id="content" class="content" data-gnb-show="true">
		<section class="banner-title" data-image="type1" data-theme="orange">
			<h1>인기작가</h1>
			<p>많은 사람들의 인기를 받고 있는 작가님을 소개합니다.</p>
		</section>

		<div class="inner-w">
			<!-- 인기작가 탭 -->
			<fieldset class="tab-control-style2">
				<a href="seller_list.do" class="active">인기작가</a>
			</fieldset>

			<!-- artist-list -->
			<ul class="artist-list" data-ui="scroll-paging" data-param="2">
				<li class="artist-list-item">
					<div class="card-style-profile ">
						<em class="icon-num" data-ranking="1">1</em>
						<div class="bordering">
							<div class="split">
								<div class="img-bg"
									style="background-image: url(https://image.idus.com/image/files/3714e211ace64e2ea2787e771d0579aa_720.jpg);">
								</div>
								<a class="img-profile"
									style="background-image: url(https://image.idus.com/image/files/bdece9bfe4bc4cb6bd23f7e4f90fd92e_320.jpg);"
									target="_blank"
									href="seller_goods.do">
								</a>
							</div>
							<div class="split">
								<div class="area-txt">
									<a
										href="seller_goods.do"
										class="title" target="_blank">시루아네</a>
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
									<p class="desc">米에 美를 더하다 한국의 맛을 아시아의 마음으로 담아 글로벌 디저트로 나아가는
										K-디저트의 대표 브랜드 입니다</p>
								</div>
								<div class="area-btns">
									<div class="col">
										<a href="#" class="btn btn-s btn-white toggle-heart"
											data-name="starred-toolbar" data-starred-type="artist"
											data-init="" data-starred="" target="_blank"
											data-target-id="3d6bb4d7-6a97-4d42-b76f-83e75e1c8075"> <em
											class="txt"><i class="idus-icon-plus"
												style="font-size: 12px;"></i> 팔로우</em> <em class="txt active"><i
												class="idus-icon-check" style="font-size: 12px;"></i> 팔로잉</em>
										</a>
									</div>
									<div class="col popular-artist-col">
										<a class="btn btn-s btn-white" target="_blank"
											href="seller_goods.do">
											작품 더보기 </a>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="ui-slider-fullbtn links-to" data-ui="slider"
						tabindex="-1"
						style="touch-action: pan-y; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
						<div class="outer-frame">
							<ul class="inner-frame">
								<li class="ui-slide" data-index="0" style="width: 673px;">
									<a href="detail_content.do"
									class="img-bg" target="_blank"
									data-original="http://image.idus.com/image/files/16923dfff30f4e42a2dd964ce3ce75f7_320.jpg"
									data-product-id="82fb28c8-7e6a-444f-b375-19fa10f464ae"
									style="background-image: url('http://image.idus.com/image/files/16923dfff30f4e42a2dd964ce3ce75f7_320.jpg')"></a>
									<a href="detail_content.do"
									class="img-bg" target="_blank"
									data-original="https://image.idus.com/image/files/85e4924d54db42f8b9aae200fb741ce3_320.png"
									data-product-id="b772e5e8-345f-478b-ac62-a4300982bdb6"
									style="background-image: url('https://image.idus.com/image/files/85e4924d54db42f8b9aae200fb741ce3_320.png')"></a>
									<a href="detail_content.do"
									class="img-bg" target="_blank"
									data-original="https://image.idus.com/image/files/7c7abeb01301497b8bdd81b71e654b94_320.jpg"
									data-product-id="046e334b-6b1d-451b-972a-a1601034f9f4"
									style="background-image: url('https://image.idus.com/image/files/7c7abeb01301497b8bdd81b71e654b94_320.jpg')"></a>
									<a href="detail_content.do"
									class="img-bg" target="_blank"
									data-original="http://image.idus.com/image/files/1c1a77e6221e43cb87d2ce01ae6a1288_320.jpg"
									data-product-id="ccbfbc67-578b-4379-b212-ce00c4adb118"
									style="background-image: url('http://image.idus.com/image/files/1c1a77e6221e43cb87d2ce01ae6a1288_320.jpg')"></a>
								</li>
								<li class="ui-slide" data-index="1"
									style="width: 0px; display: none;"><a
									href="detail_content.do"
									class="img-bg" target="_blank"
									data-original="https://image.idus.com/image/files/ea20b78adf704598b02236190d334371_320.jpg"
									data-product-id="c7bf22aa-e120-48cd-9ddc-95d633420ce1"
									style="background-image: url('https://image.idus.com/image/files/ea20b78adf704598b02236190d334371_320.jpg')"></a>
									<a href="detail_content.do"
									class="img-bg" target="_blank"
									data-original="https://image.idus.com/image/files/8b66a5a53be949f9b0a12c9c0a6770ee_320.jpg"
									data-product-id="669bf41b-9bb2-426e-bc18-e20581400ad6"
									style="background-image: url('https://image.idus.com/image/files/8b66a5a53be949f9b0a12c9c0a6770ee_320.jpg')"></a>
									<a href="detail_content.do"
									class="img-bg" target="_blank"
									data-original="https://image.idus.com/image/files/8ddf57a6179d49d79b6187777734e864_320.png"
									data-product-id="de343170-c42b-4d08-b3dc-93d0dc566516"
									style="background-image: url('https://image.idus.com/image/files/8ddf57a6179d49d79b6187777734e864_320.png')"></a>
									<a href="detail_content.do"
									class="img-bg" target="_blank"
									data-original="http://image.idus.com/image/files/6695f577ae9949a1aef387e53fce0a88_320.jpg"
									data-product-id="55ca6103-0a64-42d4-b5ed-945b2aa9b21f"
									style="background-image: url('http://image.idus.com/image/files/6695f577ae9949a1aef387e53fce0a88_320.jpg')"></a>
								</li>
							</ul>
						</div>
						<fieldset class="ui-control" data-ui="slider-control"
							style="display: block;">
							<button type="button" class="ui-btn prev" aria-label="이전">
								<i class="fa fa-angle-left fa-2x"></i>
							</button>
							<nav class="indicator">
								<button class="indicator-btn active" type="button"
									aria-label="indicator"></button>
								<button class="indicator-btn" type="button"
									aria-label="indicator"></button>
								<button class="indicator-btn" type="button"
									aria-label="indicator"></button>
							</nav>
							<button type="button" class="ui-btn next" aria-label="다음">
								<i class="fa fa-angle-right fa-2x"></i>
							</button>
						</fieldset>
					</div>
				</li>
				
				
				<li class="artist-list-item">
					<div class="card-style-profile ">
						<div class="bordering">
							<div class="split">
								<div class="img-bg"
									style="background-image: url(https://image.idus.com/image/files/fa56bf30d3c141988d9c91da4eb115aa_720.jpg);">
								</div>
								<a class="img-profile"
									style="background-image: url(https://image.idus.com/image/files/a853aee0a48b45e3a9cb08c006e545c4_320.jpg);"
									target="_blank"
									href="seller_goods.do">
								</a>
							</div>
							<div class="split">
								<div class="area-txt">
									<a
										href="seller_goods.do"
										class="title" target="_blank">다우랑</a>
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
									<p class="desc">✔️줄서서 먹는 수제만두 맛집 🥟 ✔️얼리지 않은 프리미엄 수제만두✋🏻
										✔️건강한 재료로 정성 가득 넣어 손수 만듭니다.</p>
								</div>
								<div class="area-btns">
									<div class="col">
										<a href="#" class="btn btn-s btn-white toggle-heart"
											data-name="starred-toolbar" data-starred-type="artist"
											data-init="" data-starred="" target="_blank"
											data-target-id="f9750b31-e996-4835-9779-5967ba054ad5"> <em
											class="txt"><i class="idus-icon-plus"
												style="font-size: 12px;"></i> 팔로우</em> <em class="txt active"><i
												class="idus-icon-check" style="font-size: 12px;"></i> 팔로잉</em>
										</a>
									</div>
									<div class="col popular-artist-col">
										<a class="btn btn-s btn-white" target="_blank"
											href="seller_goods.do">
											작품 더보기 </a>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="ui-slider-fullbtn links-to" data-ui="slider"
						tabindex="-1"
						style="touch-action: pan-y; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
						<div class="outer-frame">
							<ul class="inner-frame">
								<li class="ui-slide" data-index="0" style="width: 673px;">
									<a href="detail_content.do"
									class="img-bg" target="_blank"
									data-original="https://image.idus.com/image/files/6ab157cb03e8407890bbfe4b05749d44_320.jpg"
									data-product-id="cbfda0ce-8f63-4f8c-b8f1-769aa8a32676"
									style="background-image: url('https://image.idus.com/image/files/6ab157cb03e8407890bbfe4b05749d44_320.jpg')"></a>
									<a href="detail_content.do"
									class="img-bg" target="_blank"
									data-original="https://image.idus.com/image/files/4a35bbe69c024b3491ef12358b2bcf1f_320.jpg"
									data-product-id="0b990ab9-0697-49d6-8ab7-0561907a2344"
									style="background-image: url('https://image.idus.com/image/files/4a35bbe69c024b3491ef12358b2bcf1f_320.jpg')"></a>
									<a href="detail_content.do"
									class="img-bg" target="_blank"
									data-original="https://image.idus.com/image/files/3909b98327a24d8ab82ca5e63087ad66_320.jpg"
									data-product-id="25ba245f-2ef8-429c-b947-f501d7fadef7"
									style="background-image: url('https://image.idus.com/image/files/3909b98327a24d8ab82ca5e63087ad66_320.jpg')"></a>
									<a href="detail_content.do"
									class="img-bg" target="_blank"
									data-original="https://image.idus.com/image/files/5d25453506c0492180544cab7e9a73e1_320.jpg"
									data-product-id="8c8404b3-3d7e-43f2-90f6-a6d44a150c74"
									style="background-image: url('https://image.idus.com/image/files/5d25453506c0492180544cab7e9a73e1_320.jpg')"></a>
								</li>
								<li class="ui-slide" data-index="1" style="width: 673px;">
									<a href="detail_content.do"
									class="img-bg" target="_blank"
									data-original="https://image.idus.com/image/files/d0d2f66cddeb45339eaee1c8fedbae78_320.jpg"
									data-product-id="195b42a2-9e63-4888-95af-671bb01b1d39"
									style="background-image: url('https://image.idus.com/image/files/d0d2f66cddeb45339eaee1c8fedbae78_320.jpg')"></a>
									<a href="detail_content.do"
									class="img-bg" target="_blank"
									data-original="https://image.idus.com/image/files/ba79ee2774f042a9806d0b08203d6b06_320.jpg"
									data-product-id="08e2a691-67c4-4104-a25a-707cc07b5f5d"
									style="background-image: url('https://image.idus.com/image/files/ba79ee2774f042a9806d0b08203d6b06_320.jpg')"></a>
									<a href="detail_content.do"
									class="img-bg" target="_blank"
									data-original="https://image.idus.com/image/files/c5906b58860b4cf0bf79e97dc3e7503e_320.png"
									data-product-id="64bfe33a-ff75-4d1c-a92d-fd400077282f"
									style="background-image: url('https://image.idus.com/image/files/c5906b58860b4cf0bf79e97dc3e7503e_320.png')"></a>
									<a href="detail_content.do"
									class="img-bg" target="_blank"
									data-original="https://image.idus.com/image/files/9db2ab0e894d43faa48ac10969b6a5c7_320.jpg"
									data-product-id="ed15423f-5842-478f-8011-aa9d3888fe31"
									style="background-image: url('https://image.idus.com/image/files/9db2ab0e894d43faa48ac10969b6a5c7_320.jpg')"></a>
								</li>
								<li class="ui-slide" data-index="2" style="width: 673px;">
									<a href="detail_content.do"
									class="img-bg" target="_blank"
									data-original="https://image.idus.com/image/files/7e49146f42bc4447bb0949c44751ec01_320.jpg"
									data-product-id="df1ec3ff-f600-44ea-9531-a2c0d08d86b9"
									style="background-image: url('https://image.idus.com/image/files/7e49146f42bc4447bb0949c44751ec01_320.jpg')"></a>
									<a href="detail_content.do"
									class="img-bg" target="_blank"
									data-original="https://image.idus.com/image/files/183bd92c3f0b48b5995f6dca48d4aef7_320.jpg"
									data-product-id="8109e05e-b758-447a-ab24-6dfb11c65a97"
									style="background-image: url('https://image.idus.com/image/files/183bd92c3f0b48b5995f6dca48d4aef7_320.jpg')"></a>
									<a href="detail_content.do"
									class="img-bg" target="_blank"
									data-original="https://image.idus.com/image/files/0a84d215a11e4975aa9dfa889a54d8ba_320.jpg"
									data-product-id="f9841d58-4829-4ad2-972c-3202aa72c34d"
									style="background-image: url('https://image.idus.com/image/files/0a84d215a11e4975aa9dfa889a54d8ba_320.jpg')"></a>
									<a href="detail_content.do"
									class="img-bg" target="_blank"
									data-original="https://image.idus.com/image/files/e18db0865cff458fa3a6f7bd74ac4958_320.jpg"
									data-product-id="f276c821-4d85-494c-9d8d-16a34bcaa03d"
									style="background-image: url('https://image.idus.com/image/files/e18db0865cff458fa3a6f7bd74ac4958_320.jpg')"></a>
								</li>
							</ul>
						</div>
						<fieldset class="ui-control" data-ui="slider-control"
							style="display: block;">
							<button type="button" class="ui-btn prev" aria-label="이전">
								<i class="fa fa-angle-left fa-2x"></i>
							</button>
							<nav class="indicator">
								<button class="indicator-btn active" type="button"
									aria-label="indicator"></button>
								<button class="indicator-btn" type="button"
									aria-label="indicator"></button>
								<button class="indicator-btn" type="button"
									aria-label="indicator"></button>
							</nav>
							<button type="button" class="ui-btn next" aria-label="다음">
								<i class="fa fa-angle-right fa-2x"></i>
							</button>
						</fieldset>
					</div>
				</li>

			</ul>

			<!--// artist-list -->
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>