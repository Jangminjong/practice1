$(document).ready(function() {
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
	
	$('#btn-order-goods').click(function(){
		var userInfoBtn = document.getElementById('btn-order-goods');
		if(userInfoBtn.classList.contains('fa-chevron-down')){
			$('.order-goods-detail').css('display', 'block');
			userInfoBtn.classList.replace('fa-chevron-down', 'fa-chevron-up');
		}else{
			$('.order-goods-detail').css('display', 'none');
			userInfoBtn.classList.replace('fa-chevron-up', 'fa-chevron-down');
		}
	});
	
	$('#btn-info-agree').click(function(){
		var userInfoBtn = document.getElementById('btn-info-agree');
		if(userInfoBtn.classList.contains('fa-chevron-down')){
			$('.segment-list').css('display', 'inline');
			userInfoBtn.classList.replace('fa-chevron-down', 'fa-chevron-up');
		}else{
			$('.segment-list').css('display', 'none');
			userInfoBtn.classList.replace('fa-chevron-up', 'fa-chevron-down');
		}
	});
	
	
	
	$(document).on("keyup", "#goods-phone", function() { 
		$(this).val( $(this).val().replace(/[^0-9]/g, "").replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,"$1-$2-$3").replace("--", "-") ); 
	});
	
	$(document).on("keyup", "#delivery-phone", function() { 
		$(this).val( $(this).val().replace(/[^0-9]/g, "").replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,"$1-$2-$3").replace("--", "-") ); 
	});
	
	
	// 아임포트
   IMP.init("imp09847071");

});

function openCouponList(){
	if($('#goods-coupon-list').css('display', 'none')){
		$('#goods-coupon-list').css('display', '')
	}
}

// 쿠폰 사용

function useCoupon(discount, code){
	var discount_ = parseInt(discount);
	var usePoint = parseInt($('#use-point').val());
	var finalPrice = parseInt($('#final-price').val());
	var finalDiscount = discount_+usePoint;
	
	var realFinalPrice = finalPrice - finalDiscount;
	
	$('#semi-final-price').val(realFinalPrice);
	$('#goods-final-price').val(realFinalPrice)
	$('#goods-order-coupon').val(discount);
	$('#final-discount').val(finalDiscount);
	
	$('#coupon-code').val(code);
}

function partialPointUse(){
	var coupon =parseInt($('#goods-order-coupon').val() );
	var usePoint = parseInt($('#use-point').val());
	var initialPoint = parseInt($('#initial-point').val());
	var pointBalance;
	var goodsOrderPrice = parseInt($('#final-price').val());
	var semiFinalPrice;
	var finalDiscount;
	if(usePoint > initialPoint){
		$('#use-point').val("");
	}else if($('#use-point').val()==""){
		$('#point-balance').val( parseInt($('#initial-point').val()));
	}else{
		pointBalance = initialPoint - usePoint;
		$('#point-balance').val(pointBalance);
		
		finalDiscount=coupon+usePoint;
		$('#final-discount').val(parseInt(finalDiscount));
		semiFinalPrice = goodsOrderPrice - finalDiscount;
		$('#semi-final-price').val(parseInt(semiFinalPrice));
		$('#goods-final-price').val(parseInt(semiFinalPrice));
	}
}

function allUsePoint(){
	var coupon =parseInt($('#goods-order-coupon').val() );
	var goodsOrderPrice = parseInt($('#final-price').val());
	var initalPoint= parseInt($('#initial-point').val());
	var semiFinalPrice;
	var finalDiscount;
	$('#use-point').val( parseInt($('#initial-point').val()));
	$('#point-balance').val("");
	
	finalDiscount=coupon+initalPoint;
	$('#final-discount').val( finalDiscount);
	semiFinalPrice=goodsOrderPrice - finalDiscount;
	$('#semi-final-price').val( parseInt(semiFinalPrice));
	$('#goods-final-price').val( parseInt(semiFinalPrice));
}

function setDonation(){
	var finalPrice;
	var semiFinalPrice= parseInt($('#semi-final-price').val());
	

	if($('#goods-order-donation').val()=="0"){
		finalPrice=semiFinalPrice+1000;
		$('#goods-order-donation').val("1");
	}else{
		finalPrice=semiFinalPrice;
		$('#goods-order-donation').val("0");
	}
	
	$('#goods-final-price').val(finalPrice);
	console.log($('#goods-order-donation').val());
	
	
}

// 주소 검색

function execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('postcode').value = data.zonecode;
            document.getElementById("address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("delivery-address2").focus();
        }
    }).open();
}



// 아임포트
function requestPay() {
   IMP.request_pay({
      pg: "html5_inicis",
      pay_method: "card",
      merchant_uid: $('#user_id').val() + new Date().getTime(),//상품코드
      name: $('#goods_code').val(), //상품코드
      amount: 100,//parseInt($('#class-final-price').val()),
      buyer_email: $('#user_id').val(),
      buyer_name: $('#user_id').val(),
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
                  url:'/mpweb/insert_goods_payment.do',
                  method: "POST",
                  data:{
					user_name:$('#goods-user-name').val(),
					user_phone:$('#goods-phone').val(),
                    order_save: $('#order-save').val(),
					order_save_use: $('#use-point').val(),
					goods_coupon_discount: $('#goods-coupon-discount').val(),
					point_balance : $('#point-balance').val(),
					order_final_cost:$('#goods-final-price').val(),
					coupon_code:$('#coupon-code').val(),
                    order_detail_payment: 'card',
					delivery_name:$('#delivery-name').val(),
					delivery_phone:$('#delivery-phone').val(),
					delivery_zipcode:$('#postcode').val(),
					delivery_address1:$('#address').val(),
					delivery_address2:$('#delivery-address2').val(),
					goods_order_donation: $('#goods-order-donation').val(),
					final_discount: $('#final-discount').val()
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