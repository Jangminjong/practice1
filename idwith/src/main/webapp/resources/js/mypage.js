$(document).ready(function (){
	/* 내 정보 수정 */
	$('#email_update').click(function (){
		if( $(this).html() == '변경하기' ) {
			$('.email-update').css({'display': ''});
			$(this).html('변경취소');
	    }
	    else {
			$('.email-update').css({'display': 'none'});
			$(this).html('변경하기');
	    }
	});
	
	$('#phone_update').click(function (){
		if( $(this).html() == '변경하기' ) {
			$('.phone-update').css({'display': ''});
			$(this).html('변경취소');
	    }
	    else {
			$('.phone-update').css({'display': 'none'});
			$(this).html('변경하기');
	    }
	});

	$(document).on("keyup", ".cell_phone", function() {
		$(this).val( $(this).val().replace(/[^0-9]/g, "").replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,"$1-$2-$3").replace("--", "-") ); 
			if($('.cell_phone').length > 0) {
				$('#auth_code_btn').removeClass('btn-disabled');
			}
	});
		
	$(document).on("keyup", "#input_auth_code", function() {
		if($('#input_auth_code').length > 0) {
				$('.auth_check').removeClass('btn-disabled');
			}
	});
	
	
	$('#save_btn').click(function (){
		
	});
});



function sendSMS(pageName){
	$('#hiddenDiv').css({'display': ''});
	
	 //변수 form에 id식별자 form을 담는다.
    $.ajax({
        url : pageName + ".do",
        type : "POST",
        dataType : "json",
        data : { cell_phone : $('.cell_phone').val()},
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
			$('#auth_code_btn').addClass('btn-disabled');
		}
	}, 1000);
}

