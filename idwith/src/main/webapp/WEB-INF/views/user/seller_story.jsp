<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="resources/css/seller_story.css">
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
				<a data-v-825a8b32="" href="seller_profile.do" class="tab">프로필</a> <a
					data-v-825a8b32="" href="seller_story.do" class="tab active">스토리</a>
				<a data-v-825a8b32="" href="seller_goods.do" class="tab">판매작품</a> <a
					data-v-825a8b32="" href="seller_class.do" class="tab">클래스</a> <a
					data-v-825a8b32="" href="seller_review.do" class="tab">구매후기</a>
			</nav>
		</div>
		<div class="contents-container">
			<div data-v-5ea8b349="" class="story-list">
				<div data-v-5ea8b349="" style="display: flex; margin-left: -16px;">
					<div class=""
						style="box-sizing: border-box; background-clip: padding-box; width: 50%; border-width: 0px 0px 0px 16px; border-style: solid; border-color: transparent; border-image: initial;">


						<c:forEach var="info" items="${info}">
							<li data-v-52776193="" data-v-5ea8b349=""
								class="story-card card-style"><input data-v-52776193=""
								name="page" type="hidden" value="2">
								<div data-v-52776193="" class="story-card__header">
									<div data-v-52776193="" class="story-card-info">
										<a data-v-52776193="" href="seller_goods.do" target="_blank"
											class="artist-thumbnail"><img data-v-52776193=""
											alt="artist profile"
											src="https://image.idus.com/image/files/c6803110f70247c088b3530380b6ff40_320.jpg"></a>
										<div data-v-52776193="" class="artist-info">
											<span data-v-52776193="" class="artist-name"><a
												data-v-52776193="" href="seller_goods.do" target="_blank">
													${info.seller_name } </a></span> <span data-v-52776193=""
												class="story-date">
												<!-- 작가 스토리 작성시간 -->
											</span>
										</div>
									</div>
									<!---->
								</div> <a data-v-52776193="" href="##" target="_blank"><div
										data-v-52776193="" class="story-card__body">
										<!-- 작가 스토리 내용 -->
									</div>
									<div data-v-2ce2581b="" data-v-52776193="" class="image-group">
										<div data-v-2ce2581b="" class="image-container">
											<div data-v-2ce2581b="" class="image"
												style="background-image: url(&quot;https://image.idus.com/image/files/011da082a78c46a08ab9cf6e5ca26da8_512.jpg&quot;); max-height: 205px;"></div>
											<!---->
											<!---->
										</div>
										<div data-v-2ce2581b="" class="image-container">
											<div data-v-2ce2581b="" class="image"
												style="background-image: url(&quot;https://image.idus.com/image/files/8c110f3632be491ababc66e62dc9fdcb_512.jpg&quot;); max-height: 205px;"></div>
											<!---->
											<!---->
										</div>
										<div data-v-2ce2581b="" class="image-container last">
											<div data-v-2ce2581b="" class="image"
												style="background-image: url(&quot;https://image.idus.com/image/files/6d969cf107e64dbb98f902828af33652_512.jpg&quot;); max-height: 205px;"></div>
											<div data-v-2ce2581b="" class="image-curtain"></div>
											<div data-v-2ce2581b="" class="rest-image-txt">+3</div>
										</div>
									</div></a></li>
						</c:forEach>
					</div>
					<div class=""
						style="box-sizing: border-box; background-clip: padding-box; width: 50%; border-width: 0px 0px 0px 16px; border-style: solid; border-color: transparent; border-image: initial;">


						<c:forEach var="info" items="${info}">
							<li data-v-52776193="" data-v-5ea8b349=""
								class="story-card card-style"><input data-v-52776193=""
								name="page" type="hidden" value="2">
								<div data-v-52776193="" class="story-card__header">
									<div data-v-52776193="" class="story-card-info">
										<a data-v-52776193="" href="seller_goods.do" target="_blank"
											class="artist-thumbnail"><img data-v-52776193=""
											alt="artist profile"
											src="https://image.idus.com/image/files/c6803110f70247c088b3530380b6ff40_320.jpg"></a>
										<div data-v-52776193="" class="artist-info">
											<span data-v-52776193="" class="artist-name"><a
												data-v-52776193="" href="seller_goods.do" target="_blank">
													${info.seller_name } </a></span> <span data-v-52776193=""
												class="story-date">
												<!-- 작가 스토리 작성시간 -->
											</span>
										</div>
									</div>
									<!---->
								</div> <a data-v-52776193="" href="##" target="_blank"><div
										data-v-52776193="" class="story-card__body">
										<!-- 작가 스토리 내용 -->
									</div>
									<div data-v-2ce2581b="" data-v-52776193="" class="image-group">
										<div data-v-2ce2581b="" class="image-container">
											<div data-v-2ce2581b="" class="image"
												style="background-image: url(&quot;https://image.idus.com/image/files/011da082a78c46a08ab9cf6e5ca26da8_512.jpg&quot;); max-height: 205px;"></div>
											<!---->
											<!---->
										</div>
										<div data-v-2ce2581b="" class="image-container">
											<div data-v-2ce2581b="" class="image"
												style="background-image: url(&quot;https://image.idus.com/image/files/8c110f3632be491ababc66e62dc9fdcb_512.jpg&quot;); max-height: 205px;"></div>
											<!---->
											<!---->
										</div>
										<div data-v-2ce2581b="" class="image-container last">
											<div data-v-2ce2581b="" class="image"
												style="background-image: url(&quot;https://image.idus.com/image/files/6d969cf107e64dbb98f902828af33652_512.jpg&quot;); max-height: 205px;"></div>
											<div data-v-2ce2581b="" class="image-curtain"></div>
											<div data-v-2ce2581b="" class="rest-image-txt">+3</div>
										</div>
									</div></a></li>
						</c:forEach>

					</div>

				</div>
			</div>
		</div>
	</section>
	<jsp:include page="footer.jsp" />
</body>
</html>