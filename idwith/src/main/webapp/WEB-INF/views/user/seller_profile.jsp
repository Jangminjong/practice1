<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="resources/css/seller_profile.css">
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
				<div data-v-fda01bb2="" class="comments-area">
					<div data-v-fda01bb2="" class="comments-header">
						<p data-v-fda01bb2="" class="comments-title">댓글</p>
						<!---->
					</div>
					<div data-v-fda01bb2="" class="comments-contents">
						<ul data-v-fda01bb2="" class="comments">
							<li data-v-fda01bb2="" class="comment-wrapper"><div
									data-v-fda01bb2="" class="comment">
									<div data-v-fda01bb2="" class="writer-thumbnail"
										style="background-image: url(&quot;http://image.idus.com/image/files/3902d4ca9be44597a9f79fe6f7f4e4a2_144.jpg&quot;);"></div>
									<div data-v-fda01bb2="" class="contents-area">
										<span data-v-fda01bb2="" class="writer-name"> jud**** </span>
										<!---->
										<p data-v-fda01bb2="" class="comment-contents">뛰어놀 수 있는
											돼지들이라니요...! 죽기전까지만이라도 동물들이 행복을 보장해주는 농장을 꿈꿨었는데 우리나라에도 존재한다는
											사실이 놀랍네요!😀😀 존경합니다</p>
									</div>
								</div> <!----></li>
							<li data-v-fda01bb2="" class="comment-wrapper">
								<!---->
								<div data-v-fda01bb2="" class="reply-comment">
									<div data-v-fda01bb2="" class="writer-info">
										<div data-v-fda01bb2="" class="writer-thumbnail"
											style="background-image: url(&quot;https://image.idus.com/image/files/c6803110f70247c088b3530380b6ff40.jpg&quot;);"></div>
										<span data-v-fda01bb2="" class="writer-name"> 초은농장 </span> <img
											data-v-fda01bb2="" alt="작가 아이콘"
											src="/resources/images/seller_profile/icon-seller.svg"
											class="writer-icon">
										<!---->
									</div>
									<p data-v-fda01bb2="" class="comment-contents">오지수님 초은농장 홈피
										동영상을 보셔요~^^</p>
								</div>
							</li>
							<li data-v-fda01bb2="" class="comment-wrapper"><div
									data-v-fda01bb2="" class="comment">
									<div data-v-fda01bb2="" class="writer-thumbnail"
										style="background-image: url(&quot;http://image.idus.com/image/files/40c493d070b94d0d9e7203246b33cac3_144.jpg&quot;);"></div>
									<div data-v-fda01bb2="" class="contents-area">
										<span data-v-fda01bb2="" class="writer-name"> 아리아나 </span>
										<!---->
										<p data-v-fda01bb2="" class="comment-contents">좋은환경에서 키운
											돼지라 믿고주문했습니다~~^^</p>
									</div>
								</div> <!----></li>
							<li data-v-fda01bb2="" class="comment-wrapper">
								<!---->
								<div data-v-fda01bb2="" class="reply-comment">
									<div data-v-fda01bb2="" class="writer-info">
										<div data-v-fda01bb2="" class="writer-thumbnail"
											style="background-image: url(&quot;https://image.idus.com/image/files/c6803110f70247c088b3530380b6ff40.jpg&quot;);"></div>
										<span data-v-fda01bb2="" class="writer-name"> 초은농장 </span> <img
											data-v-fda01bb2="" alt="작가 아이콘"
											src="/resources/images/seller_profile/icon-seller.svg"
											class="writer-icon">
										<!---->
									</div>
									<p data-v-fda01bb2="" class="comment-contents">황연하님 네
										감사합니다~~^^</p>
								</div>
							</li>
							<li data-v-fda01bb2="" class="comment-wrapper"><div
									data-v-fda01bb2="" class="comment">
									<div data-v-fda01bb2="" class="writer-thumbnail"
										style="background-image: url(&quot;http://image.idus.com/image/files/40c493d070b94d0d9e7203246b33cac3_144.jpg&quot;);"></div>
									<div data-v-fda01bb2="" class="contents-area">
										<span data-v-fda01bb2="" class="writer-name"> 빠담 </span>
										<!---->
										<p data-v-fda01bb2="" class="comment-contents">동물복지와 좋은
											고기를 먹을수 있어서 좋아요~ 좋은곳을 찾았네용 앞으로 잘부탁 드려요!^^7</p>
									</div>
								</div> <!----></li>
							<li data-v-fda01bb2="" class="comment-wrapper">
								<!---->
								<div data-v-fda01bb2="" class="reply-comment">
									<div data-v-fda01bb2="" class="writer-info">
										<div data-v-fda01bb2="" class="writer-thumbnail"
											style="background-image: url(&quot;https://image.idus.com/image/files/c6803110f70247c088b3530380b6ff40.jpg&quot;);"></div>
										<span data-v-fda01bb2="" class="writer-name"> 초은농장 </span> <img
											data-v-fda01bb2="" alt="작가 아이콘"
											src="/resources/images/seller_profile/icon-seller.svg"
											class="writer-icon">
										<!---->
									</div>
									<p data-v-fda01bb2="" class="comment-contents">빠담님
										🙇‍♀️🙇‍♀️</p>
								</div>
							</li>
							<li data-v-fda01bb2="" class="comment-wrapper"><div
									data-v-fda01bb2="" class="comment">
									<div data-v-fda01bb2="" class="writer-thumbnail"
										style="background-image: url(&quot;https://image.idus.com/image/files/fcca86bb40544332ae21670d159d8993_144.jpg&quot;);"></div>
									<div data-v-fda01bb2="" class="contents-area">
										<span data-v-fda01bb2="" class="writer-name"> 김지혜 </span>
										<!---->
										<p data-v-fda01bb2="" class="comment-contents">주문하고싶은데
											금요일에 집에 가는데 목요일이나 금요일 발송가능할까요?</p>
									</div>
								</div> <!----></li>
							<li data-v-fda01bb2="" class="comment-wrapper">
								<!---->
								<div data-v-fda01bb2="" class="reply-comment">
									<div data-v-fda01bb2="" class="writer-info">
										<div data-v-fda01bb2="" class="writer-thumbnail"
											style="background-image: url(&quot;https://image.idus.com/image/files/c6803110f70247c088b3530380b6ff40.jpg&quot;);"></div>
										<span data-v-fda01bb2="" class="writer-name"> 초은농장 </span> <img
											data-v-fda01bb2="" alt="작가 아이콘"
											src="/resources/images/seller_profile/icon-seller.svg"
											class="writer-icon">
										<!---->
									</div>
									<p data-v-fda01bb2="" class="comment-contents">김지혜님 주문후
										원하시는 도착일을 적어주세요~</p>
								</div>
							</li>
							<li data-v-fda01bb2="" class="comment-wrapper"><div
									data-v-fda01bb2="" class="comment">
									<div data-v-fda01bb2="" class="writer-thumbnail"
										style="background-image: url(&quot;https://image.idus.com/image/files/fb95ebdfb30b4f6bb08def8c38de3e85_144.jpg&quot;);"></div>
									<div data-v-fda01bb2="" class="contents-area">
										<span data-v-fda01bb2="" class="writer-name"> 쑥이! </span>
										<!---->
										<p data-v-fda01bb2="" class="comment-contents">믿음이가요^^
											이제부터 동네 정육점 안 가요. 초은농장님의 고기가 너무 맛나서 전 계속 주문해서 먹으려고요^^ 끝까지
											화이팅^^!</p>
									</div>
								</div> <!----></li>
							<li data-v-fda01bb2="" class="comment-wrapper">
								<!---->
								<div data-v-fda01bb2="" class="reply-comment">
									<div data-v-fda01bb2="" class="writer-info">
										<div data-v-fda01bb2="" class="writer-thumbnail"
											style="background-image: url(&quot;https://image.idus.com/image/files/c6803110f70247c088b3530380b6ff40.jpg&quot;);"></div>
										<span data-v-fda01bb2="" class="writer-name"> 초은농장 </span> <img
											data-v-fda01bb2="" alt="작가 아이콘"
											src="/resources/images/seller_profile/icon-seller.svg"
											class="writer-icon">
										<!---->
									</div>
									<p data-v-fda01bb2="" class="comment-contents">쑥이!님
										감사합니다~~^^</p>
								</div>
							</li>
							<li data-v-fda01bb2="" class="comment-wrapper"><div
									data-v-fda01bb2="" class="comment">
									<div data-v-fda01bb2="" class="writer-thumbnail"
										style="background-image: url(&quot;https://image.idus.com/image/files/35f58bca04b84b82859eac750c02507b_144.jpg&quot;);"></div>
									<div data-v-fda01bb2="" class="contents-area">
										<span data-v-fda01bb2="" class="writer-name"> 다르시 </span>
										<!---->
										<p data-v-fda01bb2="" class="comment-contents">가브리살은 판매
											안하시나요? 만원 이상 배송비 무료라서 IDUS 에서만 주문하거든요 ㅠㅠ</p>
									</div>
								</div> <!----></li>
							<li data-v-fda01bb2="" class="comment-wrapper">
								<!---->
								<div data-v-fda01bb2="" class="reply-comment">
									<div data-v-fda01bb2="" class="writer-info">
										<div data-v-fda01bb2="" class="writer-thumbnail"
											style="background-image: url(&quot;https://image.idus.com/image/files/c6803110f70247c088b3530380b6ff40.jpg&quot;);"></div>
										<span data-v-fda01bb2="" class="writer-name"> 초은농장 </span> <img
											data-v-fda01bb2="" alt="작가 아이콘"
											src="/resources/images/seller_profile/icon-seller.svg"
											class="writer-icon">
										<!---->
									</div>
									<p data-v-fda01bb2="" class="comment-contents">다르시님 조만간
										특수부위 준비예정입니다~^^</p>
								</div>
							</li>
							<li data-v-fda01bb2="" class="comment-wrapper"><div
									data-v-fda01bb2="" class="comment">
									<div data-v-fda01bb2="" class="writer-thumbnail"
										style="background-image: url(&quot;http://image.idus.com/image/files/d247655ca3e545e89a48a43aa9318b3f_144.jpg&quot;);"></div>
									<div data-v-fda01bb2="" class="contents-area">
										<span data-v-fda01bb2="" class="writer-name"> 필수 </span>
										<!---->
										<p data-v-fda01bb2="" class="comment-contents">네이버에서
											하시는것처럼 지방은 안파시나요? ㅎㅎ 너무 잘 먹고 있습니다</p>
									</div>
								</div> <!----></li>
							<li data-v-fda01bb2="" class="comment-wrapper">
								<!---->
								<div data-v-fda01bb2="" class="reply-comment">
									<div data-v-fda01bb2="" class="writer-info">
										<div data-v-fda01bb2="" class="writer-thumbnail"
											style="background-image: url(&quot;https://image.idus.com/image/files/c6803110f70247c088b3530380b6ff40.jpg&quot;);"></div>
										<span data-v-fda01bb2="" class="writer-name"> 초은농장 </span> <img
											data-v-fda01bb2="" alt="작가 아이콘"
											src="/resources/images/seller_profile/icon-seller.svg"
											class="writer-icon">
										<!---->
									</div>
									<p data-v-fda01bb2="" class="comment-contents">필수님 네 요기는
										없어용^^;</p>
								</div>
							</li>
							<li data-v-fda01bb2="" class="comment-wrapper"><div
									data-v-fda01bb2="" class="comment">
									<div data-v-fda01bb2="" class="writer-thumbnail"
										style="background-image: url(&quot;https://image.idus.com/image/files/40c493d070b94d0d9e7203246b33cac3_144.jpg&quot;);"></div>
									<div data-v-fda01bb2="" class="contents-area">
										<span data-v-fda01bb2="" class="writer-name"> 이채림 </span>
										<!---->
										<p data-v-fda01bb2="" class="comment-contents">방금 대패삼겹 이랑
											벌ㅈㅂ삼겹1 수육삼겹1 주문한 사람인데 배공지 ㅓㅇ보바꿀수있나요ㅠㅠ?</p>
									</div>
								</div> <!----></li>
							<li data-v-fda01bb2="" class="comment-wrapper">
								<!---->
								<div data-v-fda01bb2="" class="reply-comment">
									<div data-v-fda01bb2="" class="writer-info">
										<div data-v-fda01bb2="" class="writer-thumbnail"
											style="background-image: url(&quot;https://image.idus.com/image/files/c6803110f70247c088b3530380b6ff40.jpg&quot;);"></div>
										<span data-v-fda01bb2="" class="writer-name"> 초은농장 </span> <img
											data-v-fda01bb2="" alt="작가 아이콘"
											src="/resources/images/seller_profile/icon-seller.svg"
											class="writer-icon">
										<!---->
									</div>
									<p data-v-fda01bb2="" class="comment-contents">이채림님 네
										가능합니다~^^</p>
								</div>
							</li>
							<li data-v-fda01bb2="" class="comment-wrapper"><div
									data-v-fda01bb2="" class="comment">
									<div data-v-fda01bb2="" class="writer-thumbnail"
										style="background-image: url(&quot;http://image.idus.com/image/files/40c493d070b94d0d9e7203246b33cac3_144.jpg&quot;);"></div>
									<div data-v-fda01bb2="" class="contents-area">
										<span data-v-fda01bb2="" class="writer-name"> 이수현 </span>
										<!---->
										<p data-v-fda01bb2="" class="comment-contents">돈마호크..
											주문했습니다 자까님 너무 기대 됩니다!!!!!!!! 꺄 !!!ㅎㅎㅎ</p>
									</div>
								</div> <!----></li>
						</ul>
					</div>
					<form data-v-fda01bb2="" class="comments-form">
						<input data-v-fda01bb2="" type="text" placeholder="댓글을 남겨주세요"
							class="comments-input">
						<button data-v-fda01bb2="" type="button" class="submit-btn">
							등록</button>
					</form>
				</div>
			</div>
		</div>
	</section>
	<jsp:include page="footer.jsp" />
</body>
</html>