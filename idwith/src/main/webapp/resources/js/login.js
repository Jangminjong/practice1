window.onload = function(){
	var email_error = document.getElementById('email_error');
	var password_error = document.getElementById('password_error');
	email_error.style.display = "none";
	password_error.style.display = "none";
}

$(window).ready(function() {
	$('#email_error').css({'display' : 'none'});
	$('#password_error').css({'display' : 'none'});
	
	$('#email_login_input').blur(function(){
		const email_input = $('#email_login_input').val();
		if(email_input == ""){
			$('#email_error').css({'display' : ''});
		}
	});
	
	$('#password_login_input').blur(function(){
		const password_input = $('#password_login_input').val();
		if(password_input == ""){
			$('#password_error').css({'display' : ''});
		}
	});
});

