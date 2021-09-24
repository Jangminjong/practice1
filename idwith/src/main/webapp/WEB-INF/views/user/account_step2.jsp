<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디어스 | 아이디 비밀번호 찾기</title>
<link rel="stylesheet" href="resources/css/account.css" />
<link rel="stylesheet" href="resources/css/vendor.client.min.css" />
<link rel="stylesheet" href="resources/css/idus.web.min.css" />

<!-- 파비콘 이미지 설정 -->
<link rel="shortcut icon" type="image/x-icon"
	href="resources/images/title/icon_300.PNG">
</head>
<body>
	<div class="wrap-login">
		<div class="head_banner_group"></div>
		<!-- 계정확인용 질문 2 -->
		<div class="login wrap">
			<div class="login section root">
				<div class="login logo">
					<h1>
						<a href="/"> <img src="resources/images/header/logo.svg"
							alt="IDUS, Unique Lifestyle Guide">
						</a>
					</h1>
				</div>

				<section class="login section">
					<h2 class="login title">계정 확인 질문</h2>
					<div class="signup-step wrap">
						<ul>
							<li>1</li>
							<li class="is_active">2</li>
						</ul>
						<h3 class="signup-step title">사용했던 이름을 선택해주세요.</h3>
					</div>

					<form data-form="reauth" action="account_success.do"
						class="login validation-form" method="POST">
						<input type="hidden" name="step" value="2">
						<fieldset class="login input-group">
							<c:forEach var="userList" items="${userList}">
								<label class="userinput--boxed">
									<input class="userinput__input--checkbox" type="radio" id="answer" name="user_name" value="${userList.user_name }">
									<em class="userinput__label">${userList.user_name }</em>
								</label>
							</c:forEach>
						</fieldset>
						<button class="ui_btn--red--large" id="form_btn" type="submit">확인</button>
					</form>
				</section>
			</div>
		</div>
	</div>
	<!-- div WRAP -->
	
	<script>
		$(document).ready(function (){
			$('#form_btn').click(function (){
				var radioCheck = $('#answer');
				
				for(var i=0; i<radioCheck.length; i++){
					if(radioCheck[i].checked == true){
						$('#answer').value = radioCheck[i].value;
					}
				}
			});
		});
	</script>
</body>
</html>
