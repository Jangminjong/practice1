function showHidden() {
	document.getElementsByClassName("show-more-signup-btn")[0].style.display = "none";
	document.getElementsByClassName("hidden")[0].className = "";
	isShowMore = true;
};

function signCheck(){
		var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;//이메일 정규 표현식
		var regExpPw = /(?=.*\d{1,50})(?=.*[~`!@#$%\^&*()-+=]{1,50})(?=.*[a-zA-Z]{2,50}).{8,50}$/; //비밀번호 조합식
		const emailRe = document.getElementById('emailRe-error');
		const email = document.getElementById('email-error');
		var check1 = document.getElementById('terms1').checked;
		var check2 = document.getElementById('terms2').checked;
		var check3 = document.getElementById('terms3').checked;
		const chk_error = document.getElementById('terms1-error');
		const chk_error2 = document.getElementById('terms-error');
		var successPIN = $('#successPIN').css('display');
		if(document.signForm.email.value == ""){
			emailRe.style.display = "";
			document.getElementById('email').style.border = "1px solid #ff4b50";
		}else if(exptext.test(document.signForm.email.value) == false){
			emailRe.style.display = "none";
			email.style.display = "";
			document.getElementById('email').style.border = "1px solid #ff4b50";
		}else if(document.signForm.password.value == ""){//비밀번호
			const pwd = document.getElementById('password-error');
			pwd.style.display = "";
			document.getElementById('password').style.border = "1px solid #ff4b50";
		}else if(regExpPw.test(document.signForm.password.value) == false){//비밀번호 조합식 비교
			const pwd = document.getElementById('passwordFix-error');
			pwd.style.display = "";
			document.getElementById('password').style.border = "1px solid #ff4b50";
		}else if(document.signForm.password_confirm.value == ""){//비밀번호 재입력
			const pwd = document.getElementById('password_confirm-error');
			pwd.style.display = "";
			document.getElementById('password_check').style.border = "1px solid #ff4b50";
		}else if(document.signForm.password_confirm.value != document.signForm.password.value){//비밀번호 비교
			const pwd = document.getElementById('passwordSame_confirm-error');
			pwd.style.display = "";
			document.getElementById('password_check').style.border = "1px solid #ff4b50";
		}else if(document.signForm.user_name.value == ""){//이름
			const name = document.getElementById('username-error');
			name.style.display = "";
			document.getElementById('name').style.border = "1px solid #ff4b50";
		}else if(document.signForm.user_phone.value == ""){//전화번호
			const tel = document.getElementById('cell_phone-error');
			tel.style.display = "";
			document.getElementById('tel').style.border = "1px solid #ff4b50";
		}else if(check1 == false){
			chk_error.style.display = "";
			chk_error2.style.display = "none";
		}else if(check2 == false | check3 == false){
			chk_error.style.display = "none";
			chk_error2.style.display = "";
		} else if(successPIN == 'none'){
			alert("인증이 되지 않았습니다.");
		} else{
			chk_error.style.display = "none";
			chk_error2.style.display = "none";
			alert('회원가입이 완료되었습니다.');
			document.getElementById('form').onsubmit = "return true";
		}
}

function onblurEvent(args){
	switch(args.name){
		case "email":
			var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
			const emailRe = document.getElementById('emailRe-error');
			const email = document.getElementById('email-error');
			if(document.signForm.email.value == ""){
				email.style.display = "none";
				emailRe.style.display = "";
				document.getElementById('email').style.border = "1px solid #ff4b50";
			}else if(exptext.test(document.signForm.email.value) == false){
				emailRe.style.display = "none";
				email.style.display = "";
				document.getElementById('email').style.border = "1px solid #ff4b50";
			}
			
			if(exptext.test(document.signForm.email.value) == true){
				emailRe.style.display = "none";
				email.style.display = "none";
				document.getElementById('email').style.border = "1px solid #999";
			}
			break;
		case "password":
			var regExpPw = /(?=.*\d{1,50})(?=.*[~`!@#$%\^&*()-+=]{1,50})(?=.*[a-zA-Z]{2,50}).{8,50}$/; //비밀번호 조합식
			const pwd = document.getElementById('passwordFix-error');
			const pwd2 = document.getElementById('password-error');
			if(document.signForm.password.value == ""){
				pwd2.style.display = "";
				pwd.style.display = "none";
				document.getElementById('password').style.border = "1px solid #ff4b50";
			}else if(regExpPw.test(document.signForm.password.value) == false){//비밀번호 조합식 비교
				pwd2.style.display = "none";
				pwd.style.display = "";
				document.getElementById('password').style.border = "1px solid #ff4b50";
			}
			
			if(regExpPw.test(document.signForm.password.value) == true){//비밀번호 조합식 비교
				pwd.style.display = "none";
				pwd2.style.display = "none";
				document.getElementById('password').style.border = "1px solid #999";
			}
			break;
		case "password_confirm":
			const pwdc = document.getElementById('password_confirm-error');
			const pwdc2 = document.getElementById('passwordSame_confirm-error');
			if(document.signForm.password_confirm.value == ""){
				pwdc.style.display = "";
				pwdc2.style.display = "none";
				document.getElementById('password_check').style.border = "1px solid #ff4b50";
			}else if(document.signForm.password_confirm.value != document.signForm.password.value){//비밀번호 비교
				pwdc.style.display = "none";
				pwdc2.style.display = "";
				document.getElementById('password_check').style.border = "1px solid #ff4b50";
			}else{
				pwdc.style.display = "none";
				pwdc2.style.display = "none";
				document.getElementById('password_check').style.border = "1px solid #999";
			}
			break;
		case "user_name":
				const name = document.getElementById('username-error');
			if(document.signForm.user_name.value == ""){
				name.style.display = "";
				document.getElementById('name').style.border = "1px solid #ff4b50";
			}else{
				name.style.display = "none";
				document.getElementById('name').style.border = "1px solid #999";
			}
			break;
		case "user_phone":
				const tel = document.getElementById('cell_phone-error');
			if(document.signForm.user_phone.value == ""){
				tel.style.display = "";
				document.getElementById('cell_phone').style.border = "1px solid #ff4b50";
			}else{
				tel.style.display = "none";
				document.getElementById('cell_phone').style.border = "1px solid #999";
			}
			break;
	}
}

function sendSMS(pageName){
	document.getElementById('hiddenDiv').setAttribute('class', 'form-block-body');
	
	 //변수 form에 id식별자 form을 담는다.
    $.ajax({
        url : pageName + ".do",
        type : "POST",
        dataType : "json",
        data : { cell_phone : $('#cell_phone').val()},
        beforeSend : function() {
        },
        success : function(data) {
			document.getElementById("randomPIN").value = data.randomPIN;
		 	console.log('인증번호 : ' + data.randomPIN);
        },
        error : function(request, status, error) {
            alert("list search fail :: error code: "
            + request.status + "\n" + "error message: "
            + error + "\n");
        }
    });

	var time = 180;
		var min = "";
		var sec = "";
		
	//setInterval(함수, 시간) : 주기적인 실행
	var x = setInterval(function() {
		//parseInt() : 정수를 반환
		min = parseInt(time/60); //몫을 계산
		sec = time%60; //나머지를 계산
		
		document.getElementById('timer').innerHTML = min + ":" + sec;
		time--;
		
		//타임아웃 시
		if(time < 0 ) {
			clearInterval(x); //setInterval() 실행을 끝냄
			alert('인증 시간이 끝났습니다. 재인증 해주세요');
			location.replace("/mpweb/IdSearch.do");
		}
	}, 1000);
}

$(window).ready(function(){
	$(document).on("keyup", ".tel", function() { 
		$(this).val( $(this).val().replace(/[^0-9]/g, "").replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,"$1-$2-$3").replace("--", "-") ); 
			if(document.getElementsByName('user_phone').length > 0) {
				document.getElementById('auth_cellphone_button').setAttribute('class', 'btn btn-login btn-point');
			}
	});
	
	$(document).on("keyup", "#auth_code", function() { 
		$(this).val( $(this).val()); 
		if(document.getElementsByName('auth_code').length > 0) {
			document.getElementById('randomPIN_button').setAttribute('class', 'btn btn-login btn-point');
		}
	});
});

