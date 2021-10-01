<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="resources/css/seller_class.css">
<link rel="stylesheet" href="resources/css/common.css">
<link rel="stylesheet" href="resources/css/idus.web.min.css">
<link rel="stylesheet" href="resources/css/vendor.client.min.css">
</head>
<body>
	<jsp:include page="header_goods.jsp" />
	<jsp:include page="seller_main.jsp" />
	<section class="artist-contents">
		<div data-v-825a8b32="">
			<div data-v-825a8b32="" data-trigger-detail="true"></div>
			<div data-v-825a8b32="" data-trigger="fixposition"
				style="height: 0px;"></div>
			<nav data-v-825a8b32="" data-ui="artist-home-tab-control"
				class="tab-group" data-ui-position="default">
				<a data-v-825a8b32="" href="seller_profile.do" class="tab">프로필</a> <a
					data-v-825a8b32="" href="seller_story.do" class="tab">스토리</a> <a
					data-v-825a8b32="" href="seller_goods.do" class="tab">판매작품</a> <a
					data-v-825a8b32="" href="seller_class.do" class="tab active">클래스</a>
				<a data-v-825a8b32="" href="seller_review.do" class="tab">구매후기</a>
			</nav>
		</div>
		<div class="contents-container">

			<c:choose>
				<c:when test="${ classCheck eq true }">

					<div data-v-71d47198="" class="class-list-container">
						<p data-v-71d47198="" class="class-num">
							<strong data-v-71d47198="">5개</strong>의 클래스
						</p>
						<ul data-v-71d47198="" class="class-list">
							<c:forEach var="classList" items="${classList}">
								<li data-v-71d47198=""><div data-v-796f1feb=""
										data-v-508d53c8="" data-v-71d47198=""
										class="base-card card--vertical artist-home-class">
										<a data-v-796f1feb="" href="class_detail_content.do"
											target="_blank"><div data-v-796f1feb=""
												class="card-thumb-cover">
												<div data-v-508d53c8="" data-v-796f1feb="" class="thumb-img"
													style="background-image: url(&quot;https://image.idus.com/image/files/d0f8f21b622140248e0f159568914890_720.png&quot;);"></div>
												<div data-v-508d53c8="" data-v-796f1feb=""
													class="region-badge offline"><!-- 오프라인 지역 --></div>
												<div data-v-508d53c8="" data-v-796f1feb="" class="bookmark">
													<button data-v-488f5f82="" data-v-508d53c8=""
														aria-label="찜하기" class="full-button" data-v-796f1feb=""
														style="width: 24px; height: 24px;">
														<i data-v-508d53c8="" data-v-488f5f82=""
															class="sp-icon icon-favorite"></i>
													</button>
												</div>
											</div>
											<div data-v-796f1feb=""
												class="card-info artist-home-class-info">
												<div data-v-508d53c8="" data-v-796f1feb="" class="label">
													${classList.class_category}</div>
												<div data-v-508d53c8="" data-v-796f1feb=""
													class="class-name">${classList.class_name}</div>
											</div></a>
									</div></li>
							</c:forEach>
						</ul>
					</div>
				</c:when>
				<c:when test="${ classCheck eq false }">
					<div class="empty-data">
						<i class="idus-icon-logo-empty"></i> 작가님의 클래스가 없습니다.
					</div>
				</c:when>
			</c:choose>
		</div>
	</section>
	<jsp:include page="footer.jsp" />
</body>
</html>