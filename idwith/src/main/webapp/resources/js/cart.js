$(document).ready(function() {
	$('#option_update_btn').click(function() {
		$('.footer_modal_container').css({'display': ''});
		document.body.classList.add("stop-scrolling");
	});
	
	$('.CloseButton').click(function() {
		$('.footer_modal_container').css({'display': 'none'});
		document.body.classList.remove("stop-scrolling");
	});
	
	$('#option_update_cancle_btn').click(function() {
		$('.footer_modal_container').css({'display': 'none'});
		document.body.classList.remove("stop-scrolling");
	});
	
	//주문 요청사항 작성 시 자동으로 저장 버튼 표시
	$(document).on("keyup", ".CommonTextEditor__textarea", function() { 
		$('.CartOrderMessageEditor__orderMessageSaveBtn').css({'display' : 'block'});
		$('.orderMessage').css({'display' : 'flex'});
	});
});

//상품 수량 +
function changePlus(){
	var curQuantity = $('input[name=numberCount]').val();
	var result = Number(curQuantity) + 1;
	
	$('input[name=numberCount]').attr('value', result);
	
	var optionPrice = $('#optionQuantity').text();
	var curOptionPrice = Number(optionPrice) / Number(curQuantity);
	
	var resultOptionPrice = Number(curOptionPrice) + Number(optionPrice);
	$('#optionQuantity').text(resultOptionPrice);
	$('#goodsPrice').text(Math.abs(resultOptionPrice));
	
	
	console.log('아이디 : ' + $('#user_id').val());
	console.log('코드 : ' + $('#goods_code').val());
	$.ajax({
		url: "cartQuantityUpdate.do",
		type: "GET",
		async: false,
		data: { "cart_quantity": $('#cart_quantity').val(),
				"goods_price": $('#goodsPrice').text(),
				"user_id": $('#user_id').val(),
				"goods_code": $('#goods_code').val()
			},
		success: function(data){
		},
		error: function(request, status, error){
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}		
	});
}

//상품 수량 -
function changeMinus(){
	var curQuantity = $('input[name=numberCount]').val();
	
	if(curQuantity > 1){
		var result = Number(curQuantity) - 1;
		
		$('input[name=numberCount]').attr('value', result);
		
		var optionPrice = $('#optionQuantity').text();
		var curOptionPrice = Number(optionPrice) / Number(curQuantity);
		
		var resultOptionPrice = Number(curOptionPrice) - Number(optionPrice);
		$('#optionQuantity').text(Math.abs(resultOptionPrice));
		$('#goodsPrice').text(Math.abs(resultOptionPrice));
		
		$.ajax({
			url: "cartQuantityUpdate.do",
			type: "GET",
			async: false,
			data: { "cart_quantity": $('#cart_quantity').val(),
					"goods_price": $('#goodsPrice').text(),
					"user_id": $('#user_id').val(),
					"goods_code": $('#goods_code').val()
				},
			success: function(data){
			},
			error: function(request, status, error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}		
		});
	}
}

//주문 요청 사항
function orderMessageUpdate(){
	var msg = document.getElementById('orderMessage').value;
	
	console.log(msg);
	
	$.ajax({
		url: "orderMessageUpdate.do",
		type: "GET",
		async: false,
		data: { 
			"user_id": $('#user_id').val(),
			"goods_code": $('#goods_code').val(),
			"cart_order_content": msg
			},
		success: function(data){
			alert('성공');
		},
		error: function(request, status, error){
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}		
	});
}