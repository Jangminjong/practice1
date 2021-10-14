<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 완료 | 아이디위드</title>
<link rel="stylesheet" href="resources/css/signupSuccess.css" />
<link rel="stylesheet" href="resources/admin/css/adminLogin.css" />
</head>
<body>
	<div class="wrap">
		<div data-v-668c286c="" class="logo" style="display:flex; justify-content:center;">
			<h1 data-v-668c286c="">
				<a data-v-668c286c="" href="##"> <img
					src="resources/images/index/idwith_logo_back.png" class="idwith-logo" />
				</a>
			</h1>
		</div>
		<h1 class="info">
			<span class="paymentText">결제가</span> 완료되었습니다.
		</h1>
		<div>
			<h4 class="info info_text">결제정보 확인 및 취소는 내 정보 - 주문내역에서 확인 가능합니다.</h4>
		</div>
		<div class="select_btn info">
			<input type="button" value="메인화면으로" class="index_btn" onclick="location.href='index.do'" />
			<input type="button" value="내역 확인하기" class="login_btn" onclick="location.href='mypage_order_goods.do'"/>
		</div>
	</div>
</body>
</html>