function myEmailUpdate(user_id){
	var inputEmail = $('.new-email').val();
	console.log(inputEmail);
	console.log(user_id);
	
	if(inputEmail == ''){
		$('.new-email-btn').html('인증메일 재전송');
		alert('이메일 주소를 확인해 주세요.');
	}else if(inputEmail == user_id){
		$('#new_email-error').css({'display': ''});
	}else if(inputEmail != null){
		$('.email-update').css({'display': 'none'});
		$.ajax({
			url: "sendEmailUpdate.do",
			type: "GET",
			async: false,
			data: {
					"user_id": inputEmail
				},
			success: function(data){
				console.log('이메일 전송 완료');
				updateEmail(user_id);
			},
			error: function(request, status, error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});	
	}
}

//실제로 이메일 수정하는 함수
function updateEmail(user_id){
	$.ajax({
		url: "updateEmail.do",
		type: "GET",
		data: {
				"user_id": user_id,
				"update_email": $('.new-email').val()
			},
		success: function(data){
			console.log('이메일 수정 완료');
		},
		error: function(request, status, error){
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
}

//인증번호 비교 후 전화번호 수정
function updateCheckPIN(user_id){
	var inputPIN = $('#input_auth_code').val();
	var randomPIN = $('#randomPIN').val();
	
	if(inputPIN != randomPIN){
		$('#failPIN').css({'display': ''});
	}else if(inputPIN == randomPIN){
		$.ajax({
			url: "updatePhone.do",
			type: "GET",
			data: {
					"user_id": user_id,
					"user_phone": $('.cell_phone').val()
				},
			success: function(data){
				console.log('전화번호 수정 완료');
			},
			error: function(request, status, error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
	}
}

//수정한 정보 저장
function updateUserInfo(user_id){
	$.ajax({
		url: "update_user_info.do",
		type: "GET",
		data: {
				"user_id": user_id,
				"update_birth": $('#user_birth').val()
			},
		success: function(data){
			console.log('회원정보 수정 완료');
		},
		error: function(request, status, error){
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
}

//주소 수정버튼 함수
function updateBtn(order){
	const myInputF = document.querySelector("#adress_one");
	const myInputS = document.querySelector("#adress_second");
	const myInputT = document.querySelectorAll("#adress_third");
	
	if(order == 'update_btn_first'){//첫번째 주소지 수정
		$('#update_btn_first').css({'display' : 'none'});
		$('#add-btn-first').css({'display' : ''});
		
		$('#first_name').removeClass('readonly');
		$('#first_name').removeAttr('readonly');
		$('#first_phone').removeClass('readonly');
		$('#first_phone').removeAttr('readonly'); 
		$('#first_zipcode').removeClass('readonly');
		$('#first_zipcode').removeAttr('readonly'); 
		$('#first_address1').removeClass('readonly');
		$('#first_address1').removeAttr('readonly'); 
		$('#first_address2').removeClass('readonly');
		$('#first_address2').removeAttr('readonly');      	
	}else if(order == 'update_btn_second'){//두번째 주소지 수정
		$('#update_btn_second').css({'display' : 'none'});
		$('#add-btn-second').css({'display' : ''});
		
		$('#second_name').removeClass('readonly');
		$('#second_name').removeAttr('readonly');
		$('#second_phone').removeClass('readonly');
		$('#second_phone').removeAttr('readonly'); 
		$('#second_zipcode').removeClass('readonly');
		$('#second_zipcode').removeAttr('readonly'); 
		$('#second_address1').removeClass('readonly');
		$('#second_address1').removeAttr('readonly'); 
		$('#second_address2').removeClass('readonly');
		$('#second_address2').removeAttr('readonly');		
	}else if(order == 'update_btn_third'){//세번째 주소지 수정
		$('#update_btn_third').css({'display' : 'none'});
		$('#add-btn-third').css({'display' : ''});
		
		$('#third_name').removeClass('readonly');
		$('#third_name').removeAttr('readonly');
		$('#third_phone').removeClass('readonly');
		$('#third_phone').removeAttr('readonly'); 
		$('#third_zipcode').removeClass('readonly');
		$('#third_zipcode').removeAttr('readonly'); 
		$('#third_address1').removeClass('readonly');
		$('#third_address1').removeAttr('readonly'); 
		$('#third_address2').removeClass('readonly');
		$('#third_address2').removeAttr('readonly');
	}
}

//주소 수정 취소 버튼
function updateCancle(order){
	const myInputF = document.querySelector("#adress_one");
	const myInputS = document.querySelector("#adress_second");
	const myInputT = document.querySelector("#adress_third");
	
	if(order == 'cancle_btn_first'){//첫번째 주소지 수정
		$('#add-btn-first').css({'display' : 'none'});
		$('#update_btn_first').css({'display' : ''});
		
		$('#first_name').addClass('readonly');
		$('#first_name').addAttr('readonly');
		$('#first_phone').addClass('readonly');
		$('#first_phone').addAttr('readonly'); 
		$('#first_zipcode').addClass('readonly');
		$('#first_zipcode').addAttr('readonly'); 
		$('#first_address1').addClass('readonly');
		$('#first_address1').addAttr('readonly'); 
		$('#first_address2').addClass('readonly');
		$('#first_address2').addAttr('readonly'); 
	}else if(order == 'cancle_btn_second'){//두번째 주소지 수정
		$('#add-btn-second').css({'display' : 'none'});
		$('#update_btn_second').css({'display' : ''});
		
		$('#second_name').addClass('readonly');
		$('#second_name').attr('readonly', true);
		$('#second_phone').addClass('readonly');
		$('#second_phone').attr('readonly', true);
		$('#second_zipcode').addClass('readonly');
		$('#second_zipcode').attr('readonly', true); 
		$('#second_address1').addClass('readonly');
		$('#second_address1').attr('readonly', true); 
		$('#second_address2').addClass('readonly');
		$('#second_address2').attr('readonly', true);
	}else if(order == 'cancle_btn_third'){//세번째 주소지 수정
		$('#add-btn-third').css({'display' : 'none'});
		$('#update_btn_third').css({'display' : ''});
		
		$('#third_name').addClass('readonly');
		$('#third_name').attr('readonly', true);
		$('#third_phone').addClass('readonly');
		$('#third_phone').attr('readonly', true); 
		$('#third_zipcode').addClass('readonly');
		$('#third_zipcode').attr('readonly', true);
		$('#third_address1').addClass('readonly');
		$('#third_address1').attr('readonly', true); 
		$('#third_address2').addClass('readonly');
		$('#third_address2').attr('readonly', true);
	}
}

//주소 실제로 수정하는 함수
function updateAddress(order){
	const myInputF = document.querySelector("#adress_one");
	const myInputS = document.querySelector("#adress_second");
	const myInputT = document.querySelector("#adress_third");
	var inputAll;
	var adr_order, name, phone, zipcode, address1, address2;
	
	
	if(order === 'save_btn_first'){
		$('#add-btn-first').css({'display' : 'none'});
		$('#update_btn_first').css({'display' : ''});
			
		inputAll = myInputF.getElementsByTagName('input');
	  	
		adr_order = 1;
		name = $('#first_name').val();
		phone = $('#first_phone').val();
		zipcode = $('#first_zipcode').val();
		address1 = $('#first_address1').val();
		address2 = $('#first_address2').val();
		
		$('#first_name').addClass('readonly');
		$('#first_name').addAttr('readonly');
		$('#first_phone').addClass('readonly');
		$('#first_phone').addAttr('readonly'); 
		$('#first_zipcode').addClass('readonly');
		$('#first_zipcode').addAttr('readonly'); 
		$('#first_address1').addClass('readonly');
		$('#first_address1').addAttr('readonly'); 
		$('#first_address2').addClass('readonly');
		$('#first_address2').addAttr('readonly'); 
	}else if(order === 'save_btn_second'){
		$('#add-btn-second').css({'display' : 'none'});
		$('#update_btn_second').css({'display' : ''});
			
		inputAll = myInputS.getElementsByTagName('input');
		
		adr_order = 2;
		name = $('#second_name').val();
		phone = $('#second_phone').val();
		zipcode = $('#second_zipcode').val();
		address1 = $('#second_address1').val();
		address2 = $('#second_address2').val();
		
	  	$('#second_name').addClass('readonly');
		$('#second_name').attr('readonly', true);
		$('#second_phone').addClass('readonly');
		$('#second_phone').attr('readonly', true);
		$('#second_zipcode').addClass('readonly');
		$('#second_zipcode').attr('readonly', true); 
		$('#second_address1').addClass('readonly');
		$('#second_address1').attr('readonly', true); 
		$('#second_address2').addClass('readonly');
		$('#second_address2').attr('readonly', true);
	}else if(order === 'save_btn_third'){
		$('#add-btn-third').css({'display' : 'none'});
		$('#update_btn_third').css({'display' : ''});
			
		inputAll = myInputT.getElementsByTagName('input');
		
		adr_order = 3;
		name = $('#third_name').val();
		phone = $('#third_phone').val();
		zipcode = $('#third_zipcode').val();
		address1 = $('#third_address1').val();
		address2 = $('#third_address2').val();
		
	  	$('#third_name').addClass('readonly');
		$('#third_name').attr('readonly', true);
		$('#third_phone').addClass('readonly');
		$('#third_phone').attr('readonly', true); 
		$('#third_zipcode').addClass('readonly');
		$('#third_zipcode').attr('readonly', true);
		$('#third_address1').addClass('readonly');
		$('#third_address1').attr('readonly', true); 
		$('#third_address2').addClass('readonly');
		$('#third_address2').attr('readonly', true);
	}
	
	console.log('배송지 수정중');
	
	$.ajax({
		url: "updateAddress.do",
		type: "POST",
		async: false,
		data: {
				"user_address_order": adr_order,
				"user_name": name,
				"user_phone": phone,
				"user_zipcode": zipcode,
				"user_address1": address1,
				"user_address2": address2
			},
		success: function(data){
			if(data == 1){
				alert('수정이 완료 되었습니다.');
				return true;
			}else if(data == 0){
				alert('오류가 발생했습니다.');
				return false;
			}
		},
		error: function(request, status, error){
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
}