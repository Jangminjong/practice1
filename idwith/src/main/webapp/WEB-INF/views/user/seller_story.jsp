<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디위드 | 작가 스토리</title>
<!-- 파비콘 이미지 설정 -->
<link rel="shortcut icon" type="image/x-icon"
	href="resources/images/title/icon_300.PNG">
	
<link rel="stylesheet" href="resources/css/seller_story.css">
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
				<a data-v-2618eab2="" href="seller_goods.do?seller_code=${seller_code}" target="_blank:"
					style="width: 108px; height: 108px; margin-right: 33px; position: relative;">
					<img data-v-2618eab2="" src="${sellerInfo.seller_profile_img[0]}"
					alt="artist thumbnail" class="artist-thumbnail"> <!---->
				</a>
				<div data-v-2618eab2="" class="artist-info">
					<div data-v-2618eab2="" class="artist-info__head">
						<div data-v-2618eab2="">
							<a data-v-2618eab2="" href="seller_goods.do" target="_blank">
								<p data-v-2618eab2="" class="artist-info__name">
									${sellerInfo.seller_name}</p>
							</a>
							<div data-v-2618eab2="" class="artist-info__rate">
								<span data-v-ef94db98="" data-v-2618eab2="" data-value="4.85"
									class="ui_rating fr"> 
								<i class="fa fa-star" aria-hidden="true" style="color: #f5eb75;"></i>
								</span> <span data-v-2618eab2=""> 4.85<!-- 작가 평균 별점 -->
								</span> <span data-v-2618eab2=""> (3,768)<!-- 별점 작성한 회원의 수 -->
								</span>
							</div>
						</div>
					</div>
					<div data-v-2618eab2="" class="artist-info__statistics">
						<div data-v-2618eab2="" class="data-area">
							<p data-v-2618eab2="" class="title">작품 찜</p>
							<span data-v-2618eab2="" class="data"> 2.8만<!-- 찜 한 회원의 수 -->
							</span>
						</div>
						<div data-v-2618eab2="" class="data-area">
							<p data-v-2618eab2="" class="title">팔로워</p>
							<span data-v-2618eab2="" class="data"> 8.3천<!-- 팔로워 한 회원의 수 -->
							</span>
						</div>
						<div data-v-2618eab2="" class="data-area">
							<p data-v-2618eab2="" class="title">후원해주신 분들</p>
							<span data-v-2618eab2="" class="data"> 975<!-- 후원 한 회원의 수 -->
							</span>
						</div>
					</div>
				</div>
			</div>
			<div data-v-2618eab2="" class="profile-contents"
				style="margin-left: 143px;">
				<div data-v-2618eab2="" class="introduce-area">
					<p data-v-2618eab2="" class="introduce-txt">${sellerInfo.seller_profile}</p>
				</div>
				<div data-v-2618eab2="" class="btn-group">
					<button data-v-b534333e="" data-v-2618eab2="" type="button"
						class="follow"
						style="background-color: rgb(255, 123, 48); witdh: 100%; height: 36px; font-size: 14px; color: rgb(255, 255, 255); border: 1px solid rgb(255, 123, 48); border-radius: 4px;">
						<i class="fa fa-bookmark" aria-hidden="true" style="font-size: 16px;"></i>&nbsp;&nbsp;팔로우
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
					href="seller_story.do?seller_code=${seller_code}"
					class="tab active">스토리</a> <a data-v-825a8b32=""
					href="seller_goods.do?seller_code=${seller_code}" class="tab">판매작품</a>
				<a data-v-825a8b32=""
					href="seller_class.do?seller_code=${seller_code}" class="tab">클래스</a>
				<a data-v-825a8b32=""
					href="seller_review.do?seller_code=${seller_code}" class="tab">구매후기</a>

			</nav>
		</div>
		<div class="contents-container">

			<c:choose>
				<c:when test="${ storyCheck eq true }">
					<div data-v-5ea8b349="" class="story-list">
						<div data-v-5ea8b349="" style="display: flex; margin-left: -16px;">
							<div class=""
								style="box-sizing: border-box; background-clip: padding-box; width: 50%; border-width: 0px 0px 0px 16px; border-style: solid; border-color: transparent; border-image: initial;">


								<c:forEach var="info" items="${info}" end="${listLength-1}">
									<li data-v-52776193="" data-v-5ea8b349=""
										class="story-card card-style"><input data-v-52776193=""
										name="page" type="hidden" value="2">
										<div data-v-52776193="" class="story-card__header">
											<div data-v-52776193="" class="story-card-info">
												<a data-v-52776193="" href="seller_goods.do" target="_blank"
													class="artist-thumbnail"><img data-v-52776193=""
													alt="artist profile"
													src="${sellerInfo.seller_profile_img[0]}"></a>
												<div data-v-52776193="" class="artist-info">
													<span data-v-52776193="" class="artist-name"><a
														data-v-52776193="" href="seller_goods.do" target="_blank">
															${sellerInfo.seller_name} </a></span> <span data-v-52776193=""
														class="story-date"> ${info.story_date} </span>
												</div>
											</div>
											<!---->
										</div> <a data-v-52776193="" href="##" target="_blank"><div
												data-v-52776193="" class="story-card__body">
												${info.story_context}</div>
											<div data-v-2ce2581b="" data-v-52776193=""
												class="image-group">
												<div data-v-2ce2581b="" class="image-container">
													<div data-v-2ce2581b="" class="image"
														style="background-image: url(${info.story_image[0]}); max-height: 205px;"></div>
													<!---->
													<!---->
												</div>
												
												<!-- 이미지 3장 이상일 때 백그라운드에 검은색 화면처리 -->
												<%-- <c:forEach var="i" begin="0" end="${listSize}">
													<c:choose>
														<c:when test="${listSize <= 3}">
															
														</c:when>

														<c:when test="${listSize > 3}">
															<div data-v-2ce2581b="" class="image-container last">
																<div data-v-2ce2581b="" class="image"
																	style="background-image: url(${info.story_image[i]}); max-height: 205px;"></div>
																<div data-v-2ce2581b="" class="image-curtain"></div>
																<div data-v-2ce2581b="" class="rest-image-txt">+3</div>
															</div>
														</c:when>
													</c:choose>
												</c:forEach> --%>
											</div></a></li>
								</c:forEach>
							</div>
							<div class=""
								style="box-sizing: border-box; background-clip: padding-box; width: 50%; border-width: 0px 0px 0px 16px; border-style: solid; border-color: transparent; border-image: initial;">


								<c:forEach var="info" items="${info}" begin="${listLength}">
									<li data-v-52776193="" data-v-5ea8b349=""
										class="story-card card-style"><input data-v-52776193=""
										name="page" type="hidden" value="2">
										<div data-v-52776193="" class="story-card__header">
											<div data-v-52776193="" class="story-card-info">
												<a data-v-52776193="" href="seller_goods.do" target="_blank"
													class="artist-thumbnail"><img data-v-52776193=""
													alt="artist profile"
													src="${sellerInfo.seller_profile_img[0]}"></a>
												<div data-v-52776193="" class="artist-info">
													<span data-v-52776193="" class="artist-name"><a
														data-v-52776193="" href="seller_goods.do" target="_blank">
															${sellerInfo.seller_name } </a></span> <span data-v-52776193=""
														class="story-date"> ${info.story_date}<!-- 작가 스토리 작성시간 -->
													</span>
												</div>
											</div>
											<!---->
										</div> <a data-v-52776193="" href="##" target="_blank"><div
												data-v-52776193="" class="story-card__body">
												${info.story_context}</div>
											<div data-v-2ce2581b="" data-v-52776193=""
												class="image-group">
												<div data-v-2ce2581b="" class="image-container">
													<div data-v-2ce2581b="" class="image"
														style="background-image: url(${info.story_image[0]}); max-height: 205px;"></div>
												</div>
											</div></a></li>
								</c:forEach>

							</div>

						</div>
					</div>
				</c:when>
				<c:when test="${ storyCheck eq false }">
					<div class="empty-data">
						<i class="idus-icon-logo-empty"></i> 작가님의 스토리가 없습니다.
					</div>
				</c:when>
			</c:choose>

		</div>

		<!-- 페이징 -->
		<div class="paging" data-ui="paging" data-sync="false">
			<nav>
				<c:choose>
					<c:when test="${paging.nowPage eq 1 }">
						<span style="width: auto;">◀ 이전 |</span>
					</c:when>
					<c:when test="${paging.nowPage ne 1 }">
						<a
							href="seller_story.do?nowPage=${paging.nowPage - 1 }&cntPerPage=${paging.cntPerPage}&seller_code=${seller_code}"
							style="width: auto;">◀ 이전 |</a>
					</c:when>
				</c:choose>
				<c:forEach begin="${paging.startPage }" end="${paging.endPage }"
					var="p">
					<c:choose>
						<c:when test="${p eq paging.nowPage }">
							<a
								href="seller_story.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}&seller_code=${seller_code}"
								class="active" onclick="return false">${p }</a>
						</c:when>
						<c:when test="${p ne paging.nowPage }">
							<a
								href="seller_story.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}&seller_code=${seller_code}">${p }</a>
						</c:when>
					</c:choose>
				</c:forEach>
				<c:choose>
					<c:when test="${paging.endPage eq paging.lastPage}">
						<span style="width: auto;">| 다음 ▶</span>
					</c:when>
					<c:when test="${paging.endPage ne paging.lastPage}">
						<a
							href="seller_story.do?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}&seller_code=${seller_code}"
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
	</section>
	<jsp:include page="footer.jsp" />
</body>
</html>