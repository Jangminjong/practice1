$(document).ready(function(){
	$('#btn-user-info').click(function(){
		var userInfoBtn = document.getElementById('btn-user-info');
		if(userInfoBtn.classList.contains('fa-chevron-down')){
			$('.orderer-info').css('display', 'inline');
			userInfoBtn.classList.replace('fa-chevron-down', 'fa-chevron-up');
		}else{
			$('.orderer-info').css('display', 'none');
			userInfoBtn.classList.replace('fa-chevron-up', 'fa-chevron-down');
		}
	});
	
	$(document).on("keyup", "#class-phone", function() { 
		$(this).val( $(this).val().replace(/[^0-9]/g, "").replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,"$1-$2-$3").replace("--", "-") ); 
	});
	
	
	// 아임포트
	IMP.init("imp09847071");
	
});

function phoneTypeSet(){
	$("#class-phone").val( $("#class-phone").val().replace(/[^0-9]/g, "").replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,"$1-$2-$3").replace("--", "-") );
	$("#class-reserve-user").val( $("#class-reserve-user").val().replace(/[^0-9]/g, "").replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,"$1-$2-$3").replace("--", "-") ); 
}


function requiredCheck(args){
	switch(args){
		case "name":
			if( $('#class-user-name').val() == ""){
				document.getElementById('class-warn-name').style.display="";
			}else{
				document.getElementById('class-warn-name').style.display="none";
			}
			
			if($('#class-reserve-name').val()==""){
				document.getElementById('reserve-warn-name').style.display="";
			}else{
				document.getElementById('reserve-warn-name').style.display="none";
			}
			break;
		case "phone":
			if($('#class-phone').val()==""){
				document.getElementById('class-warn-phone').style.display="";
			}else{
				document.getElementById('class-warn-phone').style.display="none";
			}
			
			if($('#class-reserve-user').val()==""){
				document.getElementById('reserve-warn-phone').style.display="";
			}else{
				document.getElementById('reserve-warn-phone').style.display="none";
			}
	}
}

function orderReserveSame(){
	if($('#same-chk').is(':checked')){
		$('#class-reserve-name').val($('#class-user-name').val());
		$('#class-reserve-user').val($('#class-phone').val());
	}else{
		$('#class-reserve-name').val("");
		$('#class-reserve-user').val("");
	}
}

function partialPointUse(){
	var usePoint = parseInt($('#use-point').val());
	var initialPoint = parseInt($('#initial-point').val());
	var pointBalance;
	var classOrderPrice = parseInt($('#class-order-price').val());
	var semiFinalPrice;
	if(usePoint > initialPoint){
		$('#use-point').val("");
	}else if($('#use-point').val()==""){
		$('#point-balance').val($('#initial-point').val());
	}else{
		pointBalance = initialPoint - usePoint;
		$('#point-balance').val(pointBalance);
		$('#final-discount').val(usePoint);
		semiFinalPrice = classOrderPrice - usePoint;
		$('#semi-final-price').val(semiFinalPrice);
		$('#class-final-price').val(semiFinalPrice);
	}
}

function allUsePoint(){
	var classOrderPrice = parseInt($('#class-order-price').val());
	var semiFinalPrice;
	$('#use-point').val($('#initial-point').val());
	$('#point-balance').val("");
	$('#final-discount').val($('#initial-point').val());
	semiFinalPrice=classOrderPrice - parseInt($('#initial-point').val());
	$('#semi-final-price').val(semiFinalPrice);
	$('#class-final-price').val(semiFinalPrice);
}

function setDonation(){
	var finalPrice;
	var semiFinalPrice=parseInt($('#semi-final-price').val());
	if($('#semi-final-price').val()==""){
		semiFinalPrice=parseInt($('#class-order-price').val());
		$('#semi-final-price').val(semiFinalPrice);
	}

	if($('#donation-chk').is(':checked')){
		finalPrice= parseInt($('#semi-final-price').val())+1000;
		$('#class-order-donation').val("1");
	}else{
		finalPrice=parseInt($('#semi-final-price').val());
		$('#class-order-donation').val("0");
	}
	
	$('#class-final-price').val(finalPrice);
	console.log($('#class-order-donation').val());
	
	
}


// 아임포트

function requestPay() {
	IMP.request_pay({
		pg: "html5_inicis",
		pay_method: "card",
		merchant_uid: $('#class-open-name').val() + new Date().getTime(),
		name: $('#class-open-name').val(),
		amount: 100,//parseInt($('#class-final-price').val()),
		buyer_email: $('#user-id').val(),
		buyer_name: $('#class-user-name').val(),
		buyer_tel: $('#class-phone').val()
	}, function(rsp) { // callback
		if (rsp.success) { // 결제 성공 시: 결제 승인 또는 가상계좌 발급에 성공한 경우
			alert('결제 성공');
			// jQuery로 HTTP 요청
			jQuery.ajax({
				url: 'verify_import.do?imp_uid='+rsp.imp_uid+'&merchant_uid='+rsp.merchant_uid, // 예: https://www.myservice.com/payments/complete
				method: "POST",
				headers: { "Content-Type": "application/json" },
				data: {
					imp_uid: rsp.imp_uid, //서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
					merchant_uid: rsp.merchant_uid
					
				}
			}).done(function(data) {
				if(rsp.paid_amount == data.response.amount){
		        	alert("결제 및 결제검증완료");
					$.ajax({
						url:'/mpweb/insert_payment.do?class_order='+$('#form-class-payment').serialize(),
						method: "POST",
						data:{
							class_order: $('#form-class-payment').serialize(),
							class_code : $('#class-order-code').val(),
							point_new : parseInt($('#point-new').val()),
							point_balance : parseInt($('#point-balance').val())
							
						},
						success: location.replace('/mpweb/payment_complete.do'),
						error: function(request,status,error, event){
							alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
						}
					});
		
	        	} else {
	        		alert("결제 실패");
	        	}
			})
		} else {
			alert("결제에 실패하였습니다. 에러 내용: " + rsp.error_msg);
		}
	});
}


