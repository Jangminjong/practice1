window.onload = function(){
	var email_error = document.getElementById('email_error');
	var password_error = document.getElementById('password_error');
	email_error.style.display = "none";
	password_error.style.display = "none";
}

function selectEmail(selectEmail){
	const checkEmail = document.getElementsByName('emailSave');
	var user_id = document.getElementById('email_login_input');
	
	checkEmail.forEach((checkbox) => {
		checkbox.checked = selectEmail.checked;
	})
	
	if(checkEmail.checked == true){ //이메일 저장하고 체크 true일 때
		alert('여기');
		sessionStorage.setItem("emailSave", user_id); 
		console.log('세션 확인 : ' + user_id);
	}else if(checkEmail.checked == false){
		sessionStorage.clear();
	}
}

function enterkey() { 
	if (window.event.keyCode == 13) {
		const email = $("#email_login_input").val();
		const password = $("#password_login_input").val();
		
		$.ajax({
			url: "loginCheck.do",
			type: "GET",
			data: {
					"email": $("#email_login_input").val(),
					"password": $("#password_login_input").val()
				},
			success: function(data){
				if(data == 0){
					alert('존재하지 않는 회원입니다.');
					location.replace("/mpweb/login.do");
				}else if(data == 1){
					alert('비밀번호를 확인해주세요.');
					location.replace("/mpweb/login.do");
				}else {
					location.replace("/mpweb/index.do");
				}
			},
			error: function(request, status, error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
	}
}

