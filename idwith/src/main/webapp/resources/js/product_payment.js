$(document).ready(function() {
	// 아임포트
   IMP.init("imp09847071");

});



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
                  url:'/mpweb/insert_goods_payment.do?goods_order='+$('#form-goods-payment').serialize(),
                  method: "POST",
                  data:{
                     goods_order: $('#form-goods-payment').serialize(),
                     goods_code : $('#class-order-code').val(),
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