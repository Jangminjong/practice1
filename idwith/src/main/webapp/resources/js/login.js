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