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

function bpCheck(){
	/*
	if(document.getElementsByClassName("checkAll").checked==true){ 
		for(var i=0;i<5;i++) document.getElementsByClassName("check")[i].checked=true;
	}
	if(document.getElementsByClassName("checkAll").checked==false){
		for(var i=0;i<5;i++) document.getElementsByClassName("check")[i].checked=false;  
	}*/
	
}

function signCheck(){
	if(document.signForm.email.value == ""){
		const email = document.getElementById('email-error');
		var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
		email.style.display = "";
		document.getElementById('email').style.border = "1px solid #ff4b50";
		document.signForm.email.focus();
 
		if(exptext.test(document.signForm.email.value) == false){
			 alert("이메일형식이 올바르지 않습니다.");
			 document.signForm.email.focus();
			 exit;
		 }
	}else if(document.signForm.password.value == ""){
		const pwd = document.getElementById('password-error');
		pwd.style.display = "";
		document.getElementById('password').style.border = "1px solid #ff4b50";
		document.signForm.password.focus();
	}else if(document.signForm.password_confirm.value == ""){
		const pwd = document.getElementById('password_confirm-error');
		pwd.style.display = "";
		document.getElementById('password_check').style.border = "1px solid #ff4b50";
		document.signForm.password_confirm.focus();
	}else if(document.signForm.username.value == ""){
		const name = document.getElementById('username-error');
		name.style.display = "";
		document.getElementById('name').style.border = "1px solid #ff4b50";
		document.signForm.username.focus();
	}else if(document.signForm.cell_phone.value == ""){
		const tel = document.getElementById('cell_phone-error');
		tel.style.display = "";
		document.getElementById('tel').style.border = "1px solid #ff4b50";
		document.signForm.cell_phone.focus();
	}else{
		document.getElementById('form').onsubmit = "return true";
	}
}

function onblur_event(){
	const email = document.getElementById('email-error');
		var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
		email.style.display = "";
		document.getElementById('email').style.border = "1px solid #ff4b50";
		document.signForm.email.focus();
		exit;
}