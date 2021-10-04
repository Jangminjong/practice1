<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="resources/css/seller_review.css">
<link rel="stylesheet" href="resources/css/seller_main.css">
<link rel="stylesheet" href="resources/css/common.css">
<link rel="stylesheet" href="resources/css/idus.web.min.css">
<link rel="stylesheet" href="resources/css/vendor.client.min.css">
</head>
<body>
	<jsp:include page="header_goods.jsp" />
	<section class="artist-contents">
	
		<!-- 상단 프로필 -->
		<section data-v-2618eab2="" class="quick-profile"
		style="width: 526px; padding: 30px 0px 36px;">
		<div data-v-2618eab2="" class="profile-area">
			<a data-v-2618eab2=""
				href="seller_goods.do"
				target="_blank:"
				style="width: 108px; height: 108px; margin-right: 33px; position: relative;">
				<img data-v-2618eab2=""
				src="${sellerInfo.seller_profile_img[0]}"
				alt="artist thumbnail" class="artist-thumbnail"> <!---->
			</a>
			<div data-v-2618eab2="" class="artist-info">
				<div data-v-2618eab2="" class="artist-info__head">
					<div data-v-2618eab2="">
						<a data-v-2618eab2=""
							href="seller_goods.do"
							target="_blank">
							<p data-v-2618eab2="" class="artist-info__name">
								${sellerInfo.seller_name}
							</p>
						</a>
						<div data-v-2618eab2="" class="artist-info__rate">
							<span data-v-ef94db98="" data-v-2618eab2="" data-value="4.85"
								class="ui_rating fr"> <i data-v-ef94db98=""
								data-state="active" class="ui_icon--star idus-icon-star-fill"
								style="font-size: 14px;"></i>
							</span> <span data-v-2618eab2=""> 4.85<!-- 작가 평균 별점 --> </span> <span data-v-2618eab2="">
								(3,768)<!-- 별점 작성한 회원의 수 --> </span>
						</div>
					</div>
					<a data-v-2618eab2=""
						href="##"
						data-ui="inquire-float-btn" target="_blank"
						class="artist-inquire-float-btn" style="bottom: 30px;"> <img
						data-v-2618eab2=""
						src="/resources/dist/images/artist-inquire-icon.svg" alt="작가 문의"></a>
				</div>
				<div data-v-2618eab2="" class="artist-info__statistics">
					<div data-v-2618eab2="" class="data-area">
						<p data-v-2618eab2="" class="title">작품 찜</p>
						<span data-v-2618eab2="" class="data"> 2.8만<!-- 찜 한 회원의 수 --> </span>
					</div>
					<div data-v-2618eab2="" class="data-area">
						<p data-v-2618eab2="" class="title">팔로워</p>
						<span data-v-2618eab2="" class="data"> 8.3천<!-- 팔로워 한 회원의 수 --> </span>
					</div>
					<div data-v-2618eab2="" class="data-area">
						<p data-v-2618eab2="" class="title">후원해주신 분들</p>
						<span data-v-2618eab2="" class="data"> 975<!-- 후원 한 회원의 수 --> </span>
					</div>
				</div>
			</div>
		</div>
		<div data-v-2618eab2="" class="profile-contents"
			style="margin-left: 143px;">
			<div data-v-2618eab2="" class="introduce-area">
				<p data-v-2618eab2="" class="introduce-txt">${sellerInfo.seller_profile}</p>
				<i data-v-2618eab2="" class="idus-icon-arrow toggle-btn down"></i>
			</div>
			<div data-v-2618eab2="" class="btn-group">
				<button data-v-b534333e="" data-v-2618eab2="" type="button"
					class="follow"
					style="background-color: rgb(255, 123, 48); witdh: 100%; height: 36px; font-size: 14px; color: rgb(255, 255, 255); border: 1px solid rgb(255, 123, 48); border-radius: 4px;">
					<i data-v-b534333e="" class="idus-icon-plus"
						style="font-size: 16px;"></i> 팔로우
				</button>
			</div>
		</div>
	</section>
	
		<!-- Tab Menu -->
		<div data-v-825a8b32="">
			<div data-v-825a8b32="" data-trigger-detail="true"></div>
			<div data-v-825a8b32="" data-trigger="fixposition"></div>
			<nav data-v-825a8b32="" data-ui="artist-home-tab-control"
				class="tab-group">

				<a data-v-825a8b32=""
					href="seller_profile.do?seller_code=${seller_code}" class="tab">프로필</a>
				<a data-v-825a8b32=""
					href="seller_story.do?seller_code=${seller_code}" class="tab">스토리</a>
				<a data-v-825a8b32=""
					href="seller_goods.do?seller_code=${seller_code}" class="tab">판매작품</a>
				<a data-v-825a8b32=""
					href="seller_class.do?seller_code=${seller_code}" class="tab">클래스</a>
				<a data-v-825a8b32=""
					href="seller_review.do?seller_code=${seller_code}"
					class="tab active">구매후기</a>
			</nav>
		</div>
		<div class="contents-container">
			<div data-v-630eb5b4="" class="artist-review-list">
				<div data-v-630eb5b4="" style="display: flex; margin-left: -16px;">
					<div class=""
						style="box-sizing: border-box; background-clip: padding-box; width: 50%; border-width: 0px 0px 0px 16px; border-style: solid; border-color: transparent; border-image: initial;">

						<c:forEach var="list" items="${list}" end="${listLength}">
							<li data-v-e6011578="" data-v-630eb5b4=""
								class="artist-review-card card-style"><input
								data-v-e6011578="" name="next" type="hidden"
								value="2021-09-07 21:25:58"> <a data-v-e6011578=""
								href="review_detail.do" target="_blank"
								data-logging="artist_purchase_review"><div
										data-v-e6011578="" class="review-card__header">
										<div data-v-e6011578="" class="review-info">
											<img data-v-e6011578=""
												src="https://image.idus.com/image/files/b5b721bcb181484797e726ba90503777.jpg"
												alt="reviewer profile" class="reviewer-thumbnail">
											<div data-v-e6011578="" class="reviewer-detail-info">
												<span data-v-e6011578="" class="reviewer-name"> ${list.goods_review_id}
												</span> <span data-v-e6011578="" class="review-date">${list.goods_review_date}</span>
											</div>
										</div>
										<div data-v-e6011578="" class="review-rate">
											<span data-v-ef94db98="" data-v-e6011578="" data-value="5"
												class="ui_rating fr"><i data-v-ef94db98=""
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
												style="font-size: 11px;"></i></span>
										</div>
									</div>
									<div data-v-e6011578="" class="review-card__body">${list.goods_review_context}</div> <!----></a> <a
								data-v-e6011578="" href="detail_content.do?reviewId=${list.goods_review_id}" target="_blank"><div
										data-v-e6011578="" class="product-badge">
										<img data-v-e6011578=""
											src="https://image.idus.com/image/files/c83ad50150df44a09d70514916d0bd93.png"
											alt="product thumbnail" class="product-thumbnail">
										<div data-v-e6011578="" class="product-info">
											<span data-v-e6011578="" class="artist-name"> 초은농장 </span> <span
												data-v-e6011578="" class="product-title">
												🔥1+1할인🔥13일 발송🔆한우진한 사골곰국🔆곰탕 </span>
											<div data-v-e6011578="" class="product-price">
												<span data-v-e6011578="" class="sale-rate"> 28% </span> <span
													data-v-e6011578="" class="saled-price"> 7,200<span
													data-v-e6011578="" style="font-size: 13px;">원</span></span>
												<del data-v-e6011578="" class="origin-price"> 10,000원
												</del>
											</div>
										</div>
									</div></a></li>
						</c:forEach>
					</div>
					<div class=""
						style="box-sizing: border-box; background-clip: padding-box; width: 50%; border-width: 0px 0px 0px 16px; border-style: solid; border-color: transparent; border-image: initial;">

						<c:forEach var="list" items="${list}" begin="${listLength+1}">
							<li data-v-e6011578="" data-v-630eb5b4=""
								class="artist-review-card card-style"><input
								data-v-e6011578="" name="next" type="hidden"
								value="2021-09-07 21:25:58"> <a data-v-e6011578=""
								href="review_detail.do" target="_blank"
								data-logging="artist_purchase_review"><div
										data-v-e6011578="" class="review-card__header">
										<div data-v-e6011578="" class="review-info">
											<img data-v-e6011578=""
												src="https://image.idus.com/image/files/83ffdc9f6f2945279cfa5d3c85093cf1.jpg"
												alt="reviewer profile" class="reviewer-thumbnail">
											<div data-v-e6011578="" class="reviewer-detail-info">
												<span data-v-e6011578="" class="reviewer-name"> ${list.goods_review_id} </span>
												<span data-v-e6011578="" class="review-date">${list.goods_review_date}
													</span>
											</div>
										</div>
										<div data-v-e6011578="" class="review-rate">
											<span data-v-ef94db98="" data-v-e6011578="" data-value="5"
												class="ui_rating fr"><i data-v-ef94db98=""
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
												style="font-size: 11px;"></i></span>
										</div>
									</div>
									<div data-v-e6011578="" class="review-card__body">${list.goods_review_context}</div> <!----></a> <a data-v-e6011578=""
								href="detail_content.do" target="_blank"><div
										data-v-e6011578="" class="product-badge">
										<img data-v-e6011578=""
											src="https://image.idus.com/image/files/6bc7db2fd06f4d60a0433358c3729c47.jpg"
											alt="product thumbnail" class="product-thumbnail">
										<div data-v-e6011578="" class="product-info">
											<span data-v-e6011578="" class="artist-name"> 초은농장 </span> <span
												data-v-e6011578="" class="product-title"> 🏅무항생제 돼지
												삼겹살🐷건강하게 먹자👍껍질쫀득식감 </span>
											<div data-v-e6011578="" class="product-price">
												<span data-v-e6011578="" class="sale-rate"> 9% </span> <span
													data-v-e6011578="" class="saled-price"> 13,600<span
													data-v-e6011578="" style="font-size: 13px;">원</span></span>
												<del data-v-e6011578="" class="origin-price"> 15,000원
												</del>
											</div>
										</div>
									</div></a></li>
						</c:forEach>
					</div>
				</div>
				<div data-v-630eb5b4="" class="ScrollPaginationContainer">
					<div data-v-70d95496="" data-v-630eb5b4="" data-ui="scroll-paging"
						data-type="vue" class="scroll-pagination">
						<div data-v-70d95496="" id="scroll-pagination-marker"></div>
						<!---->
					</div>
				</div>
			</div>
		</div>
	</section>
	<jsp:include page="footer.jsp" />
</body>
</html>