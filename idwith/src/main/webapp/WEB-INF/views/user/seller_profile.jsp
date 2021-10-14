<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디위드 | 작가 프로필</title>
<!-- 파비콘 이미지 설정 -->
<link rel="shortcut icon" type="image/x-icon"
	href="resources/images/title/icon_300.PNG">
	
<link rel="stylesheet" href="resources/css/seller_profile.css">
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
								class="ui_rating fr"> <i class="fa fa-star" aria-hidden="true" style="color: #f5eb75;"></i>
							</span> <span data-v-2618eab2=""> 4.85<!-- 작가 평균 별점 --> </span> <span data-v-2618eab2="">
								(3,768)<!-- 별점 작성한 회원의 수 --> </span>
						</div>
					</div>
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
			<div data-v-825a8b32="" data-trigger="fixposition"
				style="height: 0px;"></div>
			<nav data-v-825a8b32="" data-ui="artist-home-tab-control"
				class="tab-group" data-ui-position="default">
				
				<a data-v-825a8b32=""
					href="seller_profile.do?seller_code=${seller_code}"
					class="tab active">프로필</a> <a data-v-825a8b32=""
					href="seller_story.do?seller_code=${seller_code}"
					class="tab">스토리</a> <a data-v-825a8b32=""
					href="seller_goods.do?seller_code=${seller_code}"
					class="tab">판매작품</a> <a data-v-825a8b32=""
					href="seller_class.do?seller_code=${seller_code}"
					class="tab">클래스</a> <a data-v-825a8b32=""
					href="seller_review.do?seller_code=${seller_code}"
					class="tab">구매후기</a>
			</nav>
		</div>
		<div class="contents-container">
			<div data-v-fda01bb2="" class="profile-section">
				<!---->
				<div data-v-fda01bb2="" class="profile-info">
					<p data-v-fda01bb2="" class="title">History</p>
					<div data-v-fda01bb2="" class="contents">
						<div data-v-fda01bb2="" class="txt">${info.seller_history}</div>
						<div data-v-fda01bb2="" class="img"
							style="background-image: url(&quot;https://image.idus.com/image/files/9429acb8ee22457e9249bc8908719cdb.jpg&quot;);"></div>
					</div>
				</div>
				<div data-v-fda01bb2="" class="profile-info">
					<p data-v-fda01bb2="" class="title">Idea</p>
					<div data-v-fda01bb2="" class="contents">
						<div data-v-fda01bb2="" class="txt">${info.seller_idea}</div>
						<div data-v-fda01bb2="" class="img"
							style="background-image: url(&quot;http://image.idus.com/image/files/74e1dc51ee154690ba6c02e5e8d284a8.jpg&quot;);"></div>
					</div>
				</div>
				<div data-v-fda01bb2="" class="profile-info">
					<p data-v-fda01bb2="" class="title">Identity</p>
					<div data-v-fda01bb2="" class="contents">
						<div data-v-fda01bb2="" class="txt">${info.seller_identity}</div>
						<div data-v-fda01bb2="" class="img"
							style="background-image: url(&quot;https://image.idus.com/image/files/a92d34302b7b4867892bc3b125ebe55b.jpg&quot;);"></div>
					</div>
				</div>
				<div data-v-fda01bb2="" class="profile-info"
					style="border-bottom: 1px solid rgb(217, 217, 217); padding-bottom: 48px;">
					<p data-v-fda01bb2="" class="title">Ideal</p>
					<div data-v-fda01bb2="" class="contents">
						<div data-v-fda01bb2="" class="txt">${info.seller_ideal}</div>
						<div data-v-fda01bb2="" class="img"
							style="background-image: url(&quot;https://image.idus.com/image/files/e9c2eb2776f8408f8861f5ee107a0271.jpg&quot;);"></div>
					</div>
				</div>
				<!---->
				
			</div>
		</div>
	</section>
	<jsp:include page="footer.jsp" />
</body>
</html>