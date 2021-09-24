function emailChange() {
	if(document.getElementsByClassName("btn btn-m btn-white")[0].style.display = ""){
		
	}
	if(document.getElementsByClassName("btn btn-m btn-white")[0].style.display = ""){
		
	}
	
	
	
	document.getElementsByClassName("emailChange")[0].style.display = "";
};

$(document).ready(function (){
	$('#update_btn').click(function (){
		$('#update_btn').css({'display' : 'none'});
		$('.addBtn').css({'display' : ''});
		$('input').removeClass('readonly');
	});
	
	$('#cancle_btn').click(function (){
		$('.addBtn').css({'display' : 'none'});
		$('#update_btn').css({'display' : ''});
		$('input').addClass('readonly');
	});
	
	$('#save_btn').click(function (){
		$('.addBtn').css({'display' : 'none'});
		$('#update_btn').css({'display' : ''});
		$('input').addClass('readonly');
		
		$.ajax({
			url: "${pageContext.request.contextPath}/user_address.do",
			type: "POST",
			data: {
					"email": $("#email_login_input").val(),
					"password": $("#password_login_input").val()
				},
			success: function(data){
				if(data == 1){
					alert('저장 되었습니다.');
				}else if(data == 0){
					alert('오류가 발생했습니다.');
				}
			},
			error: function(request, status, error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
	});
});