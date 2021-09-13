<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="resources/css/event_banner.css">
<link rel="stylesheet" href="resources/css/top.css">
<link rel="stylesheet" href="resources/css/idus.web.min.css">
<link rel="stylesheet" href="resources/css/vendor.client.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
	integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
	crossorigin="anonymous">
<title>아이디어스 임시 메인</title>
</head>
<body>
	<div class="wrap">
		<div class="head_banner_group">
			<!-- 상단 리본 배너 -->
			<div class="download-ribbon top" style="background-color: #ff7b30"
				data-download="root" data-download-type="isRibbon">
				<div class="inner-w">
					<a href="/w/join" class="download-ribbon-inner"> <img
						class="pc-img"
						src="https://image.idus.com/static/signup/web_benefit_banner.png">
					</a>
					<button class="download-ribbon-close" type="button">
						<i class="far fa-times-circle" aria-hidden="true"></i>
					</button>
				</div>
			</div>
		</div>
		<!-- <div id="skip-to-content"> <a href="#gnb">메뉴목록으로 바로가기</a> <a
                href="#content">컨텐츠로 바로가기</a> </div> -->

		<header id="header" class="header ">
			<input type="hidden" name="isLoggedIn" value="">
			<div class="top-navigation full-w">
				<div class="inner-w clf">
					<nav class="fr">
						<input type="text" id="current_user_email" class="hidden"
							name="current_user_email" value="" readonly="readonly"> <a
							id="gnb-login-button" href="#" class="nav-btn"
							data-log-object="login">로그인</a> <a href="#" class="nav-btn"
							data-log-object="member_join">회원가입</a> <a href="#"
							class="nav-btn" data-log-object="member__notice">공지사항</a> <a
							href="#" class="nav-btn" data-log-object="member_qna">1:1문의</a>

						<!-- <div class="nav-btn ui-dropdown">
                                    <button type="button" class="btn-dropdown">고객센터</button>
                                     <ul class="menu-dropdown">
                                        <li>
                                            <a href="/w/board/notice">공지사항</a>
                                        </li>
                                        <li>
                                            <a href="/w/board/faq">자주 묻는 질문</a>
                                        </li>
                                        <li>
                                            <a href="mailto:support@backpac.kr">메일로 문의</a>
                                        </li>
                                    </ul> 
                                </div> -->
					</nav>
				</div>
			</div>

			<div class="bg-wrapper" data-vue="SearchHeader">
				<div class="inner-w top">
					<h1 class="logo" style="margin-top: -20px;">
						<a href="/" class="icon-iduslogo"><img
							src="resources/images/header/logo.svg"
							alt="IDUS, Unique Lifestyle Guide"></a>
					</h1>

					<nav class="service-nav">
						<a href="header_goods.html" class="service active goods">작품</a> <a
							href="header_class.html" class="service">클래스</a>
					</nav>
					<div class="main-search">
						<form class="gnb-search-form">
							<input id="header-search" type="text" autocomplete="off"
								placeholder="추석할인을 검색해보세요"> <label class="searchLabel">
								<button type="submit" name="search">
									<i class="fas fa-search"></i>
								</button>
							</label>
						</form>
					</div>

					<nav class="profile-links">
						<a href="/w/me" class="btn"> <i class="far fa-user"></i> 내 정보
						</a> <a id="my-cart-button" href="/w/cart" class="btn"> <span
							class="cart-counter">0</span> <i class="fas fa-shopping-cart"></i>
							장바구니
						</a>
					</nav>

					<div class="bubble-space">
						<div class="bubble-speech bubble-center">
							<div class="message">오늘의 취미를 골라보세요!</div>
							<div class="triangle bottom center">
								<div class="before"></div>
								<div class="after"></div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="full-w gnb-scroll " data-ui="gnb-scroll"
				data-state="static">
				<div class="inner-w container_gnb" data-ui="gnb">
					<ul class="ui_gnb" data-state="" data-type="">
						<li class="ui_gnb__menu class-category"><span>카테고리</span>
							<div class="ui_gnb__submenu" style="width: 450px;">
								<ul style="width: 50%;">
									<li><a
										href="/w/main/category/5c6bc7d4-7760-4702-b63f-7f29eca479e3"
										data-log-label="product_category"
										data-log-object="5c6bc7d4-7760-4702-b63f-7f29eca479e3">디저트,
											베이커리, 떡</a> <i class="fas fa-chevron-right"></i></li>
									<li><a
										href="/w/main/category/613ac4c3-df73-4a0f-b3dd-362849dabb2a"
										data-log-label="product_category"
										data-log-object="613ac4c3-df73-4a0f-b3dd-362849dabb2a">음료
											(커피, 차 등)</a> <i class="fas fa-chevron-right"></i></li>
									<li><a
										href="/w/main/category/fa340e0b-f4b1-4aba-8d9c-a29086d5a8a4"
										data-log-label="product_category"
										data-log-object="fa340e0b-f4b1-4aba-8d9c-a29086d5a8a4">전통주</a>
										<i class="fas fa-chevron-right"></i></li>
									<li><a
										href="/w/main/category/b3f853b9-333d-4eec-ad04-e4604d9d501b"
										data-log-label="product_category"
										data-log-object="b3f853b9-333d-4eec-ad04-e4604d9d501b">수제
											반찬</a> <i class="fas fa-chevron-right"></i></li>
									<li><a
										href="/w/main/category/8daa0fc3-d370-46c5-a58b-9a0c71a6ae08"
										data-log-label="product_category"
										data-log-object="8daa0fc3-d370-46c5-a58b-9a0c71a6ae08">그 외
											수제먹거리</a> <i class="fas fa-chevron-right"></i></li>
									<li><a
										href="/w/main/category/4a8cbc36-3af8-4b75-af01-8795782df80d"
										data-log-label="product_category"
										data-log-object="4a8cbc36-3af8-4b75-af01-8795782df80d">농축수산물</a>
										<i class="fas fa-chevron-right"></i></li>
									<li><a
										href="/w/main/category/d9e8a56d-ae4c-4020-b043-9417fe26fbec"
										data-log-label="product_category"
										data-log-object="d9e8a56d-ae4c-4020-b043-9417fe26fbec">의류,
											홈웨어</a> <i class="fas fa-chevron-right"></i></li>
									<li><a
										href="/w/main/category/1616d42d-ea77-11e4-88d5-06530c0000b4"
										data-log-label="product_category"
										data-log-object="1616d42d-ea77-11e4-88d5-06530c0000b4">패션잡화</a>
										<i class="fas fa-chevron-right"></i></li>
									<li><a
										href="/w/main/category/a9970f75-ea75-11e4-8a46-06fd000000c2"
										data-log-label="product_category"
										data-log-object="a9970f75-ea75-11e4-8a46-06fd000000c2">지갑
											(지폐,카드,동전,명함)</a> <i class="fas fa-chevron-right"></i></li>
									<li><a
										href="/w/main/category/bc5f4be5-c6bc-11e3-8b03-06fd000000c2"
										data-log-label="product_category"
										data-log-object="bc5f4be5-c6bc-11e3-8b03-06fd000000c2">가방,
											파우치</a> <i class="fas fa-chevron-right"></i></li>
								</ul>
								<ul style="width: 50%;">
									<li><a
										href="/w/main/category/bc6a17ba-ea75-11e4-8878-06a6fa0000b9"
										data-log-label="product_category"
										data-log-object="bc6a17ba-ea75-11e4-8878-06a6fa0000b9">시계</a>
										<i class="fas fa-chevron-right"></i></li>
									<li><a
										href="/w/main/category/8b4bf95d-c6bc-11e3-8577-06f4fe0000b5"
										data-log-label="product_category"
										data-log-object="8b4bf95d-c6bc-11e3-8577-06f4fe0000b5">섬유,
											퀼트</a> <i class="fas fa-chevron-right"></i></li>
									<li><a
										href="/w/main/category/1fc3c71a-88d6-4333-a09e-178e85bb742f"
										data-log-label="product_category"
										data-log-object="1fc3c71a-88d6-4333-a09e-178e85bb742f">남성
											수제화</a> <i class="fas fa-chevron-right"></i></li>
									<li><a
										href="/w/main/category/65477a55-7f4f-4a0f-9b05-dcaa271a8385"
										data-log-label="product_category"
										data-log-object="65477a55-7f4f-4a0f-9b05-dcaa271a8385">여성
											수제화</a> <i class="fas fa-chevron-right"></i></li>
									<li><a
										href="/w/main/category/0556009b-f9c6-11e3-8363-06fd000000c2"
										data-log-label="product_category"
										data-log-object="0556009b-f9c6-11e3-8363-06fd000000c2">육아,
											아동</a> <i class="fas fa-chevron-right"></i></li>
									<li><a
										href="/w/main/category/387867a4-0da4-11e4-873e-06f4fe0000b5"
										data-log-label="product_category"
										data-log-object="387867a4-0da4-11e4-873e-06f4fe0000b5">반지</a>
										<i class="fas fa-chevron-right"></i></li>
									<li><a
										href="/w/main/category/ac599662-0cdf-11e4-85f1-06fd000000c2"
										data-log-label="product_category"
										data-log-object="ac599662-0cdf-11e4-85f1-06fd000000c2">귀걸이</a>
										<i class="fas fa-chevron-right"></i></li>
									<li><a
										href="/w/main/category/aef50134-0cdf-11e4-8182-06530c0000b4"
										data-log-label="product_category"
										data-log-object="aef50134-0cdf-11e4-8182-06530c0000b4">목걸이</a>
										<i class="fas fa-chevron-right"></i></li>
									<li><a
										href="/w/main/category/b12b42eb-0cdf-11e4-85f1-06fd000000c2"
										data-log-label="product_category"
										data-log-object="b12b42eb-0cdf-11e4-85f1-06fd000000c2">팔찌</a>
										<i class="fas fa-chevron-right"></i></li>
									<li><a
										href="/w/main/category/f0475fb1-c6bb-11e3-954e-06a6fa0000b9"
										data-log-label="product_category"
										data-log-object="f0475fb1-c6bb-11e3-954e-06a6fa0000b9">그 외
											액세서리</a> <i class="fas fa-chevron-right"></i></li>
								</ul>

							</div></li>
						<li class="ui_gnb__menu " data-state="active"><a href="/">홈</a>
						</li>
						<li class="ui_gnb__menu " data-state=""><a
							href="/w/main/popular-category">인기 작품</a></li>
						<li class="ui_gnb__menu " data-state=""><a href="/w/story">스토리</a>
						</li>
						<li class="ui_gnb__menu " data-state=""><a
							href="/w/main/artist">인기작가</a></li>
					</ul>
					<button class="ui_btn toggle_gnb" aria-label="toggle nav ui">
						<i class="idus-icon-arrow-down"></i>
					</button>
				</div>
			</div>
		</header>
</body>
</html>