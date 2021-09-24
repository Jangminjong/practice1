<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="naver-site-verification"
	content="a8c6e5633b597db7b48d05e4a7d247011f6794ec" />
<meta name="google-site-verification"
	content="NnaPRa-jWBb5SnBiwjEZkMqm1pFS2Y8mVdUG0nJqO4c" />
<title>아이디위드 | 아이디 비밀번호 찾기</title>

<link rel="stylesheet" href="resources/css/Search/UserSearch.css" />
<link rel="stylesheet" href="resources/css/idus.web.min.css" />

<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="resources/js/sign.js"></script>

<!-- 파비콘 이미지 설정 -->
<link rel="shortcut icon" type="image/x-icon"
	href="resources/images/title/icon_300.PNG">
	
</head>
<body>
	<div class="wrap-login">
		<div class="head_banner_group"></div>
		<!-- 계정확인용 질문 1 -->
		<div class="login wrap">
			<div class="login section root">
				<div class="login logo">
					<h1>
						<a href="/"> <img src="resources/images/common/headerLogo.png" class="header_img">
						</a>
					</h1>
				</div>

				<section class="login section">
					<h2 class="login title">아이디 / 비밀번호 찾기</h2>
					<div class="login input-group">
						<span class="login label">회원 가입시 사용한 전화번호를 입력해주세요.</span>
						<form data-form="reauth-phone" data-type="no-message"
							action="account_check.do" method="post">
							<div class="form-block" data-auth="root">
								<div class="form-block-body">
									<div class="ui-input-btn-combo">
										<div class="input-text size-w">
											<input type="hidden" name="only_auth" value="1"> 
											<input type="tel" name="user_phone" class="user_phone" data-auth="cell_phone" id="cell_phone" placeholder="010-1234-5678" required="">
										</div>
										<button type="button"
											class="btn btn-login btn-point btn-disabled"
											data-auth="request_btn"
											data-auth-url="/w/join/cellphone/auth" id="auth_cellphone_button" onclick="sendSMS('sendSms')">인증요청</button>
									</div>
								</div>
								<div class="form-block-body hidden" data-auth="auth_code_block"
									data-form-block="auth_code" id="hiddenDiv">
									<div class="ui-input-btn-combo size-w">
										<div class="input-text size-w">
											<input type="text" name="auth_code" id="auth_code" data-input-style="none"
												data-auth="auth_code" maxlength="4" class="filldisable randomPIN"
												placeholder="인증코드를 입력해주세요." required="">
											<div data-auth="time_limit" class="time-limit" id="timer"></div>
										</div>
										<input type="hidden" name="randomPIN" id="randomPIN" value="">
										<input type="submit"
											class="btn btn-login btn-point btn-disabled"
											data-auth="auth_code_submit" id="randomPIN_button" onclick="checkPIN('search', document.getElementById('cell_phone').value)" value="확인">
									</div>
									<span id="failPIN" class="form-error" style="display:none">인증을 실패하였습니다.</span>
								</div>
							</div>
						</form>
					</div>
				</section>
			</div>
		</div>
		<!-- <script>
    // 휴면처리를 위해 필요한 쿠키 세팅
    Cookies.set('login_type', 'reauth');
    (function () {
        var Logger = vuepack.externals.IdusLog.Logger;
        var PageName = vuepack.externals.IdusLog.PageName;
        var LogLabel = vuepack.externals.IdusLog.LogLabel;
        Logger.sendPageView(PageName.Reauth, {
            logLabel: LogLabel.FindIdPw
        });
    })();
</script> -->
	</div>
	<!-- div WRAP -->

</body>
</html>