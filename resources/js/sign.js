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
	console.log('메뉴 적용 중')
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
		
}