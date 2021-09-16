<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 정보 입력</title>
<link rel="stylesheet" href="resources/css/sign.css">
<link rel="stylesheet" href="resources/css/common.css">
<link rel="stylesheet" href="resources/css/idus.web.min.css">
<link rel="stylesheet" href="resources/css/vendor.client.min.css">

<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="resources/js/sign.js"></script>
<script type="text/javascript" src="resources/js/idus.web.min.js"></script>
<script type="text/javascript" src="resources/js/vendor.client.min.js"></script>
<script type="text/javascript" src="resources/js/vuepack.js"></script>

<!-- 파비콘 이미지 설정 -->
<link rel="shortcut icon" type="image/x-icon"
	href="resources/images/title/icon_300.PNG">
	
</head>
<body>

	<div class="wrap login">
		<div class="head_banner_group"></div>
		<form data-form="reauth-phone" class="form form-signup-step2" id="form"
			data-page="signup" action="signupSuccess.do" method="post" name="signForm"
			novalidate="novalidate" onsubmit="return false">
			<input type="hidden" name="redirect_uri"
				value="https://www.idus.com/w/story"> <input type="hidden"
				name="token" value="">
			<div class="login wrap">
				<div class="login logo">
					<h1>
						<a href="index.do"><img src="resources/images/header/logo.svg" />
						</a>
					</h1>
				</div>

				<section class="login section signup-form">
					<h2 class="login title">정말 간단한 회원가입하기</h2>

					<div class="signup-step wrap">
						<ul>
							<li>1</li>
							<li class="is_active">2</li>
						</ul>
						<h3 class="signup-step title">가입 정보 입력하기</h3>
					</div>

					<div class="form-block">
						<label for="" class="form-block-head"> <em
							class="asterisk red">∗</em> 이메일
						</label>
						<div class="form-block-body">
							<div class="input-text size-w form-error">
								<input class="" type="email" name="email" id="email"
									placeholder="이메일을 입력해주세요." required="" value=""
									aria-describedby="email-error" aria-invalid="true" style="border: 1px solid #999;" onblur="onblurEvent(this);" />
							</div>
							<span id="email-error" class="form-error" style="display:none">이메일 형식이 올바르지 않습니다.</span>
							<span id="emailRe-error" class="form-error" style="display:none">필수 항목입니다.</span>
							<span id="email-overlap" class="form-error" style="display:none">이미 가입된 이메일입니다.</span>
							<span id="email-available" class="form-error" style="display:none">사용 가능한 이메일입니다.</span>
						</div>
					</div>

					<div class="form-block">
						<label for="" class="form-block-head"> <em
							class="asterisk red">∗</em> 비밀번호
						</label>
						<div class="form-block-body">
							<div class="input-text size-w form-error">
								<input type="password" name="password" id="password"
									placeholder="비밀번호 (영문+숫자+특수문자 8자 이상)" required=""
									aria-describedby="password-error" aria-invalid="true" style="border: 1px solid #999;" onblur="onblurEvent(this)" />
							</div>
							<span id="password-error" class="form-error" style="display:none">필수 항목입니다.</span>
							<span id="passwordFix-error" class="form-error" style="display:none">영문, 숫자, 특수문자를 조합한 8자 이상의 비밀번호를 입력해주세요.</span>
						</div>
						<div class="form-block-body">
							<div class="input-text size-w form-error">
								<input type="password" name="password_confirm" id="password_check"
									placeholder="비밀번호 확인" required=""
									aria-describedby="password_confirm-error" style="border: 1px solid #999;" onblur="onblurEvent(this)">
							</div>
							<span id="password_confirm-error" class="form-error" style="display:none">필수 항목입니다.</span>
							<span id="passwordSame_confirm-error" class="form-error" style="display:none">같은 값을 다시 입력하세요.</span>
						</div>
					</div>

					<div class="form-block">
						<label for="" class="form-block-head"> <em
							class="asterisk red">∗</em> 이름
						</label>
						<div class="form-block-body">
							<div class="input-text size-w type-l form-error">
								<input class="" type="text" name="username" value="" id="name"
									placeholder="이름을 입력해주세요." required=""
									aria-describedby="username-error" aria-invalid="true" style="border: 1px solid #999;" onblur="onblurEvent(this)">
							</div>
							<span id="username-error" class="form-error" style="display:none">필수 항목입니다.</span>
						</div>
					</div>

					<div class="form-block" data-auth="root">
						<label for="" class="form-block-head"> <em
							class="asterisk red">∗</em> 전화번호
						</label>
						<div class="form-block-body">
							<div class="ui-input-btn-combo">
								<div class="input-text size-w type-l form-error">
									<input class="reauth" type="hidden" name="only_auth" value="1">
									<input type="tel" name="cell_phone" data-auth="cell_phone" id="cell_phone" class="tel"
										placeholder="010-1234-5678" value="" required=""
										aria-describedby="cell_phone-error" style="border: 1px solid #999;" onblur="onblurEvent(this)">
								</div>
								<button id="auth_cellphone_button" type="button"
									class="btn btn-login btn-point btn-disabled"
									data-auth="request_btn" data-auth-url="/w/join/cellphone/auth"
									data-idus-log="phone_auth" onclick="sendSMS('sendSms')" disabled>인증요청</button>
							</div>
							<span id="cell_phone-error" class="form-error" style="display:none">필수 항목입니다.</span>
							<span id="cell_phone-overlap" class="form-error" style="display:none">이미 가입된 전화번호입니다.</span>
						</div>

						<div class="form-block-body hidden" data-auth="auth_code_block"
							data-form-block="auth_code" id="hiddenDiv">
							<div class="ui-input-btn-combo size-w">
								<div class="input-text size-w type-l">
									<input type="text" name="auth_code" data-input-style="none"
										data-auth="auth_code" maxlength="4" class="filldisable" id="auth_code"
										placeholder="인증코드를 입력해주세요." required="">
									<div data-auth="time_limit" class="time-limit" id="timer"></div>
								</div>
								<input type="hidden" name="randomPIN" id="randomPIN" value="">
								<button type="button" id="randomPIN_button"
									class="btn btn-login btn-point btn-disabled"
									data-auth="auth_code_submit" onclick="checkPIN()">확인</button>
							</div>
							<span id="successPIN" class="form-error" style="display:none">인증이 성공하였습니다.</span>
							<span id="failPIN" class="form-error" style="display:none">인증을 실패하였습니다.</span>
						</div>
					</div>

					<div class="form-block">
						<label for="" class="form-block-head"> 추천인코드 </label>
						<div class="form-block-body">
							<div class="input-text size-w">
								<input type="text" name="rcmd_code" value="" placeholder="선택사항">
							</div>
						</div>
					</div>

					<div class="form-block check-all-wrap">
						<div class="terms">
							<div class="terms-head">
								<div class="input-checkbox">
									<input class="bp checkAll" type="checkbox" id="terms0" name="checkAll"
										data-ui="check-all" data-ui-id="signup" onclick="selectAll(this)" value="selectall">
								</div>
								<label for="terms0">모두 동의합니다.</label>
							</div>
							<div class="terms-body">
								<div class="terms-item">
									<div class="input-checkbox form-error">
										<input id="terms1" class="bp check" type="checkbox" name="checkAll"
											 required="" data-ui="check-all-linked"
											data-ui-id="signup" aria-describedby="terms1-error">
									</div>
									<label for="terms1">만 14세 이상입니다.</label>
								</div>
								<div class="terms-item">
									<div class="input-checkbox form-error">
										<input id="terms2" class="bp check" type="checkbox" name="checkAll"
											 required="" data-ui="check-all-linked"
											data-ui-id="signup" aria-describedby="terms-error">
									</div>
									<a style="text-decoration: underline;" class="label"
										target="_blank" href="board_detail.do">이용약관 필수 동의 </a>
								</div>
								<div class="terms-item">
									<div class="input-checkbox form-error">
										<input id="terms3" class="bp check" type="checkbox" name="checkAll"
											 required="" data-ui="check-all-linked"
											data-ui-id="signup" aria-describedby="terms-error">
									</div>
									<a style="text-decoration: underline;" class="label"
										target="_blank" href="board_detail.do">개인정보 수집
										및 이용 동의</a>
								</div>
							</div>
						</div>
						<span id="terms1-error" class="form-error" style="display:none">만 14세 미만은 서비스를 이용할 수 없습니다.</span>
						<span id="terms-error" class="form-error" style="display:none">이용약관과
							개인정보 수집 및 이용 동의는 필수 입니다.</span>
					</div>

					<div class="form-block form-block-submit">
						<div class="form-block-body">
							<button class="btn btn-point btn-login" type="submit" id="submit" value="가입" onclick="signCheck();">
								회원가입하기</button>
						</div>
					</div>
				</section>
			</div>
		</form>
		
		<!--  
		<script>
			(function() {
				var Logger = vuepack.externals.IdusLog.Logger;
				var PageName = vuepack.externals.IdusLog.PageName;
				var LogObject = vuepack.externals.IdusLog.LogObject
				var loginType = Cookies.get('login_type');

				// 회원가입 step2 페이지 로깅
				Logger.sendPageView(PageName.MemberJoin, {
					property : {
						login_type : loginType
					}
				});

				// 전화번호 인증요청 로깅
				var $btnThirdPartyLogin = $('[data-idus-log]');
				$btnThirdPartyLogin.on('click', function() {
					Logger.sendClick({
						page_name : PageName.MemberJoin,
						object : LogObject.PhoneAuth,
						property : {
							login_type : loginType
						}
					});
				});
			})();
			/**
			 * 회원가입 입력 폼
			 */
			$(function() {
				var redirect_uri = $('[name=redirect_uri]').val();
				var flag = true;
				var $form = $('.form-signup-step2');
var validRcmd = false;

$form.validate({
							errorElement : 'span',
							onfocusout : function(element) {
								$(element).valid()
							},
							onclick : function(element) {
$(element).valid();
},
rules: {
								email : {
									remote : $.validator.checkEmail,
									trim : true,
									required : true,
								},
								username : {
									required : true,
									trim : true
								},
								cell_phone : {
									checkCellphone : true,
									required : true,
								},
								auth_code : {
									required : false
								},
								password_confirm : {
									password : false,
									equalTo : '[name="password"]'
								},
								rcmd_code : {
									remote: {
										url : routes.checkRcmd,
										dataFilter : function(response) {
											var json = JSON.parse(response);

											// 가입완료페이지용 쿠키 데이터
											validRcmd = json.data || false;

											if (json.error) {
												return "\""
														+ json.error.message
														+ "\"";
											}

											return true;
										}
									},
									trim : true,
								}
							},
							groups : {
								terms : 'terms2 terms3',
							},
							messages : {
								auth_code : {
									required : '인증코드를 입력해주세요.'
								},
								terms1 : {
									required : '만 14세 미만은 서비스를 이용할 수 없습니다.'
								},
								terms2 : {
									required : '이용약관과 개인정보 수집 및 이용 동의는 필수 입니다.'
								},
								terms3 : {
									required : '이용약관과 개인정보 수집 및 이용 동의는 필수 입니다.'
								}
							},
							errorPlacement : function(error, element) {
								error.appendTo(element
										.closest('[class^=form-block]'));
							},
							submitHandler : function(form, event) {
								var $submitBtn = $(event.target.submit);
								var url = form.action;
								var param = $(form).serialize();
								var verify = document
										.querySelector('[name=cell_phone]').dataset.verify;
								var cookieData = {
									rcmd : false,
									complete : false
								}

								if (typeof verify === 'undefined') {
									alert('전화번호를 인증해 주세요.');
									document.querySelector('[name=auth_code]')
											.focus();
									return;
								}

								if (flag) {
									flag = false;
									event.preventDefault();
									$
											.post(url, param)
											.done(
													function(response) {
														var name = 'cell_phone';
														var Logger = vuepack.externals.IdusLog.Logger;
														var Section = vuepack.externals.IdusLog.Section;
														var LogObject = vuepack.externals.IdusLog.LogObject;
														var loginType = Cookies
																.get('login_type');

														if (response.error) {
															// 휴면계정 처리
															var err = response.error;
															if (err.is_sleep) {
																window.location.href = '/w/inactive?user='
																		+ err.user_key
																		+ '&from='
																		+ Cookies
																				.get('login_type');
															}

															$errElm = $('<span class="error-message">'
																	+ response.error.message
																	+ '</span>');
															$submitBtn
																	.prev(
																			'span')
																	.remove()
																	.end()
																	.before(
																			$errElm);

															if (typeof response.error.code === 'string') {
																switch (response.error.code) {
																case '009008':
																	name = 'cell_phone';
																	break;
																case '009006':
																	name = 'auth_code';
																	break;
																default:
																	break;
																}
																document
																		.querySelector(
																				'[name='
																						+ name
																						+ ']')
																		.focus();
															}
															return;
														}

														// trackers
														vuepack.externals.VendorLogger
																.sendLog([
																		{
																			vendorName : 'facebook',
																			eventName : 'CompleteRegistration',
																		},
																		{
																			vendorName : 'kakao',
																			eventName : 'completeRegistration',
																		},
																		{
																			vendorName : 'naver',
																			eventName : '2',
																			params : '1',
																		}, ]);

														// check if rcmd is valid
														cookieData.rcmd = validRcmd;

														// false if empty: 필수 입력폼이아니라 빈값 밸리데이션시 true 반환
														if (!$(
																'[name="rcmd_code"]')
																.val().length)
															cookieData.rcmd = false;

														// set cookie
														Cookies
																.set(
																		'idus-signup',
																		cookieData,
																		{
																			expires : 1 / 24
																		});
														Cookies
																.set(
																		'idus-signup-complete-redirect',
																		redirect_uri,
																		{
																			expires : 1 / 24
																		});

														Logger
																.sendClick(
																		{
																			object : LogObject.SignUpComplete,
																			property : {
																				login_type : loginType
																			}
																		}, true);

														// redirect to complete page
														window.location.href = routes.signupComplete;
													}).always(function() {
												flag = true;
											});
								}
							}
						});

				if ($form.find('[name=email]').val()) {
					$form.validate().element("[name=email]");
				}

				// 전화번호가 들어있을 경우 인증버튼 활성화
				const cellphoneInput = document
						.querySelector('[name=cell_phone]');
				if (cellphoneInput.value)
					document.getElementById('auth_cellphone_button')
							.setAttribute('class', 'btn btn-login btn-point');
			});
		</script>
		-->
		
		<script>
            function selectAll(selectAll) {
               const checkboxs = document.getElementsByName('checkAll');

               checkboxs.forEach((checkbox) => {
                  checkbox.checked = selectAll.checked;
               })
            }
         </script>
         
         <!-- 이메일 중복체크 -->
         <script type="text/javascript">
         $(document).ready(function(e){
        	 var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
     	$('#email').blur(function(){
     		$.ajax({
     			url: "${pageContext.request.contextPath}/emailCheck.do",
     			type: "GET",
     			data: {
     				"email":$("#email").val()
     			},
     			success: function(data){
     				var email = $.trim($("#email").val());
     				if(data == 0 && email != ''){
     					if(exptext.test(email) == true){
     						$('#email').attr("readonly", true);
     						$('#email-overlap').css({'display' : 'none'});
     						$('#email-available').css({'display' : 'block', 'color' : '#ff4b50'});
     					}else{
     						$('#email-overlap').css({'display' : 'none'});
     						$('#email-available').css({'display' : 'none'});
     					}
     				}else if(email == ''){
     					$('#email-overlap').css({'display' : 'none'});
 						$('#email-available').css({'display' : 'none'});
     				}else{
     					$('#email-available').css({'display' : 'none'});
     					$('#email-overlap').css({'display' : 'block', 'color' : '#ff4b50'});
     				}
     			},
     			error: function(request, status, error){

     				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
     			}
     		});
     		
     	});
         });
         </script>
         
         <!-- 전화번호 중복체크  -->
         <script>
         	$(document).ready(function(e){
         		$('#cell_phone').blur(function(){
         			$.ajax({
             			url:"${pageContext.request.contextPath}/cellPhoneCheck.do",
             			type:"GET",
             			data:{
             				"cell_phone":$("#cell_phone").val()
             			},
             			success: function(data){
             				var cell_phone = $.trim($("#cell_phone").val())
             				if(data == 0 && cell_phone !=''){
             					$('#cell_phone').attr("readonly", true);
             					$('#cell_phone-overlap').css({'display' : 'none'});
             					$('#auth_cellphone_button').attr("disabled", false);
             				}else if(cell_phone ==''){
             					$('#cell_phone-overlap').css({'display' : 'none'});
             					$('#auth_cellphone_button').attr("disabled", true);
             				}else{
             					$('#cell_phone-overlap').css({'display' : 'block', 'color' : '#ff4b50'});
             					$('#auth_cellphone_button').attr("disabled", true);
             				}
             			},
             			error: function(request, status, error){

             				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
             			}
             			
             		});
         		});
         	})
         </script>
	</div>
</body>
</html>