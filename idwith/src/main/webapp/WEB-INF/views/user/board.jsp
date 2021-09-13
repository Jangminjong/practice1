<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link rel="stylesheet" href="resources/css/idus.web.min.css">
<link rel="stylesheet" href="resources/css/vendor.client.min.css">
<link rel="stylesheet" href="resourcws/css/board.css">
<!-- 파비콘 이미지 설정 -->
<link rel="shortcut icon" type="image/x-icon"
	href="resources/images/title/icon_300.PNG">
</head>
<body>
	<div class="wrap">
		<jsp:include page="header_goods.jsp" />
		<div id="content" class="content" data-gnb-show="true">
			<div class="title-style-block inner-w">
				<h2 class="txt">공지사항</h2>
			</div>
			<div class="inner-w mobile-full">
				<nav class="cnn-list">
					<a href="board_detail.do">
						<div>
							<span style="color: red;"></span> <strong>❑ <span
								style="color: #ff6600;">[추석선물 89% 예약할인 ⏰곧 마감!]</span>&nbsp;추석선물
								BEST가 1천원부터!?
							</strong>
						</div>
					</a> <a href="board_detail.do">
						<div>
							<span style="color: red;"></span> ❑ 🔥<strong>추석 최강혜택</strong>🔥<strong>&nbsp;</strong><span
								style="color: #ff6600;"><strong>누구나&nbsp;2만원 즉시
									할인</strong>!</span><strong>&nbsp;(선착순 2,000명)</strong>
						</div>
					</a> <a href="board_detail.do">
						<div>
							<span style="color: red;"></span> ❑ <strong><span
								style="color: #000000;">[EVENT]&nbsp;</span>9월줍줍 신청만 해도 1만원 쿠폰
								발급!💌</strong>&nbsp;쿠폰 받고 추석 맞이하자
						</div>
					</a> <a href="board_detail.do">
						<div>
							<span style="color: red;"></span> <span
								style="color: #333333; font-family: 'Nanum Barun Gothic', sans-serif;">❑&nbsp;</span><span
								style="color: #333333; font-family: 'Nanum Barun Gothic', sans-serif;">🔔<strong>9월의
									할인</strong>🔔 가을감성 찐하게 느끼게해줄&nbsp;<strong
								style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif;"><span
									style="color: #ff6d23;">가을꿀템 지금 79% 할인 중</span></strong></span>
						</div>
					</a> <a href="board_detail.do">
						<div>
							<span style="color: red;"></span> ❑&nbsp;<strong>[EVENT]&nbsp;</strong><strong><span
								style="color: #ff6d23;">"요거" <span
									style="color: #000000;">하면</span></span></strong><strong>&nbsp;매주 화요일
								[1만원 쿠폰] 당첨!</strong><strong>🎁</strong>
						</div>
					</a> <a href="board_detail.do">
						<div>
							<span style="color: red;"></span> ❑&nbsp;<span
								style="color: #ff6600;"><strong>[2021년 9월]</strong></span>&nbsp;카드사
							무이자 할부 안내
						</div>
					</a> <a href="board_detail.do">
						<div>
							<span style="color: red;">[공지]</span> ❑ 이용 중 발견하신 오류 또는 기능상의 불편,
							건의사항을 알려주세요.
						</div>
					</a> <a href="board_detail.do">
						<div>
							<span style="color: red;">[공지]</span> ❑ 개인정보처리방침 개정 안내(2021년 09월
							01일)
						</div>
					</a> <a href="board_detail.do">
						<div>
							<span style="color: red;">[공지]</span> ❑ 개인정보처리방침 개정 안내(2021년 08월
							02일)
						</div>
					</a> <a href="board_detail.do">
						<div>
							<span style="color: red;"></span> <span
								style="font-variant-ligatures: normal; orphans: 2; widows: 2;">❑
								[초대왕 안내] </span>10만원의 주인공! 8<strong>월의 초대왕 TOP5</strong>를 발표합니다.(매월 1일
							발표)
						</div>
					</a> <a href="board_detail.do">
						<div>
							<span style="color: red;"></span> ❑ <span
								style="color: #484848; font-family: 'Noto Sans KR', sans-serif;">🌈5만원
								쿠폰🌈 취미클래스 무제한스트리밍 👉🏻</span><span
								style="text-decoration: underline; color: #ff6600;"><span
								style="font-family: 'Noto Sans KR', sans-serif;">무료로 바로
									시작</span></span>
						</div>
					</a> <a href="board_detail.do">
						<div>
							<span style="color: red;"></span> ❑&nbsp;매일 매일 도착하는 스타일 제안
						</div>
					</a> <a href="board_detail.do">
						<div>
							<span style="color: red;">[공지]</span> ❑ 온라인 클래스 이용약관 개정 안내(2021년
							7월 1일)
						</div>
					</a> <a href="board_detail.do">
						<div>
							<span style="color: red;">[공지]</span> ❑&nbsp; 개인정보처리방침 개정
							안내(2021년 6월 21일)
						</div>
					</a> <a href="board_detail.do">
						<div>
							<span style="color: red;">[공지]</span> ❑ 사입 및 판매 부적합 작품 제보 절차 안내
						</div>
					</a> <a href="board_detail.do">
						<div>
							<span style="color: red;"></span> ❑&nbsp;<strong
								style="color: #ff6d23;">[작가 입점 안내]</strong><strong
								style="color: #ff6d23;">&nbsp;</strong> 금손이라면 누구나 작가가 될 수 있습니다.
						</div>
					</a> <a href="board_detail.do">
						<div>
							<span style="color: red;"></span> ❑&nbsp; 개인정보처리방침 개정 안내(2021년 3월
							16일)
						</div>
					</a> <a href="board_detail.do">
						<div>
							<span style="color: red;"></span> ❑ 아이디어스 이용약관 개정 안내(2021년 2월
							16일)
						</div>
					</a> <a href="board_detail.do">
						<div>
							<span style="color: red;"></span> ❑&nbsp;<span
								style="color: #ff6d23;"><strong>[첫 결제 3천원 즉시 할인]</strong></span>&nbsp;차이CHAI
							생애 첫 결제 혜택
						</div>
					</a> <a href="board_detail.do">
						<div>
							<span style="color: red;"></span> ❑&nbsp;핸드메이드 선물! 만드는 시간을 고려해 미리
							준비해 주셔야 해요.
						</div>
					</a>
				</nav>
				<div class="paging" data-ui="paging" data-sync="false">
					<nav>

						<a href="/w/board/notice?&amp;page=1" class="active">1</a> <a
							href="/w/board/notice?&amp;page=2" class="">2</a> <a
							href="/w/board/notice?&amp;page=2" class="next" aria-label="다음">
							<span>다음</span> <i class="fa fa-chevron-right" disabled=""></i>
						</a>
					</nav>
				</div>
			</div>
		</div>
		<jsp:include page="footer.jsp" />
	</div>

</body>
</html>