function checkPIN(arg, user_phone){
	var inputPIN = $("#auth_code").val();
	var randomPIN = $("#randomPIN").val();
	if(arg === 'search'){ //아이디찾기 시 비교
		if(inputPIN == randomPIN){
			$('#failPIN').css({'display' : 'none'});
		} else {
			$('#failPIN').css({'display' : 'block'});
		}
	}else if(arg === 'sign'){ //회원가입 시 비교
		if(inputPIN == randomPIN){
			$('#successPIN').css({'display' : 'block'});
			$('#failPIN').css({'display' : 'none'});
			$('#successPIN').attr("disabled", false);
		} else {
			$('#successPIN').css({'display' : 'none'});
			$('#failPIN').css({'display' : 'block'});
		}
	}
	
	
}

$(window).ready(function() {
	$(document).on("keyup", ".user_phone", function() { 
		$(this).val( $(this).val().replace(/[^0-9]/g, "").replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,"$1-$2-$3").replace("--", "-") ); 
			if(('.user_phone').length > 0){
				document.getElementById('auth_cellphone_button').setAttribute('class', 'btn btn-login btn-point');
			}
	});
		
	/* 승인요청 후 확인 버튼*/
	$(document).on("keyup", ".randomPIN", function() {
		$(this).val( $(this).val()); 
			if(('.randomPIN').length > 0){
				document.getElementById('randomPIN_button').setAttribute('class', 'btn btn-login btn-point');
			}
	});
});