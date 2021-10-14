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

				<c:forEach var="list" items="${sellerList}">
					<li class="artist-list-item">
						<div class="card-style-profile ">
							<!-- <em class="icon-num" data-ranking="1">1</em> -->
							<div class="bordering">
								<div class="split">
									<div class="img-bg"
										style="background-image: url(https://image.idus.com/image/files/3714e211ace64e2ea2787e771d0579aa_720.jpg);">
									</div>
									<a class="img-profile"
										style="background-image: url('${list.seller_profile_img[0]}');"
										target="_blank"
										href="seller_goods.do?seller_code=${list.seller_code}"> </a>
								</div>
								<div class="split">
									<div class="area-txt">
										<a href="seller_goods.do?seller_code=${list.seller_code}"
											class="title" target="_blank">${list.seller_name }</a>
										<div class="ui_rating" data-ui="rating" data-value="5">
											<i class="fa fa-star" aria-hidden="true" style="color: #f5eb75;"></i>
											<i class="fa fa-star" aria-hidden="true" style="color: #f5eb75;"></i>
											<i class="fa fa-star" aria-hidden="true" style="color: #f5eb75;"></i>
											<i class="fa fa-star" aria-hidden="true" style="color: #f5eb75;"></i>
											<i class="fa fa-star" aria-hidden="true" style="color: #f5eb75;"></i>
										</div>
										<p class="desc">${list.seller_profile}</p>
									</div>
									<div class="area-btns">
										<div class="col">
											<a href="#" class="btn btn-s btn-white toggle-heart"
												data-name="starred-toolbar" data-starred-type="artist"
												data-init="" data-starred="" target="_blank"
												data-target-id="3d6bb4d7-6a97-4d42-b76f-83e75e1c8075"> <em
												class="txt">
												<i class="fa fa-bookmark" aria-hidden="true" style="font-size: 16px;"></i>&nbsp;&nbsp;팔로우
												</em> <em class="txt active"><i
													class="idus-icon-check" style="font-size: 12px;"></i> 팔로잉</em>
											</a>
										</div>
										<div class="col popular-artist-col">
											<a class="btn btn-s btn-white" target="_blank"
												href="seller_goods.do?seller_code=${list.seller_code}">
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
										<a href="detail_content.do" class="img-bg" target="_blank"
										data-original="http://image.idus.com/image/files/16923dfff30f4e42a2dd964ce3ce75f7_320.jpg"
										data-product-id="82fb28c8-7e6a-444f-b375-19fa10f464ae"
										style="background-image: url('https://idwith.s3.ap-northeast-2.amazonaws.com/writer/730645/goods/드로잉 에어팟 커플케이스💖버즈2 프로 생일선/전자3.jpg')"></a>
										<a href="detail_content.do" class="img-bg" target="_blank"
										data-original="https://image.idus.com/image/files/85e4924d54db42f8b9aae200fb741ce3_320.png"
										data-product-id="b772e5e8-345f-478b-ac62-a4300982bdb6"
										style="background-image: url('https://idwith.s3.ap-northeast-2.amazonaws.com/writer/730645/goods/장미(생화)/fl_a1.jpg')"></a>
										<a href="detail_content.do" class="img-bg" target="_blank"
										data-original="https://image.idus.com/image/files/7c7abeb01301497b8bdd81b71e654b94_320.jpg"
										data-product-id="046e334b-6b1d-451b-972a-a1601034f9f4"
										style="background-image: url('https://idwith.s3.ap-northeast-2.amazonaws.com/writer/730645/goods/장미(생화)/el_a1.jpg')"></a>
										<a href="detail_content.do" class="img-bg" target="_blank"
										data-original="http://image.idus.com/image/files/1c1a77e6221e43cb87d2ce01ae6a1288_320.jpg"
										data-product-id="ccbfbc67-578b-4379-b212-ce00c4adb118"
										style="background-image: url('https://idwith.s3.ap-northeast-2.amazonaws.com/writer/730645/goods/오렌지 쿠키/6bf1689c4b3c429eb136ebc5a3fd2ee7_1440.jpg')"></a>
									</li>
								</ul>
							</div>
						</div>
					</li>
				</c:forEach>
			</ul>

			<!--// artist-list -->
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
						href="seller_list.do?nowPage=${paging.nowPage - 1 }&cntPerPage=${paging.cntPerPage}"
						style="width: auto;">◀ 이전 |</a>
				</c:when>
			</c:choose>
			<c:forEach begin="${paging.startPage }" end="${paging.endPage }"
				var="p">
				<c:choose>
					<c:when test="${p eq paging.nowPage }">
						<a
							href="seller_list.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}"
							class="active" onclick="return false">${p }</a>
					</c:when>
					<c:when test="${p ne paging.nowPage }">
						<a
							href="seller_list.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
					</c:when>
				</c:choose>
			</c:forEach>
			<c:choose>
				<c:when test="${paging.endPage eq paging.lastPage}">
					<span style="width: auto;">| 다음 ▶</span>
				</c:when>
				<c:when test="${paging.endPage ne paging.lastPage}">
					<a
						href="seller_list.do?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}"
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
	<jsp:include page="footer.jsp" />
</body>
</html>