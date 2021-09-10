<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 정보 입력</title>
<script type="text/javascript" src="resources/js/sign.js"></script>
</head>
<body>
	<link rel="stylesheet" href="resources/css/sign.css">
	<link rel="stylesheet" href="resources/css/common.css">
	<link rel="stylesheet" href="resources/css/idus.web.min.css">
	<link rel="stylesheet" href="resources/css/vendor.client.min.css">
	
	<div class="wrap login">
		<div class="head_banner_group"></div>
		<form data-form="reauth-phone" class="form form-signup-step2"
			data-page="signup" action="/w/join/signup" method="post"
			novalidate="novalidate">
			<input type="hidden" name="redirect_uri"
				value="https://www.idus.com/w/story"> <input type="hidden"
				name="token" value="">
			<div class="login wrap">
				<div class="login logo">
					<h1>
						<a href="/"> <span class="sp-icon logo"></span>
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
							<div class="input-text size-w">
								<input class="" type="email" name="email"
									placeholder="이메일을 입력해주세요." required="" value="">
							</div>
						</div>
					</div>

					<div class="form-block">
						<label for="" class="form-block-head"> <em
							class="asterisk red">∗</em> 비밀번호
						</label>
						<div class="form-block-body">
							<div class="input-text size-w">
								<input type="password" name="password"
									placeholder="비밀번호 (영문+숫자+특수문자 8자 이상)" required="">
							</div>
						</div>
						<div class="form-block-body">
							<div class="input-text size-w">
								<input type="password" name="password_confirm"
									placeholder="비밀번호 확인" required="">
							</div>
						</div>
					</div>

					<div class="form-block">
						<label for="" class="form-block-head"> <em
							class="asterisk red">∗</em> 이름
						</label>
						<div class="form-block-body">
							<div class="input-text size-w type-l">
								<input class="" type="text" name="username" value=""
									placeholder="이름을 입력해주세요." required="">
							</div>
						</div>
					</div>

					<div class="form-block" data-auth="root">
						<label for="" class="form-block-head"> <em
							class="asterisk red">∗</em> 전화번호
						</label>
						<div class="form-block-body">
							<div class="ui-input-btn-combo">
								<div class="input-text size-w type-l">
									<input class="reauth" type="hidden" name="only_auth" value="1">
									<input type="tel" name="cell_phone" data-auth="cell_phone"
										placeholder="010-1234-5678" value="" required="">
								</div>
								<button id="auth_cellphone_button" type="button"
									class="btn btn-login btn-point btn-disabled"
									data-auth="request_btn" data-auth-url="/w/join/cellphone/auth"
									data-idus-log="phone_auth">인증요청</button>
							</div>
						</div>



						<div class="form-block-body hidden" data-auth="auth_code_block"
							data-form-block="auth_code">
							<div class="ui-input-btn-combo size-w">
								<div class="input-text size-w type-l">
									<input type="text" name="auth_code" data-input-style="none"
										data-auth="auth_code" maxlength="4" class="filldisable"
										placeholder="인증코드를 입력해주세요." required="">
									<div data-auth="time_limit" class="time-limit"></div>
								</div>
								<button type="button"
									class="btn btn-login btn-point btn-disabled"
									data-auth="auth_code_submit">확인</button>
							</div>
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
									<input class="bp checkAll" type="checkbox" id="terms0"
										data-ui="check-all" data-ui-id="signup" onClick="bpCheck();" />
								</div>
								<label for="terms0">모두 동의합니다.</label>
							</div>
							<div class="terms-body">
								<div class="terms-item">
									<div class="input-checkbox">
										<input id="terms1" class="bp check" type="checkbox"
											name="terms1" required="" data-ui="check-all-linked"
											data-ui-id="signup">
									</div>
									<label for="terms1">만 14세 이상입니다.</label>
								</div>
								<div class="terms-item">
									<div class="input-checkbox">
										<input id="terms2" class="bp check" type="checkbox"
											name="terms2" required="" data-ui="check-all-linked"
											data-ui-id="signup">
									</div>
									<a style="text-decoration: underline;" class="label"
										target="_blank" href="/w/board/terms/use">이용약관 필수 동의 </a>
								</div>
								<div class="terms-item">
									<div class="input-checkbox">
										<input id="terms3" class="bp check" type="checkbox"
											name="terms3" required="" data-ui="check-all-linked"
											data-ui-id="signup">
									</div>
									<a style="text-decoration: underline;" class="label"
										target="_blank" href="/w/board/terms/requirement">개인정보 수집
										및 이용 동의</a>
								</div>
								<div class="terms-item">
									<div class="input-checkbox">
										<input id="terms4" class="bp check" type="checkbox"
											name="marketing" data-ui="check-all-linked"
											data-ui-id="signup">
									</div>
									<label for="terms4">할인쿠폰/이벤트/감동적인 뉴스레터 선택 동의 (선택)<br>
										<span class="f-comment"> SMS, 이메일을 통해 쿠폰 및 이벤트 정보를 받아보실
											수 있습니다. </span>
									</label>
								</div>
							</div>
						</div>
					</div>

					<div class="form-block form-block-submit">
						<div class="form-block-body">
							<button class="btn btn-point btn-login" type="submit" id="submit">
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
	</div>
</body>
</html>