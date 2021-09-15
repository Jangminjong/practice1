// 회원가입 후 다시 원래 페이지로 돌아가기 위한 storage저장
/*if ("https://www.idus.com/c")
	vuepack.externals.util
			.saveLastVisitedUrl("https://www.idus.com/c");

(function() {
	var Logger = vuepack.externals.IdusLog.Logger;
	var PageName = vuepack.externals.IdusLog.PageName;
	Logger.sendPageView(PageName.MemberJoinType);
})();

$(function() {
	var $btnThirdPartyJoin = $('[data-idus-log]');

	$btnThirdPartyJoin.on('click', function() {
		var Logger = vuepack.externals.IdusLog.Logger;
		var Section = vuepack.externals.IdusLog.Section;
		var ObjectType = vuepack.externals.IdusLog.ObjectType;
		var logObject = $(this).data('idus-log');

		Cookies.set('login_type', logObject);
		Logger.sendClick({
			object : logObject,
			objectType : ObjectType.LoginType
		}, logObject == 'email');
	});
	return false;
});

// 다른방법으로 가입하기 펼쳐짐 여부
var isShowMore = false; 
//Kakao.init('b8f8a6447c4b332f56469b63c9b7a010');
function loginWithKakao() {
	// 로그인 창을 띄웁니다.
	Kakao.Auth.login({
		success : function(authObj) {
			let param = "?redirect_uri=https%3A%2F%2Fwww.idus.com%2Fc&code="
					+ authObj.access_token
					+ "&state=613a4626d58d8&through=true";
			window.location.href = "/w/kakao/login_callback"
					+ param;
		},
		fail : function(err) {
			let error = JSON.stringify(err);
			window.location.href = "/w/join";
		},
		throughTalk : true
	});
};*/

////////////////////////////////////////////////////////////
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
		}else if(document.signForm.username.value == ""){//이름
			const name = document.getElementById('username-error');
			name.style.display = "";
			document.getElementById('name').style.border = "1px solid #ff4b50";
		}else if(document.signForm.cell_phone.value == ""){//전화번호
			const tel = document.getElementById('cell_phone-error');
			tel.style.display = "";
			document.getElementById('tel').style.border = "1px solid #ff4b50";
		}else if(check1 == false){
			chk_error.style.display = "";
			chk_error2.style.display = "none";
		}else if(check2 == false | check3 == false){
			chk_error.style.display = "none";
			chk_error2.style.display = "";
		}else{
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
		case "username":
				const name = document.getElementById('username-error');
			if(document.signForm.username.value == ""){
				name.style.display = "";
				document.getElementById('name').style.border = "1px solid #ff4b50";
			}else{
				name.style.display = "none";
				document.getElementById('name').style.border = "1px solid #999";
			}
			break;
		case "cell_phone":
				const tel = document.getElementById('cell_phone-error');
				const num = document.signForm.cell_phone.value;
			if(document.signForm.cell_phone.value == ""){
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
    var button = $("auth_cellphone_button").serialize();
	let cell_phone = $("#cell_phone").val();
	alert(cell_phone);
    $.ajax({
        url : pageName + ".do",
        type : "POST",
        dataType : "text",
        data : { cell_phone : $('#cell_phone').val()},
        beforeSend : function() {
        },
        success : function(data) {
            console.log(data);
        },
        error : function(request, status, error) {
            alert("list search fail :: error code: "
            + request.status + "\n" + "error message: "
            + error + "\n");
        }
    });
}

$(window).ready(function(){
	$(document).on("keyup", ".tel", function() { 
		$(this).val( $(this).val().replace(/[^0-9]/g, "").replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,"$1-$2-$3").replace("--", "-") ); 
			if(document.getElementsByName('cell_phone').length > 0) {
				document.getElementById('auth_cellphone_button').setAttribute('class', 'btn btn-login btn-point');
			}
	});
});