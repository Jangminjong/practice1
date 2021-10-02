<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="resources/css/story.css">
<link rel="stylesheet" href="resources/css/common.css">
<link rel="stylesheet" href="resources/css/idus.web.min.css">
<link rel="stylesheet" href="resources/css/vendor.client.min.css">

<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="resources/js/userStory.js"></script>

</head>
<body>
	<jsp:include page="header_goods.jsp" />
	<div id="content" class="content" data-gnb-show="true">
		<section class="banner-title" data-image="type2" data-theme="black">
			<h1>스토리</h1>
			<p>작가님들의 소식과 이벤트들을 확인해 보세요.</p>
		</section>
		<div class="inner-w">
			<div class="all-story">
				<div data-v-5ea8b349="" class="story-list">
					<div data-v-5ea8b349="" style="display: flex; margin-left: -16px;">
						<div class=""
							style="box-sizing: border-box; background-clip: padding-box; width: 50%; border-width: 0px 0px 0px 16px; border-style: solid; border-color: transparent; border-image: initial;">

							<c:forEach var="list" items="${storyList}" end="${listLength}">
								<li data-v-52776193="" data-v-5ea8b349=""
									class="story-card card-style"><input data-v-52776193=""
									name="page" type="hidden" value="2">
									<div data-v-52776193="" class="story-card__header">
										<div data-v-52776193="" class="story-card-info">
											<a data-v-52776193=""
												href="/w/artist/5c3dfbf1-6a00-436d-9db6-59d7c4af617a/product"
												target="_blank" class="artist-thumbnail"><img
												data-v-52776193="" alt="artist profile"
												src="https://image.idus.com/image/files/32561fbf82264b95ad4796be8f446559_320.jpg"></a>
											<div data-v-52776193="" class="artist-info">
												<span data-v-52776193="" class="artist-name"><a
													data-v-52776193=""
													href="/w/artist/5c3dfbf1-6a00-436d-9db6-59d7c4af617a/product"
													target="_blank"> ${list.seller_name } </a></span> <span
													data-v-52776193="" class="story-date">${list.story_date }</span>
											</div>
										</div>
										<button data-v-b534333e="" data-v-52776193="" type="button"
											class="follow"
											style="background-color: rgb(255, 255, 255); min-width: 63px; width: 63px; height: 24px; font-size: 10px; color: rgb(255, 123, 48); border: 1px solid rgb(255, 123, 48); border-radius: 4px;">
											<i data-v-b534333e="" class="idus-icon-plus"
												style="font-size: 12px;"></i> 팔로우
										</button>
									</div> <a data-v-52776193=""
									href="/w/story/521ccb15-006d-442d-892b-c3604f20f192"
									target="_blank"><div data-v-52776193=""
											class="story-card__body">${list.story_context }</div>
										<div>
											<img src="${list.story_image }">
										</div></a></li>
							</c:forEach>

						</div>
						<div class=""
							style="box-sizing: border-box; background-clip: padding-box; width: 50%; border-width: 0px 0px 0px 16px; border-style: solid; border-color: transparent; border-image: initial;">

							<c:forEach var="rightList" items="${storyList}"
								begin="${listLength+1}">
								<li data-v-52776193="" data-v-5ea8b349=""
									class="story-card card-style"><input data-v-52776193=""
									name="page" type="hidden" value="2">
									<div data-v-52776193="" class="story-card__header">
										<div data-v-52776193="" class="story-card-info">
											<a data-v-52776193="" href="seller_goods.do" target="_blank"
												class="artist-thumbnail"><img data-v-52776193=""
												alt="artist profile"
												src="https://image.idus.com/image/files/7d53c78cf97f4163a11bf9f1bafe877d_320.jpg"></a>
											<div data-v-52776193="" class="artist-info">
												<span data-v-52776193="" class="artist-name"><a
													data-v-52776193="" href="seller_goods.do" target="_blank">
														${rightList.seller_name } </a></span> <span data-v-52776193=""
													class="story-date">${rigthList.story_date }</span>
											</div>
										</div>
										<button data-v-b534333e="" data-v-52776193="" type="button"
											class="follow"
											style="background-color: rgb(255, 255, 255); min-width: 63px; width: 63px; height: 24px; font-size: 10px; color: rgb(255, 123, 48); border: 1px solid rgb(255, 123, 48); border-radius: 4px;">
											<i data-v-b534333e="" class="idus-icon-plus"
												style="font-size: 12px;"></i> 팔로우
										</button>
									</div> <a data-v-52776193="" href="##" target="_blank">
										<div data-v-52776193="" class="story-card__body">${rightList.story_context}</div>
										<div>
											<img src="${list.story_image }">
										</div>
								</a> </a></li>
							</c:forEach>

						</div>
					</div>
					<div data-v-5ea8b349="" class="ScrollPaginationContainer">
						<div data-v-70d95496="" data-v-5ea8b349="" data-ui="scroll-paging"
							data-type="vue" class="scroll-pagination">
							<div data-v-70d95496="" id="scroll-pagination-marker"></div>
							<!---->
						</div>
					</div>
				</div>
			</div>
		</div>


		<div class="paging" data-ui="paging" data-sync="false">
			<nav>
				<c:choose>
					<c:when test="${paging.nowPage eq 1 }">
						<span style="width: auto;">◀ 이전 |</span>
					</c:when>
					<c:when test="${paging.nowPage ne 1 }">
						<a
							href="/mpweb/board.do?nowPage=${paging.nowPage - 1 }&cntPerPage=${paging.cntPerPage}"
							style="width: auto;">◀ 이전 |</a>
					</c:when>
				</c:choose>
				<c:forEach begin="${paging.startPage }" end="${paging.endPage }"
					var="p">
					<c:choose>
						<c:when test="${p eq paging.nowPage }">
							<a
								href="/mpweb/board.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}"
								class="active" onclick="return false">${p }</a>
						</c:when>
						<c:when test="${p ne paging.nowPage }">
							<a
								href="/mpweb/board.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
						</c:when>
					</c:choose>
				</c:forEach>
				<c:choose>
					<c:when test="${paging.endPage eq paging.lastPage}">
						<span style="width: auto;">| 다음 ▶</span>
					</c:when>
					<c:when test="${paging.endPage ne paging.lastPage}">
						<a
							href="/mpweb/board.do?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}"
							style="width: auto;">| 다음 ▶</a>
					</c:when>
				</c:choose>
			</nav>
		</div>
		
		
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>