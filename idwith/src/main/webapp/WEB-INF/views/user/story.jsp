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

							<c:forEach var="list" items="${storyList}" end="${listLength-1}">
								<li data-v-52776193="" data-v-5ea8b349=""
									class="story-card card-style"><input data-v-52776193=""
									name="page" type="hidden" value="2">
									<div data-v-52776193="" class="story-card__header">
										<div data-v-52776193="" class="story-card-info">
											<a data-v-52776193=""
												href="seller_story.do?seller_code=${list.seller_id}"
												target="_blank" class="artist-thumbnail"><img
												data-v-52776193="" alt="artist profile"
												src="${list.story_image[0]}"></a>
											<div data-v-52776193="" class="artist-info">
												<span data-v-52776193="" class="artist-name"><a
													data-v-52776193=""
													href="seller_story.do?seller_code=${list.seller_id}"
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
									href="seller_story.do?seller_code=${list.seller_id}"
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
								begin="${listLength}">
								<li data-v-52776193="" data-v-5ea8b349=""
									class="story-card card-style"><input data-v-52776193=""
									name="page" type="hidden" value="2">
									<div data-v-52776193="" class="story-card__header">
										<div data-v-52776193="" class="story-card-info">
											<a data-v-52776193="" href="seller_story.do?seller_code=${rightList.seller_id}" target="_blank"
												class="artist-thumbnail"><img data-v-52776193=""
												alt="artist profile"
												src="${rightList.story_image[0]}"></a>
											<div data-v-52776193="" class="artist-info">
												<span data-v-52776193="" class="artist-name"><a
													data-v-52776193="" href="seller_story.do?seller_code=${rightList.seller_id}" target="_blank">
														${rightList.seller_name } </a></span> <span data-v-52776193=""
													class="story-date">${rightList.story_date}</span>
											</div>
										</div>
										<button data-v-b534333e="" data-v-52776193="" type="button"
											class="follow"
											style="background-color: rgb(255, 255, 255); min-width: 63px; width: 63px; height: 24px; font-size: 10px; color: rgb(255, 123, 48); border: 1px solid rgb(255, 123, 48); border-radius: 4px;">
											<i data-v-b534333e="" class="idus-icon-plus"
												style="font-size: 12px;"></i> 팔로우
										</button>
									</div> <a data-v-52776193="" href="seller_story.do?seller_code=${rightList.seller_id}" target="_blank">
										<div data-v-52776193="" class="story-card__body">${rightList.story_context}</div>
										<div>
											<img src="${rightList.story_image[0]}">
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


		<!-- 페이징 -->
		<div class="paging" data-ui="paging" data-sync="false">
			<nav>
				<c:choose>
					<c:when test="${paging.nowPage eq 1 }">
						<span style="width: auto;">◀ 이전 |</span>
					</c:when>
					<c:when test="${paging.nowPage ne 1 }">
						<a
							href="story.do?nowPage=${paging.nowPage - 1 }&cntPerPage=${paging.cntPerPage}"
							style="width: auto;">◀ 이전 |</a>
					</c:when>
				</c:choose>
				<c:forEach begin="${paging.startPage }" end="${paging.endPage }"
					var="p">
					<c:choose>
						<c:when test="${p eq paging.nowPage }">
							<a
								href="story.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}"
								class="active" onclick="return false">${p }</a>
						</c:when>
						<c:when test="${p ne paging.nowPage }">
							<a
								href="story.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
						</c:when>
					</c:choose>
				</c:forEach>
				<c:choose>
					<c:when test="${paging.endPage eq paging.lastPage}">
						<span style="width: auto;">| 다음 ▶</span>
					</c:when>
					<c:when test="${paging.endPage ne paging.lastPage}">
						<a
							href="story.do?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}"
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
	<jsp:include page="footer.jsp" />
</body>
</html>