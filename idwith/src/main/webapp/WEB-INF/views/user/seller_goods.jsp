<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="resources/css/seller_goods.css">
<link rel="stylesheet" href="resources/css/common.css">
<link rel="stylesheet" href="resources/css/idus.web.min.css">
<link rel="stylesheet" href="resources/css/vendor.client.min.css">
</head>
<body>
	<jsp:include page="header_goods.jsp" />
	<section class="artist-contents">
	<jsp:include page="seller_main.jsp" />
		<div data-v-825a8b32="">
			<div data-v-825a8b32="" data-trigger-detail="true"></div>
			<div data-v-825a8b32="" data-trigger="fixposition"></div>
			<nav data-v-825a8b32="" data-ui="artist-home-tab-control"
				class="tab-group">
				<a data-v-825a8b32=""
					href="seller_profile.do"
					class="tab">프로필</a> <a data-v-825a8b32=""
					href="seller_story.do"
					class="tab">스토리</a> <a data-v-825a8b32=""
					href="seller_goods.do"
					class="tab active">판매작품</a> <a data-v-825a8b32=""
					href="seller_class.do"
					class="tab">클래스</a> <a data-v-825a8b32=""
					href="seller_review.do"
					class="tab">구매후기</a>
			</nav>
		</div>
		<div class="contents-container">
			<div data-v-62c8a401="">
				<div data-v-86e49a34="" data-v-62c8a401=""
					class="ArtistDesktopProductFilter">
					<div data-v-86e49a34=""
						class="ArtistDesktopProductFilte__filterTop"
						style="border-bottom: 1px solid rgb(217, 217, 217);">
						<button data-v-08fc3558="" data-v-86e49a34=""
							class="only-img-button">
							<div data-v-08fc3558="" class="only-img-button-box">
								<div data-v-5e27c696="" data-v-08fc3558="" class="checkbox">
									<div data-v-5e27c696="" class="input-checkbox">
										<input data-v-5e27c696="" id="" type="checkbox"
											autocomplete="off" class="bp" value="false">
									</div>
									<!---->
								</div>
								<p data-v-08fc3558="" class="only-img-button-text margin-left ">
									이미지만 볼래요</p>
							</div>
						</button>
						<!---->
						<div data-v-86e49a34="" class="ArtistDesktopProductFilter_Right">
							<div data-v-86e49a34=""
								class="ArtistDesktopProductFilter__sortSelector">
								<div data-v-4dfbe33c="" data-v-86e49a34=""
									class="SingleSelector">
									<div data-v-4b6162e7="" data-v-4dfbe33c="" class="BaseSelector">
										<select data-v-4b6162e7="" class="BaseSelector__selector"></select>
										<button data-v-4b6162e7="" type="button"
											class="BaseSelector__triggerButton">
											<span data-v-4b6162e7="" class="BaseSelector__selectedItem">인기순</span>
											<i data-v-4b6162e7="" class="ui-icon fa fa-chevron-down"></i>
										</button>
										<ul data-v-4b6162e7="" class="BaseSelector__optionItemList">
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
							<button data-v-86e49a34=""
								class="ArtistDesktopProductFilter__filterBtn"
								style="border: 1px solid rgb(217, 217, 217);">
								필터 <i data-v-86e49a34="" class="idus-icon-filter"></i> <i
									data-v-86e49a34="" class="idus-icon-arrow down"></i>
								<!---->
							</button>
						</div>
					</div>
					<!---->
				</div>
				<div data-v-62c8a401="" class="SearchArea">
					<p data-v-62c8a401="" class="items-size">
						<strong data-v-62c8a401="">53</strong>개의 판매작품
					</p>
					<div data-v-62c8a401="" class="search-section">
						<input data-v-62c8a401="" type="text" placeholder="작가님의 작품 검색"
							class="search-input"> <i data-v-62c8a401=""
							class="idus-icon-search"></i>
					</div>
				</div>
				<div data-v-38f53920="" data-v-62c8a401="" class="ui_grid mt10">
					<div data-v-38f53920="" class="ui_grid__cols--4">
						<div data-v-38f53920="" class="ui_grid__item">
							<div data-v-796f1feb="" data-v-38f53920=""
								class="base-card card--vertical product">
								<a data-v-796f1feb=""
									href="detail_content.do"
									target="_blank"><div data-v-796f1feb=""
										class="card-thumb-cover">
										<div data-v-796f1feb=""
											id="thumb-c8db523c-6f5a-4d60-831c-6cccab96a347"
											class="product-thumb-img"
											style="background-image: url(&quot;https://image.idus.com/image/files/4caa0829dd5a4a8a98bceae3db6373a9_512.jpg&quot;);"></div>
										<div data-v-796f1feb="" class="product-bookmark">
											<button data-v-488f5f82="" aria-label="찜하기"
												class="full-button" data-v-796f1feb=""
												style="width: 24px; height: 24px;">
												<i data-v-488f5f82="" class="sp-icon icon-favorite"></i>
											</button>
										</div>
									</div>
									<div data-v-796f1feb="" class="card-info product-info">
										<div data-v-796f1feb="" class="product-info__artist-name">
											초은농장</div>
										<div data-v-796f1feb="" class="product-info__name">
											13일발송🏅무항생제 돈마호크☆시즈닝o☆홈파티캠핑바베큐</div>
										<div data-v-796f1feb="" class="product-info__price">
											<span data-v-796f1feb="" class="sale-rate"> 22% </span> <span
												data-v-796f1feb="" class="price-sale"> 13,200 <span
												data-v-796f1feb="" style="font-size: 14px;">원</span></span>
											<div data-v-796f1feb="" class="price-origin--before-sale">
												<del data-v-796f1feb="">17,000원</del>
											</div>
										</div>
										<div data-v-796f1feb="" class="product-info__badge-group"
											style="margin-top: 12px;">
											<div data-v-2f2bc7d4="" class="badge badge-food"
												data-v-796f1feb="">안전식품</div>
										</div>
										<div data-v-796f1feb="" class="product-info__review">
											<div data-v-796f1feb="" class="review-rating">
												<span data-v-ef94db98="" data-value="4.9"
													class="ui_rating fr" data-v-796f1feb=""><i
													data-v-ef94db98="" data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i></span> <span data-v-796f1feb=""
													class="review-count"> (67) </span>
											</div>
											<div data-v-796f1feb="" class="review-comment">
												<div data-v-796f1feb="" class="review-comment__badge">
													후기</div>
												<div data-v-796f1feb="" class="review-comment__contents">
													오랜만에 베란다에서 캠핑 기분 내면서 먹었는데 너무 맛있게 잘먹었습니다. 캠핑갈때 가지고가면 간편하고너무
													좋을것같아서 바로 재주문 들어갑니당.</div>
											</div>
										</div>
									</div></a>
							</div>
						</div>
						<div data-v-38f53920="" class="ui_grid__item">
							<div data-v-796f1feb="" data-v-38f53920=""
								class="base-card card--vertical product">
								<a data-v-796f1feb=""
									href="detail_content.do"
									target="_blank"><div data-v-796f1feb=""
										class="card-thumb-cover">
										<div data-v-796f1feb=""
											id="thumb-c4a8211c-fee9-4154-b564-392bcfe63b37"
											class="product-thumb-img"
											style="background-image: url(&quot;https://image.idus.com/image/files/d3c9f8942eca46dba77148969dc36e6d_512.jpg&quot;);"></div>
										<div data-v-796f1feb="" class="product-bookmark">
											<button data-v-488f5f82="" aria-label="찜하기"
												class="full-button" data-v-796f1feb=""
												style="width: 24px; height: 24px;">
												<i data-v-488f5f82="" class="sp-icon icon-favorite"></i>
											</button>
										</div>
									</div>
									<div data-v-796f1feb="" class="card-info product-info">
										<div data-v-796f1feb="" class="product-info__artist-name">
											초은농장</div>
										<div data-v-796f1feb="" class="product-info__name">
											추석할인💗건강한💗한우암소🐮무항생돼지 수제떡갈비👍</div>
										<div data-v-796f1feb="" class="product-info__price">
											<span data-v-796f1feb="" class="sale-rate"> 20% </span> <span
												data-v-796f1feb="" class="price-sale"> 5,200 <span
												data-v-796f1feb="" style="font-size: 14px;">원</span></span>
											<div data-v-796f1feb="" class="price-origin--before-sale">
												<del data-v-796f1feb="">6,500원</del>
											</div>
										</div>
										<div data-v-796f1feb="" class="product-info__badge-group"
											style="margin-top: 12px;">
											<div data-v-2f2bc7d4="" class="badge badge-food"
												data-v-796f1feb="">안전식품</div>
										</div>
										<div data-v-796f1feb="" class="product-info__review">
											<div data-v-796f1feb="" class="review-rating">
												<span data-v-ef94db98="" data-value="4.9"
													class="ui_rating fr" data-v-796f1feb=""><i
													data-v-ef94db98="" data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i></span> <span data-v-796f1feb=""
													class="review-count"> (339) </span>
											</div>
											<div data-v-796f1feb="" class="review-comment">
												<div data-v-796f1feb="" class="review-comment__badge">
													후기</div>
												<div data-v-796f1feb="" class="review-comment__contents">
													제가 배송지를 잘못 써서 배송에 좀 문제가 있었는데 배송지 변경해주셔서 잘받았어요. 완전 해동되어있어서
													받자마자 구어먹었는데 맛있었어요 ㅠㅠ 전에 돈까스 맛있게 먹었는데 떡갈비도 맛있어요! 사장님도 신속하게
													문제 해결에 나서주셨어요. 잘먹겠습니다. 감사합니다 😊</div>
											</div>
										</div>
									</div></a>
							</div>
						</div>
						<div data-v-38f53920="" class="ui_grid__item">
							<div data-v-796f1feb="" data-v-38f53920=""
								class="base-card card--vertical product">
								<a data-v-796f1feb=""
									href="detail_content.do"
									target="_blank"><div data-v-796f1feb=""
										class="card-thumb-cover">
										<div data-v-796f1feb=""
											id="thumb-b126ac0a-3662-4841-81f3-06fb1b77115d"
											class="product-thumb-img"
											style="background-image: url(&quot;https://image.idus.com/image/files/c7c40d06308040e091569bd9c9f4a761_512.jpg&quot;);"></div>
										<div data-v-796f1feb="" class="product-bookmark">
											<button data-v-488f5f82="" aria-label="찜하기"
												class="full-button" data-v-796f1feb=""
												style="width: 24px; height: 24px;">
												<i data-v-488f5f82="" class="sp-icon icon-favorite"></i>
											</button>
										</div>
									</div>
									<div data-v-796f1feb="" class="card-info product-info">
										<div data-v-796f1feb="" class="product-info__artist-name">
											초은농장</div>
										<div data-v-796f1feb="" class="product-info__name">
											🏅무항생제 돼지 목살🐷건강하게 먹자👍쫄깃싱싱육질</div>
										<div data-v-796f1feb="" class="product-info__price">
											<span data-v-796f1feb="" class="sale-rate"> 14% </span> <span
												data-v-796f1feb="" class="price-sale"> 12,900 <span
												data-v-796f1feb="" style="font-size: 14px;">원</span></span>
											<div data-v-796f1feb="" class="price-origin--before-sale">
												<del data-v-796f1feb="">15,000원</del>
											</div>
										</div>
										<div data-v-796f1feb="" class="product-info__badge-group"
											style="margin-top: 12px;">
											<div data-v-2f2bc7d4="" class="badge badge-food"
												data-v-796f1feb="">안전식품</div>
										</div>
										<div data-v-796f1feb="" class="product-info__review">
											<div data-v-796f1feb="" class="review-rating">
												<span data-v-ef94db98="" data-value="4.9"
													class="ui_rating fr" data-v-796f1feb=""><i
													data-v-ef94db98="" data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i></span> <span data-v-796f1feb=""
													class="review-count"> (270) </span>
											</div>
											<div data-v-796f1feb="" class="review-comment">
												<div data-v-796f1feb="" class="review-comment__badge">
													후기</div>
												<div data-v-796f1feb="" class="review-comment__contents">
													고기 넘 맛있어요!!! 목살이 후기가 더 많고 좋아서 목살두팩했는데 두팩하길 잘했어요ㅜㅜㅜ 양이 많아서
													한팩도 다 못 먹었네요... 히히 살코기 부분도 뻣뻣함 1도없이 부드럽고 비계는 탱글탱글.., 미쳤어요
													진짜 목살 잘 구워두면 삼겹보다 맛있다더니 진짜 여기 목살이 그느낌이었네요 동생이 고기 어디서 샀냐고
													맛있다고 좋아하더라고요ㅎㅎ 잘 먹었어요 작가님 좋은고기 고맙습니다!!!♡♡♡♡</div>
											</div>
										</div>
									</div></a>
							</div>
						</div>
						<div data-v-38f53920="" class="ui_grid__item">
							<div data-v-796f1feb="" data-v-38f53920=""
								class="base-card card--vertical product">
								<a data-v-796f1feb=""
									href="detail_content.do"
									target="_blank"><div data-v-796f1feb=""
										class="card-thumb-cover">
										<div data-v-796f1feb=""
											id="thumb-12df6389-6f15-43ee-8254-7c6439613b34"
											class="product-thumb-img"
											style="background-image: url(&quot;https://image.idus.com/image/files/6bc7db2fd06f4d60a0433358c3729c47_512.jpg&quot;);"></div>
										<div data-v-796f1feb="" class="product-bookmark">
											<button data-v-488f5f82="" aria-label="찜하기"
												class="full-button" data-v-796f1feb=""
												style="width: 24px; height: 24px;">
												<i data-v-488f5f82="" class="sp-icon icon-favorite"></i>
											</button>
										</div>
									</div>
									<div data-v-796f1feb="" class="card-info product-info">
										<div data-v-796f1feb="" class="product-info__artist-name">
											초은농장</div>
										<div data-v-796f1feb="" class="product-info__name">
											🏅무항생제 돼지 삼겹살🐷건강하게 먹자👍껍질쫀득식감</div>
										<div data-v-796f1feb="" class="product-info__price">
											<span data-v-796f1feb="" class="sale-rate"> 9% </span> <span
												data-v-796f1feb="" class="price-sale"> 13,600 <span
												data-v-796f1feb="" style="font-size: 14px;">원</span></span>
											<div data-v-796f1feb="" class="price-origin--before-sale">
												<del data-v-796f1feb="">15,000원</del>
											</div>
										</div>
										<div data-v-796f1feb="" class="product-info__badge-group"
											style="margin-top: 12px;">
											<div data-v-2f2bc7d4="" class="badge badge-food"
												data-v-796f1feb="">안전식품</div>
										</div>
										<div data-v-796f1feb="" class="product-info__review">
											<div data-v-796f1feb="" class="review-rating">
												<span data-v-ef94db98="" data-value="4.8"
													class="ui_rating fr" data-v-796f1feb=""><i
													data-v-ef94db98="" data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i></span> <span data-v-796f1feb=""
													class="review-count"> (485) </span>
											</div>
											<div data-v-796f1feb="" class="review-comment">
												<div data-v-796f1feb="" class="review-comment__badge">
													후기</div>
												<div data-v-796f1feb="" class="review-comment__contents">
													동거인(친구)이 벌집삼겹살 엄청 좋아해사 샀는데 맛있어요 ㅎㅎㅎㅎ</div>
											</div>
										</div>
									</div></a>
							</div>
						</div>
						<div data-v-38f53920="" class="ui_grid__item">
							<div data-v-796f1feb="" data-v-38f53920=""
								class="base-card card--vertical product">
								<a data-v-796f1feb=""
									href="detail_content.do"
									target="_blank"><div data-v-796f1feb=""
										class="card-thumb-cover">
										<div data-v-796f1feb=""
											id="thumb-ebfbd685-83db-4048-b17f-1af90e38ffca"
											class="product-thumb-img"
											style="background-image: url(&quot;https://image.idus.com/image/files/c83ad50150df44a09d70514916d0bd93_512.png&quot;);"></div>
										<div data-v-796f1feb="" class="product-bookmark">
											<button data-v-488f5f82="" aria-label="찜하기"
												class="full-button" data-v-796f1feb=""
												style="width: 24px; height: 24px;">
												<i data-v-488f5f82="" class="sp-icon icon-favorite"></i>
											</button>
										</div>
									</div>
									<div data-v-796f1feb="" class="card-info product-info">
										<div data-v-796f1feb="" class="product-info__artist-name">
											초은농장</div>
										<div data-v-796f1feb="" class="product-info__name">
											🔥1+1할인🔥13일 발송🔆한우진한 사골곰국🔆곰탕</div>
										<div data-v-796f1feb="" class="product-info__price">
											<span data-v-796f1feb="" class="sale-rate"> 28% </span> <span
												data-v-796f1feb="" class="price-sale"> 7,200 <span
												data-v-796f1feb="" style="font-size: 14px;">원</span></span>
											<div data-v-796f1feb="" class="price-origin--before-sale">
												<del data-v-796f1feb="">10,000원</del>
											</div>
										</div>
										<div data-v-796f1feb="" class="product-info__badge-group"
											style="margin-top: 12px;">
											<div data-v-2f2bc7d4="" class="badge badge-food"
												data-v-796f1feb="">안전식품</div>
										</div>
										<div data-v-796f1feb="" class="product-info__review">
											<div data-v-796f1feb="" class="review-rating">
												<span data-v-ef94db98="" data-value="4.8"
													class="ui_rating fr" data-v-796f1feb=""><i
													data-v-ef94db98="" data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i></span> <span data-v-796f1feb=""
													class="review-count"> (264) </span>
											</div>
											<div data-v-796f1feb="" class="review-comment">
												<div data-v-796f1feb="" class="review-comment__badge">
													후기</div>
												<div data-v-796f1feb="" class="review-comment__contents">
													시골에계시는 아버지께보내는거라 보지는못했어요. 배송도빨랐고 잘드셨다고 하셨어요</div>
											</div>
										</div>
									</div></a>
							</div>
						</div>
						<div data-v-38f53920="" class="ui_grid__item">
							<div data-v-796f1feb="" data-v-38f53920=""
								class="base-card card--vertical product">
								<a data-v-796f1feb=""
									href="detail_content.do"
									target="_blank"><div data-v-796f1feb=""
										class="card-thumb-cover">
										<div data-v-796f1feb=""
											id="thumb-7b0152de-57ff-45de-93e6-cf10c6041a28"
											class="product-thumb-img"
											style="background-image: url(&quot;https://image.idus.com/image/files/2d5ba4bf2d1e4133a2f6f4b85155d31e_512.jpg&quot;);"></div>
										<div data-v-796f1feb="" class="product-bookmark">
											<button data-v-488f5f82="" aria-label="찜하기"
												class="full-button" data-v-796f1feb=""
												style="width: 24px; height: 24px;">
												<i data-v-488f5f82="" class="sp-icon icon-favorite"></i>
											</button>
										</div>
									</div>
									<div data-v-796f1feb="" class="card-info product-info">
										<div data-v-796f1feb="" class="product-info__artist-name">
											초은농장</div>
										<div data-v-796f1feb="" class="product-info__name">
											추석할인💗예약가능💗무항생제돼지세트 1호🐖고기종합</div>
										<div data-v-796f1feb="" class="product-info__price">
											<span data-v-796f1feb="" class="sale-rate"> 20% </span> <span
												data-v-796f1feb="" class="price-sale"> 55,800 <span
												data-v-796f1feb="" style="font-size: 14px;">원</span></span>
											<div data-v-796f1feb="" class="price-origin--before-sale">
												<del data-v-796f1feb="">70,000원</del>
											</div>
										</div>
										<div data-v-796f1feb="" class="product-info__badge-group"
											style="margin-top: 12px;">
											<div data-v-2f2bc7d4="" class="badge badge-food"
												data-v-796f1feb="">안전식품</div>
										</div>
										<div data-v-796f1feb="" class="product-info__review">
											<div data-v-796f1feb="" class="review-rating">
												<span data-v-ef94db98="" data-value="5" class="ui_rating fr"
													data-v-796f1feb=""><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i></span> <span data-v-796f1feb=""
													class="review-count"> (11) </span>
											</div>
											<div data-v-796f1feb="" class="review-comment">
												<div data-v-796f1feb="" class="review-comment__badge">
													후기</div>
												<div data-v-796f1feb="" class="review-comment__contents">
													전부터 눈여겨 보고 있다가 드디어 저도 구입해봤어요 ^^ 곧 부모님께서 코로나 백신2차 접종하러 가시는데
													몸보신 시켜드리기 좋은 음식이 뭐가 있을까 하다가 딱 여기! 때마침 전국에 쓰기 편하다 소문이 자자한
													회전냄비를 장만한지 얼마 안됐기에 고민없이 세트로 선택. 인기 매장이라 혹시 배송이 늦지는 않을까
													걱정했는데 다음 날 우체국 택배로 완전 빠르고 안전하게 잘 왔어요. 포장 상태도 무척 꼼꼼해서 좋았고
													무엇보다 종류가 네가지나 되어서 부모님께서 받아보시고 좋아하셨어요. 구이용 고기는 한입 크기로 썰어달라는
													요청도 흔쾌히 들어주셔서 감사합니다. 부모님께서 고기 드시면서 맛있다며 극찬하셨어요. 부모님도 저도 이제
													동네 정육점은 안가도 될 것 같아요. 맛있다고 여러번 말씀하셔서 저도 부랴부랴 저희집 몫의 고기를 구입해서
													먹어봤는데 아... 찐 고기 맛집입니다. 저는 왜 이제야 여기서 고기를 사게 된 것일까요 ㅠㅠ 지난 날들이
													너무 후회스러워요. 앞으로 고기가 먹고 싶을 때는 무조건 이 곳으로! 배송도 빠르니 하루 이틀 전에만
													주문해도 되고요. 늦은 밤 질문을 드리기도 했었는데 친절하게 응대해 주셔서 감사합니다. 자주자주 올게요.
													요즘 고기가 자주 먹고 싶어져서요. 건강하시고 번창하세요.</div>
											</div>
										</div>
									</div></a>
							</div>
						</div>
						<div data-v-38f53920="" class="ui_grid__item">
							<div data-v-796f1feb="" data-v-38f53920=""
								class="base-card card--vertical product">
								<a data-v-796f1feb=""
									href="detail_content.do"
									target="_blank"><div data-v-796f1feb=""
										class="card-thumb-cover">
										<div data-v-796f1feb=""
											id="thumb-24ed30aa-5573-4474-a803-538d3161f34b"
											class="product-thumb-img"
											style="background-image: url(&quot;https://image.idus.com/image/files/ef5f67f185054197b787dfa3e9e7be12_512.jpg&quot;);"></div>
										<div data-v-796f1feb="" class="product-bookmark">
											<button data-v-488f5f82="" aria-label="찜하기"
												class="full-button" data-v-796f1feb=""
												style="width: 24px; height: 24px;">
												<i data-v-488f5f82="" class="sp-icon icon-favorite"></i>
											</button>
										</div>
									</div>
									<div data-v-796f1feb="" class="card-info product-info">
										<div data-v-796f1feb="" class="product-info__artist-name">
											초은농장</div>
										<div data-v-796f1feb="" class="product-info__name">
											💗귀하게 키운💗1등급이상🐮한우암소 꽃살(살치살)</div>
										<div data-v-796f1feb="" class="product-info__price">
											<span data-v-796f1feb="" class="sale-rate"> 25% </span> <span
												data-v-796f1feb="" class="price-sale"> 29,900 <span
												data-v-796f1feb="" style="font-size: 14px;">원</span></span>
											<div data-v-796f1feb="" class="price-origin--before-sale">
												<del data-v-796f1feb="">40,000원</del>
											</div>
										</div>
										<div data-v-796f1feb="" class="product-info__badge-group"
											style="margin-top: 12px;">
											<div data-v-2f2bc7d4="" class="badge badge-food"
												data-v-796f1feb="">안전식품</div>
										</div>
										<div data-v-796f1feb="" class="product-info__review">
											<div data-v-796f1feb="" class="review-rating">
												<span data-v-ef94db98="" data-value="4.8"
													class="ui_rating fr" data-v-796f1feb=""><i
													data-v-ef94db98="" data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i></span> <span data-v-796f1feb=""
													class="review-count"> (41) </span>
											</div>
											<div data-v-796f1feb="" class="review-comment">
												<div data-v-796f1feb="" class="review-comment__badge">
													후기</div>
												<div data-v-796f1feb="" class="review-comment__contents">
													친정에 보내드렸어요 너무 맛있다며 할머니 칭찬하셨어요 기름기도 적고 담백하니 맛있다면서 할머니 올해92세
													십니다</div>
											</div>
										</div>
									</div></a>
							</div>
						</div>
						<div data-v-38f53920="" class="ui_grid__item">
							<div data-v-796f1feb="" data-v-38f53920=""
								class="base-card card--vertical product">
								<a data-v-796f1feb=""
									href="detail_content.do"
									target="_blank"><div data-v-796f1feb=""
										class="card-thumb-cover">
										<div data-v-796f1feb=""
											id="thumb-1414384e-4ea4-46c6-bc76-313222db587e"
											class="product-thumb-img"
											style="background-image: url(&quot;https://image.idus.com/image/files/c4cc817108cc4598865805d40c174339_512.jpg&quot;);"></div>
										<div data-v-796f1feb="" class="product-bookmark">
											<button data-v-488f5f82="" aria-label="찜하기"
												class="full-button" data-v-796f1feb=""
												style="width: 24px; height: 24px;">
												<i data-v-488f5f82="" class="sp-icon icon-favorite"></i>
											</button>
										</div>
									</div>
									<div data-v-796f1feb="" class="card-info product-info">
										<div data-v-796f1feb="" class="product-info__artist-name">
											초은농장</div>
										<div data-v-796f1feb="" class="product-info__name">
											💗귀하게 키운💗1등급이상🐮한우암소 갈비살🐮</div>
										<div data-v-796f1feb="" class="product-info__price">
											<span data-v-796f1feb="" class="sale-rate"> 25% </span> <span
												data-v-796f1feb="" class="price-sale"> 29,900 <span
												data-v-796f1feb="" style="font-size: 14px;">원</span></span>
											<div data-v-796f1feb="" class="price-origin--before-sale">
												<del data-v-796f1feb="">40,000원</del>
											</div>
										</div>
										<div data-v-796f1feb="" class="product-info__badge-group"
											style="margin-top: 12px;">
											<div data-v-2f2bc7d4="" class="badge badge-food"
												data-v-796f1feb="">안전식품</div>
										</div>
										<div data-v-796f1feb="" class="product-info__review">
											<div data-v-796f1feb="" class="review-rating">
												<span data-v-ef94db98="" data-value="5" class="ui_rating fr"
													data-v-796f1feb=""><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i></span> <span data-v-796f1feb=""
													class="review-count"> (19) </span>
											</div>
											<div data-v-796f1feb="" class="review-comment">
												<div data-v-796f1feb="" class="review-comment__badge">
													후기</div>
												<div data-v-796f1feb="" class="review-comment__contents">
													사진은 못찍었어요. 보자마자 눈이 뒤집혀서 구워먹느라.. 가격보고 맛이 없을리 없다 생각했지만 역시
													초은농장입니다.. 투뿔이고 저는 갈비살 제일 좋아하고 엊그제도 한우집에서 외식했지만 초은농장은 그에 뒤지지
													않는 맛이에요.</div>
											</div>
										</div>
									</div></a>
							</div>
						</div>
						<div data-v-38f53920="" class="ui_grid__item">
							<div data-v-796f1feb="" data-v-38f53920=""
								class="base-card card--vertical product">
								<a data-v-796f1feb=""
									href="detail_content.do"
									target="_blank"><div data-v-796f1feb=""
										class="card-thumb-cover">
										<div data-v-796f1feb=""
											id="thumb-cfc41b8d-d2dd-411b-abc9-3220af850a7c"
											class="product-thumb-img"
											style="background-image: url(&quot;https://image.idus.com/image/files/4ba9444a3b84413fab7d10adcd43926b_512.png&quot;);"></div>
										<div data-v-796f1feb="" class="product-bookmark">
											<button data-v-488f5f82="" aria-label="찜하기"
												class="full-button" data-v-796f1feb=""
												style="width: 24px; height: 24px;">
												<i data-v-488f5f82="" class="sp-icon icon-favorite"></i>
											</button>
										</div>
									</div>
									<div data-v-796f1feb="" class="card-info product-info">
										<div data-v-796f1feb="" class="product-info__artist-name">
											초은농장</div>
										<div data-v-796f1feb="" class="product-info__name">
											🏅당면증정💥고기가득💥무항생제 돼지 고추장불고기👍</div>
										<div data-v-796f1feb="" class="product-info__price">
											<span data-v-796f1feb="" class="sale-rate"> 21% </span> <span
												data-v-796f1feb="" class="price-sale"> 7,900 <span
												data-v-796f1feb="" style="font-size: 14px;">원</span></span>
											<div data-v-796f1feb="" class="price-origin--before-sale">
												<del data-v-796f1feb="">10,000원</del>
											</div>
										</div>
										<div data-v-796f1feb="" class="product-info__badge-group"
											style="margin-top: 12px;">
											<div data-v-2f2bc7d4="" class="badge badge-food"
												data-v-796f1feb="">안전식품</div>
										</div>
										<div data-v-796f1feb="" class="product-info__review">
											<div data-v-796f1feb="" class="review-rating">
												<span data-v-ef94db98="" data-value="4.8"
													class="ui_rating fr" data-v-796f1feb=""><i
													data-v-ef94db98="" data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i></span> <span data-v-796f1feb=""
													class="review-count"> (45) </span>
											</div>
											<div data-v-796f1feb="" class="review-comment">
												<div data-v-796f1feb="" class="review-comment__badge">
													후기</div>
												<div data-v-796f1feb="" class="review-comment__contents">
													지난번에 구매후기보고 구입했는데 고기가 맛있어서 재구매합니다</div>
											</div>
										</div>
									</div></a>
							</div>
						</div>
						<div data-v-38f53920="" class="ui_grid__item">
							<div data-v-796f1feb="" data-v-38f53920=""
								class="base-card card--vertical product">
								<a data-v-796f1feb=""
									href="detail_content.do"
									target="_blank"><div data-v-796f1feb=""
										class="card-thumb-cover">
										<div data-v-796f1feb=""
											id="thumb-693197fc-6162-4eea-b310-d704d863f97f"
											class="product-thumb-img"
											style="background-image: url(&quot;https://image.idus.com/image/files/31a52310ba8b4e74a616d45cc2d1d5c8_512.jpg&quot;);"></div>
										<div data-v-796f1feb="" class="product-bookmark">
											<button data-v-488f5f82="" aria-label="찜하기"
												class="full-button" data-v-796f1feb=""
												style="width: 24px; height: 24px;">
												<i data-v-488f5f82="" class="sp-icon icon-favorite"></i>
											</button>
										</div>
									</div>
									<div data-v-796f1feb="" class="card-info product-info">
										<div data-v-796f1feb="" class="product-info__artist-name">
											초은농장</div>
										<div data-v-796f1feb="" class="product-info__name">
											🏅무항생제 돼지 대패 목살,삼겹살🐷냉장대패 굿👍</div>
										<div data-v-796f1feb="" class="product-info__price">
											<span data-v-796f1feb="" class="sale-rate"> 18% </span> <span
												data-v-796f1feb="" class="price-sale"> 13,200 <span
												data-v-796f1feb="" style="font-size: 14px;">원</span></span>
											<div data-v-796f1feb="" class="price-origin--before-sale">
												<del data-v-796f1feb="">16,000원</del>
											</div>
										</div>
										<div data-v-796f1feb="" class="product-info__badge-group"
											style="margin-top: 12px;">
											<div data-v-2f2bc7d4="" class="badge badge-food"
												data-v-796f1feb="">안전식품</div>
										</div>
										<div data-v-796f1feb="" class="product-info__review">
											<div data-v-796f1feb="" class="review-rating">
												<span data-v-ef94db98="" data-value="4.9"
													class="ui_rating fr" data-v-796f1feb=""><i
													data-v-ef94db98="" data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i></span> <span data-v-796f1feb=""
													class="review-count"> (154) </span>
											</div>
											<div data-v-796f1feb="" class="review-comment">
												<div data-v-796f1feb="" class="review-comment__badge">
													후기</div>
												<div data-v-796f1feb="" class="review-comment__contents">
													쫄깃쫄깃 맛 있게 잘 먹었어요~~^^</div>
											</div>
										</div>
									</div></a>
							</div>
						</div>
						<div data-v-38f53920="" class="ui_grid__item">
							<div data-v-796f1feb="" data-v-38f53920=""
								class="base-card card--vertical product">
								<a data-v-796f1feb=""
									href="detail_content.do"
									target="_blank"><div data-v-796f1feb=""
										class="card-thumb-cover">
										<div data-v-796f1feb=""
											id="thumb-3b44df92-f885-45da-ab6b-d393ba7a9fb0"
											class="product-thumb-img"
											style="background-image: url(&quot;https://image.idus.com/image/files/2d42cc8c9a5f48df97a1e4cbf4df20a7_512.jpg&quot;);"></div>
										<div data-v-796f1feb="" class="product-bookmark">
											<button data-v-488f5f82="" aria-label="찜하기"
												class="full-button" data-v-796f1feb=""
												style="width: 24px; height: 24px;">
												<i data-v-488f5f82="" class="sp-icon icon-favorite"></i>
											</button>
										</div>
									</div>
									<div data-v-796f1feb="" class="card-info product-info">
										<div data-v-796f1feb="" class="product-info__artist-name">
											초은농장</div>
										<div data-v-796f1feb="" class="product-info__name">
											추석할인💗예약가능💗무항생제 돈갈비세트🐖지인선물</div>
										<div data-v-796f1feb="" class="product-info__price">
											<span data-v-796f1feb="" class="sale-rate"> 21% </span> <span
												data-v-796f1feb="" class="price-sale"> 64,800 <span
												data-v-796f1feb="" style="font-size: 14px;">원</span></span>
											<div data-v-796f1feb="" class="price-origin--before-sale">
												<del data-v-796f1feb="">82,000원</del>
											</div>
										</div>
										<div data-v-796f1feb="" class="product-info__badge-group"
											style="margin-top: 12px;">
											<div data-v-2f2bc7d4="" class="badge badge-delivery"
												data-v-796f1feb="">무료배송</div>
											<div data-v-2f2bc7d4="" class="badge badge-food"
												data-v-796f1feb="">안전식품</div>
										</div>
										<div data-v-796f1feb="" class="product-info__review">
											<div data-v-796f1feb="" class="review-rating">
												<span data-v-ef94db98="" data-value="4.8"
													class="ui_rating fr" data-v-796f1feb=""><i
													data-v-ef94db98="" data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i></span> <span data-v-796f1feb=""
													class="review-count"> (16) </span>
											</div>
											<div data-v-796f1feb="" class="review-comment">
												<div data-v-796f1feb="" class="review-comment__badge">
													후기</div>
												<div data-v-796f1feb="" class="review-comment__contents">
													선물용으로 좋아요~</div>
											</div>
										</div>
									</div></a>
							</div>
						</div>
						<div data-v-38f53920="" class="ui_grid__item">
							<div data-v-796f1feb="" data-v-38f53920=""
								class="base-card card--vertical product">
								<a data-v-796f1feb=""
									href="detail_content.do"
									target="_blank"><div data-v-796f1feb=""
										class="card-thumb-cover">
										<div data-v-796f1feb=""
											id="thumb-f7b35705-2e1b-4885-bf2b-38e7779b51d4"
											class="product-thumb-img"
											style="background-image: url(&quot;https://image.idus.com/image/files/09f3878b6601484c918391459eb8340e_512.jpg&quot;);"></div>
										<div data-v-796f1feb="" class="product-bookmark">
											<button data-v-488f5f82="" aria-label="찜하기"
												class="full-button" data-v-796f1feb=""
												style="width: 24px; height: 24px;">
												<i data-v-488f5f82="" class="sp-icon icon-favorite"></i>
											</button>
										</div>
									</div>
									<div data-v-796f1feb="" class="card-info product-info">
										<div data-v-796f1feb="" class="product-info__artist-name">
											초은농장</div>
										<div data-v-796f1feb="" class="product-info__name">
											💗귀하게 키운💗1등급이상🐮한우암소 양지국거리🐮</div>
										<div data-v-796f1feb="" class="product-info__price">
											<span data-v-796f1feb="" class="sale-rate"> 24% </span> <span
												data-v-796f1feb="" class="price-sale"> 9,900 <span
												data-v-796f1feb="" style="font-size: 14px;">원</span></span>
											<div data-v-796f1feb="" class="price-origin--before-sale">
												<del data-v-796f1feb="">13,000원</del>
											</div>
										</div>
										<div data-v-796f1feb="" class="product-info__badge-group"
											style="margin-top: 12px;">
											<div data-v-2f2bc7d4="" class="badge badge-food"
												data-v-796f1feb="">안전식품</div>
										</div>
										<div data-v-796f1feb="" class="product-info__review">
											<div data-v-796f1feb="" class="review-rating">
												<span data-v-ef94db98="" data-value="4.7"
													class="ui_rating fr" data-v-796f1feb=""><i
													data-v-ef94db98="" data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i></span> <span data-v-796f1feb=""
													class="review-count"> (25) </span>
											</div>
											<div data-v-796f1feb="" class="review-comment">
												<div data-v-796f1feb="" class="review-comment__badge">
													후기</div>
												<div data-v-796f1feb="" class="review-comment__contents">
													굿</div>
											</div>
										</div>
									</div></a>
							</div>
						</div>
						<div data-v-38f53920="" class="ui_grid__item">
							<div data-v-796f1feb="" data-v-38f53920=""
								class="base-card card--vertical product">
								<a data-v-796f1feb=""
									href="detail_content.do"
									target="_blank"><div data-v-796f1feb=""
										class="card-thumb-cover">
										<div data-v-796f1feb=""
											id="thumb-f3df0302-df3a-47e5-a204-66ad6b7e20bf"
											class="product-thumb-img"
											style="background-image: url(&quot;https://image.idus.com/image/files/1245af79ce7b4cbfb5646b5417a02c7e_512.jpg&quot;);"></div>
										<div data-v-796f1feb="" class="product-bookmark">
											<button data-v-488f5f82="" aria-label="찜하기"
												class="full-button" data-v-796f1feb=""
												style="width: 24px; height: 24px;">
												<i data-v-488f5f82="" class="sp-icon icon-favorite"></i>
											</button>
										</div>
									</div>
									<div data-v-796f1feb="" class="card-info product-info">
										<div data-v-796f1feb="" class="product-info__artist-name">
											초은농장</div>
										<div data-v-796f1feb="" class="product-info__name">
											🏅무항생제 돼지 앞다리살🐷건강한👍숯불캠핑홈캉스👍</div>
										<div data-v-796f1feb="" class="product-info__price">
											<span data-v-796f1feb="" class="sale-rate"> 13% </span> <span
												data-v-796f1feb="" class="price-sale"> 7,800 <span
												data-v-796f1feb="" style="font-size: 14px;">원</span></span>
											<div data-v-796f1feb="" class="price-origin--before-sale">
												<del data-v-796f1feb="">9,000원</del>
											</div>
										</div>
										<div data-v-796f1feb="" class="product-info__badge-group"
											style="margin-top: 12px;">
											<div data-v-2f2bc7d4="" class="badge badge-food"
												data-v-796f1feb="">안전식품</div>
										</div>
										<div data-v-796f1feb="" class="product-info__review">
											<div data-v-796f1feb="" class="review-rating">
												<span data-v-ef94db98="" data-value="4.9"
													class="ui_rating fr" data-v-796f1feb=""><i
													data-v-ef94db98="" data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i></span> <span data-v-796f1feb=""
													class="review-count"> (129) </span>
											</div>
											<div data-v-796f1feb="" class="review-comment">
												<div data-v-796f1feb="" class="review-comment__badge">
													후기</div>
												<div data-v-796f1feb="" class="review-comment__contents">
													굿</div>
											</div>
										</div>
									</div></a>
							</div>
						</div>
						<div data-v-38f53920="" class="ui_grid__item">
							<div data-v-796f1feb="" data-v-38f53920=""
								class="base-card card--vertical product">
								<a data-v-796f1feb=""
									href="detail_content.do"
									target="_blank"><div data-v-796f1feb=""
										class="card-thumb-cover">
										<div data-v-796f1feb=""
											id="thumb-c044feab-e106-40ba-a109-e6d7cb5e8e1f"
											class="product-thumb-img"
											style="background-image: url(&quot;https://image.idus.com/image/files/4f9930ad31744a0b9231dda79216a874_512.jpg&quot;);"></div>
										<div data-v-796f1feb="" class="product-bookmark">
											<button data-v-488f5f82="" aria-label="찜하기"
												class="full-button" data-v-796f1feb=""
												style="width: 24px; height: 24px;">
												<i data-v-488f5f82="" class="sp-icon icon-favorite"></i>
											</button>
										</div>
									</div>
									<div data-v-796f1feb="" class="card-info product-info">
										<div data-v-796f1feb="" class="product-info__artist-name">
											초은농장</div>
										<div data-v-796f1feb="" class="product-info__name">
											💗1+등급💗쫄깃하고 고소한🐮한우암소 특수모듬</div>
										<div data-v-796f1feb="" class="product-info__price">
											<span data-v-796f1feb="" class="sale-rate"> 34% </span> <span
												data-v-796f1feb="" class="price-sale"> 17,800 <span
												data-v-796f1feb="" style="font-size: 14px;">원</span></span>
											<div data-v-796f1feb="" class="price-origin--before-sale">
												<del data-v-796f1feb="">27,000원</del>
											</div>
										</div>
										<div data-v-796f1feb="" class="product-info__badge-group"
											style="margin-top: 12px;">
											<div data-v-2f2bc7d4="" class="badge badge-food"
												data-v-796f1feb="">안전식품</div>
										</div>
										<div data-v-796f1feb="" class="product-info__review">
											<div data-v-796f1feb="" class="review-rating">
												<span data-v-ef94db98="" data-value="4.5"
													class="ui_rating fr" data-v-796f1feb=""><i
													data-v-ef94db98="" data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-half-fill"
													style="font-size: 11px;"></i></span> <span data-v-796f1feb=""
													class="review-count"> (11) </span>
											</div>
											<div data-v-796f1feb="" class="review-comment">
												<div data-v-796f1feb="" class="review-comment__badge">
													후기</div>
												<div data-v-796f1feb="" class="review-comment__contents">
													어느 부위인지는 모르겠으나 3가지 부위가 왔구요. 힘줄있는 부위가 있어서 질길 줄 알았는데 모두 부드럽고
													맛있었어요! 오랜만에 몸보신했네요 ㅎㅎ</div>
											</div>
										</div>
									</div></a>
							</div>
						</div>
						<div data-v-38f53920="" class="ui_grid__item">
							<div data-v-796f1feb="" data-v-38f53920=""
								class="base-card card--vertical product">
								<a data-v-796f1feb=""
									href="detail_content.do"
									target="_blank"><div data-v-796f1feb=""
										class="card-thumb-cover">
										<div data-v-796f1feb=""
											id="thumb-c02e491f-2135-4c40-8809-eb7321e13330"
											class="product-thumb-img"
											style="background-image: url(&quot;https://image.idus.com/image/files/c4db131b4fe84b51b9907d950f4b50dd_512.jpg&quot;);"></div>
										<div data-v-796f1feb="" class="product-bookmark">
											<button data-v-488f5f82="" aria-label="찜하기"
												class="full-button" data-v-796f1feb=""
												style="width: 24px; height: 24px;">
												<i data-v-488f5f82="" class="sp-icon icon-favorite"></i>
											</button>
										</div>
									</div>
									<div data-v-796f1feb="" class="card-info product-info">
										<div data-v-796f1feb="" class="product-info__artist-name">
											초은농장</div>
										<div data-v-796f1feb="" class="product-info__name">
											💗귀하게 키운💗1등급이상🐮한우암소 국거리🐮</div>
										<div data-v-796f1feb="" class="product-info__price">
											<span data-v-796f1feb="" class="sale-rate"> 18% </span> <span
												data-v-796f1feb="" class="price-sale"> 9,900 <span
												data-v-796f1feb="" style="font-size: 14px;">원</span></span>
											<div data-v-796f1feb="" class="price-origin--before-sale">
												<del data-v-796f1feb="">12,000원</del>
											</div>
										</div>
										<div data-v-796f1feb="" class="product-info__badge-group"
											style="margin-top: 12px;">
											<div data-v-2f2bc7d4="" class="badge badge-food"
												data-v-796f1feb="">안전식품</div>
										</div>
										<div data-v-796f1feb="" class="product-info__review">
											<div data-v-796f1feb="" class="review-rating">
												<span data-v-ef94db98="" data-value="4.9"
													class="ui_rating fr" data-v-796f1feb=""><i
													data-v-ef94db98="" data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i></span> <span data-v-796f1feb=""
													class="review-count"> (88) </span>
											</div>
											<div data-v-796f1feb="" class="review-comment">
												<div data-v-796f1feb="" class="review-comment__badge">
													후기</div>
												<div data-v-796f1feb="" class="review-comment__contents">
													지난번에 구매후기보고 구입했는데 고기가 맛있어서 재구매합니다</div>
											</div>
										</div>
									</div></a>
							</div>
						</div>
						<div data-v-38f53920="" class="ui_grid__item">
							<div data-v-796f1feb="" data-v-38f53920=""
								class="base-card card--vertical product">
								<a data-v-796f1feb=""
									href="detail_content.do"
									target="_blank"><div data-v-796f1feb=""
										class="card-thumb-cover">
										<div data-v-796f1feb=""
											id="thumb-bc1397c7-68d8-467a-9362-e5e67be4b5b8"
											class="product-thumb-img"
											style="background-image: url(&quot;https://image.idus.com/image/files/89d5118c74ae43eb90389cc9a9fbe4b5_512.jpg&quot;);"></div>
										<div data-v-796f1feb="" class="product-bookmark">
											<button data-v-488f5f82="" aria-label="찜하기"
												class="full-button" data-v-796f1feb=""
												style="width: 24px; height: 24px;">
												<i data-v-488f5f82="" class="sp-icon icon-favorite"></i>
											</button>
										</div>
									</div>
									<div data-v-796f1feb="" class="card-info product-info">
										<div data-v-796f1feb="" class="product-info__artist-name">
											초은농장</div>
										<div data-v-796f1feb="" class="product-info__name">
											🏅무항생제 돼지 갈비,등갈비🐷건강하게 먹자👍밥도둑</div>
										<div data-v-796f1feb="" class="product-info__price">
											<span data-v-796f1feb="" class="sale-rate"> 12% </span> <span
												data-v-796f1feb="" class="price-sale"> 14,900 <span
												data-v-796f1feb="" style="font-size: 14px;">원</span></span>
											<div data-v-796f1feb="" class="price-origin--before-sale">
												<del data-v-796f1feb="">16,900원</del>
											</div>
										</div>
										<div data-v-796f1feb="" class="product-info__badge-group"
											style="margin-top: 12px;">
											<div data-v-2f2bc7d4="" class="badge badge-food"
												data-v-796f1feb="">안전식품</div>
										</div>
										<div data-v-796f1feb="" class="product-info__review">
											<div data-v-796f1feb="" class="review-rating">
												<span data-v-ef94db98="" data-value="4.8"
													class="ui_rating fr" data-v-796f1feb=""><i
													data-v-ef94db98="" data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i></span> <span data-v-796f1feb=""
													class="review-count"> (57) </span>
											</div>
											<div data-v-796f1feb="" class="review-comment">
												<div data-v-796f1feb="" class="review-comment__badge">
													후기</div>
												<div data-v-796f1feb="" class="review-comment__contents">
													맛있게 잘먹었습니다~</div>
											</div>
										</div>
									</div></a>
							</div>
						</div>
						<div data-v-38f53920="" class="ui_grid__item">
							<div data-v-796f1feb="" data-v-38f53920=""
								class="base-card card--vertical product">
								<a data-v-796f1feb=""
									href="detail_content.do"
									target="_blank"><div data-v-796f1feb=""
										class="card-thumb-cover">
										<div data-v-796f1feb=""
											id="thumb-ed8df1a4-db0b-4a17-95d7-1c273089d683"
											class="product-thumb-img"
											style="background-image: url(&quot;https://image.idus.com/image/files/76db68e7300544c986f670967c802501_512.jpg&quot;);"></div>
										<div data-v-796f1feb="" class="product-bookmark">
											<button data-v-488f5f82="" aria-label="찜하기"
												class="full-button" data-v-796f1feb=""
												style="width: 24px; height: 24px;">
												<i data-v-488f5f82="" class="sp-icon icon-favorite"></i>
											</button>
										</div>
									</div>
									<div data-v-796f1feb="" class="card-info product-info">
										<div data-v-796f1feb="" class="product-info__artist-name">
											초은농장</div>
										<div data-v-796f1feb="" class="product-info__name">
											🏅소스증정💥무항생제 등심 두툼 돈까스💥</div>
										<div data-v-796f1feb="" class="product-info__price">
											<span data-v-796f1feb="" class="sale-rate"> 24% </span> <span
												data-v-796f1feb="" class="price-sale"> 6,800 <span
												data-v-796f1feb="" style="font-size: 14px;">원</span></span>
											<div data-v-796f1feb="" class="price-origin--before-sale">
												<del data-v-796f1feb="">8,900원</del>
											</div>
										</div>
										<div data-v-796f1feb="" class="product-info__badge-group"
											style="margin-top: 12px;">
											<div data-v-2f2bc7d4="" class="badge badge-food"
												data-v-796f1feb="">안전식품</div>
										</div>
										<div data-v-796f1feb="" class="product-info__review">
											<div data-v-796f1feb="" class="review-rating">
												<span data-v-ef94db98="" data-value="4.8"
													class="ui_rating fr" data-v-796f1feb=""><i
													data-v-ef94db98="" data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i></span> <span data-v-796f1feb=""
													class="review-count"> (68) </span>
											</div>
											<div data-v-796f1feb="" class="review-comment">
												<div data-v-796f1feb="" class="review-comment__badge">
													후기</div>
												<div data-v-796f1feb="" class="review-comment__contents">
													돈까스 진짜맛있어요 두툼한 크기 와우 ㅎㅎ 사진은 자꾸 왜못찍는걸까요 먹어치우기바빠서 ㅠㅠ 일반 정육점에서
													사먹는 돈까스와도 비교불가네요 진짜😍😍</div>
											</div>
										</div>
									</div></a>
							</div>
						</div>
						<div data-v-38f53920="" class="ui_grid__item">
							<div data-v-796f1feb="" data-v-38f53920=""
								class="base-card card--vertical product">
								<a data-v-796f1feb=""
									href="detail_content.do"
									target="_blank"><div data-v-796f1feb=""
										class="card-thumb-cover">
										<div data-v-796f1feb=""
											id="thumb-e7576550-1169-4ad0-bb08-a82ff1304880"
											class="product-thumb-img"
											style="background-image: url(&quot;https://image.idus.com/image/files/5acb9510686e41d88d134bceb2cd2e72_512.png&quot;);"></div>
										<div data-v-796f1feb="" class="product-bookmark">
											<button data-v-488f5f82="" aria-label="찜하기"
												class="full-button" data-v-796f1feb=""
												style="width: 24px; height: 24px;">
												<i data-v-488f5f82="" class="sp-icon icon-favorite"></i>
											</button>
										</div>
									</div>
									<div data-v-796f1feb="" class="card-info product-info">
										<div data-v-796f1feb="" class="product-info__artist-name">
											초은농장</div>
										<div data-v-796f1feb="" class="product-info__name">
											🏅소스증정💥무항생제 치즈 듬뿍 돈까스💥연돈스타일</div>
										<div data-v-796f1feb="" class="product-info__price">
											<span data-v-796f1feb="" class="sale-rate"> 34% </span> <span
												data-v-796f1feb="" class="price-sale"> 7,800 <span
												data-v-796f1feb="" style="font-size: 14px;">원</span></span>
											<div data-v-796f1feb="" class="price-origin--before-sale">
												<del data-v-796f1feb="">11,900원</del>
											</div>
										</div>
										<div data-v-796f1feb="" class="product-info__badge-group"
											style="margin-top: 12px;">
											<div data-v-2f2bc7d4="" class="badge badge-food"
												data-v-796f1feb="">안전식품</div>
										</div>
										<div data-v-796f1feb="" class="product-info__review">
											<div data-v-796f1feb="" class="review-rating">
												<span data-v-ef94db98="" data-value="4.8"
													class="ui_rating fr" data-v-796f1feb=""><i
													data-v-ef94db98="" data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i></span> <span data-v-796f1feb=""
													class="review-count"> (66) </span>
											</div>
											<div data-v-796f1feb="" class="review-comment">
												<div data-v-796f1feb="" class="review-comment__badge">
													후기</div>
												<div data-v-796f1feb="" class="review-comment__contents">
													고기 속에 치즈가 아주 많구요 튀기만하면 먹을수있게 소스도 있구 맛있게 잘 먹었습니다~~^^</div>
											</div>
										</div>
									</div></a>
							</div>
						</div>
						<div data-v-38f53920="" class="ui_grid__item">
							<div data-v-796f1feb="" data-v-38f53920=""
								class="base-card card--vertical product">
								<a data-v-796f1feb=""
									href="detail_content.do"
									target="_blank"><div data-v-796f1feb=""
										class="card-thumb-cover">
										<div data-v-796f1feb=""
											id="thumb-e645ceac-3c13-4e2e-a817-87337c2a6cbb"
											class="product-thumb-img"
											style="background-image: url(&quot;https://image.idus.com/image/files/207bff494b34461ba99df773b95f1445_512.jpg&quot;);"></div>
										<div data-v-796f1feb="" class="product-bookmark">
											<button data-v-488f5f82="" aria-label="찜하기"
												class="full-button" data-v-796f1feb=""
												style="width: 24px; height: 24px;">
												<i data-v-488f5f82="" class="sp-icon icon-favorite"></i>
											</button>
										</div>
									</div>
									<div data-v-796f1feb="" class="card-info product-info">
										<div data-v-796f1feb="" class="product-info__artist-name">
											초은농장</div>
										<div data-v-796f1feb="" class="product-info__name">
											💗할인중💗풍미가득💗1등급이상🐮한우암소 등심🐮</div>
										<div data-v-796f1feb="" class="product-info__price">
											<span data-v-796f1feb="" class="sale-rate"> 26% </span> <span
												data-v-796f1feb="" class="price-sale"> 29,800 <span
												data-v-796f1feb="" style="font-size: 14px;">원</span></span>
											<div data-v-796f1feb="" class="price-origin--before-sale">
												<del data-v-796f1feb="">40,000원</del>
											</div>
										</div>
										<div data-v-796f1feb="" class="product-info__badge-group"
											style="margin-top: 12px;">
											<div data-v-2f2bc7d4="" class="badge badge-food"
												data-v-796f1feb="">안전식품</div>
										</div>
										<div data-v-796f1feb="" class="product-info__review">
											<div data-v-796f1feb="" class="review-rating">
												<span data-v-ef94db98="" data-value="4.9"
													class="ui_rating fr" data-v-796f1feb=""><i
													data-v-ef94db98="" data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i></span> <span data-v-796f1feb=""
													class="review-count"> (44) </span>
											</div>
											<div data-v-796f1feb="" class="review-comment">
												<div data-v-796f1feb="" class="review-comment__badge">
													후기</div>
												<div data-v-796f1feb="" class="review-comment__contents">
													아직 맛보기전입니다 돼지고기 주문해보고 맛있어서 주문했어요</div>
											</div>
										</div>
									</div></a>
							</div>
						</div>
						<div data-v-38f53920="" class="ui_grid__item">
							<div data-v-796f1feb="" data-v-38f53920=""
								class="base-card card--vertical product">
								<a data-v-796f1feb=""
									href="detail_content.do"
									target="_blank"><div data-v-796f1feb=""
										class="card-thumb-cover">
										<div data-v-796f1feb=""
											id="thumb-d2b1d40d-6f27-46de-8df0-c3cce8ca4b49"
											class="product-thumb-img"
											style="background-image: url(&quot;https://image.idus.com/image/files/8c68d3f5298a43b3866823e57ce8a575_512.png&quot;);"></div>
										<div data-v-796f1feb="" class="product-bookmark">
											<button data-v-488f5f82="" aria-label="찜하기"
												class="full-button" data-v-796f1feb=""
												style="width: 24px; height: 24px;">
												<i data-v-488f5f82="" class="sp-icon icon-favorite"></i>
											</button>
										</div>
									</div>
									<div data-v-796f1feb="" class="card-info product-info">
										<div data-v-796f1feb="" class="product-info__artist-name">
											초은농장</div>
										<div data-v-796f1feb="" class="product-info__name">
											🏅당면증정💥고기가득💥양념 한우 불고기 500g👍</div>
										<div data-v-796f1feb="" class="product-info__price">
											<span data-v-796f1feb="" class="sale-rate"> 23% </span> <span
												data-v-796f1feb="" class="price-sale"> 17,800 <span
												data-v-796f1feb="" style="font-size: 14px;">원</span></span>
											<div data-v-796f1feb="" class="price-origin--before-sale">
												<del data-v-796f1feb="">23,000원</del>
											</div>
										</div>
										<div data-v-796f1feb="" class="product-info__badge-group"
											style="margin-top: 12px;">
											<div data-v-2f2bc7d4="" class="badge badge-food"
												data-v-796f1feb="">안전식품</div>
										</div>
										<div data-v-796f1feb="" class="product-info__review">
											<div data-v-796f1feb="" class="review-rating">
												<span data-v-ef94db98="" data-value="4.6"
													class="ui_rating fr" data-v-796f1feb=""><i
													data-v-ef94db98="" data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i><i data-v-ef94db98=""
													data-state="active"
													class="ui_icon--star idus-icon-star-fill"
													style="font-size: 11px;"></i></span> <span data-v-796f1feb=""
													class="review-count"> (8) </span>
											</div>
											<div data-v-796f1feb="" class="review-comment">
												<div data-v-796f1feb="" class="review-comment__badge">
													후기</div>
												<div data-v-796f1feb="" class="review-comment__contents">
													맛있어서 재구매해서 먹었어요.야채랑 집에있는 당면 더 넣고 맛있게 먹었어요.남은 국물에 밥도
													비벼먹었어요.^^ 역시 짱!!!</div>
											</div>
										</div>
									</div></a>
							</div>
						</div>
						<div data-v-70d95496="" data-v-38f53920="" data-ui="scroll-paging"
							data-type="vue" class="scroll-pagination">
							<div data-v-70d95496="" id="scroll-pagination-marker"></div>
							<!---->
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<jsp:include page="footer.jsp" />
</body>
</html>