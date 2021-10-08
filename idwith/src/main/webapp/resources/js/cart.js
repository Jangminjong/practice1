$(document).ready(function() {
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
	
	//실제로 DB에 수정하는 이벤트
	$('#update-option-btn').click(function() {
		$.ajax({
			url: "optionUpdate.do",
			type: "GET",
			async: false,
			data: { 
					"goods_code": $('input[name=cur_goods_code]').val(),
					"curOption": $('.CartOptionUpdateModal__optionBox').text()
				},
			success: function(data){
				$('.footer_modal_container').css({'display': 'none'});
			},
			error: function(request, status, error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}		
		});
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
			$('.CartOrderMessageEditor__orderMessageSaveBtn').css({'display': 'none'});
			alert('성공');
		},
		error: function(request, status, error){
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}		
	});
}

//체크박스 이벤트
function selectAll(selectAll) {
	const checkboxs = document.getElementsByName('checkAll');
	
	checkboxs.forEach((checkbox) => {
		checkbox.checked = selectAll.checked;
	})
	
	var cartLength = $('#cartLength').val();
	$('.CartCheckboxControl__label--bold').text(cartLength);
}

//옵션 수정 버튼 이벤트
function optionUpdate(goods_code, index){
	console.log('인덱스 값 : ' + index);
	
	//이미지
	var str1 = 'img' + index;
	var img = $('#'+str1).attr("src");
	$('.CartOptionUpdateModal__productImage').attr('src', img);

	//상품명
	var str2 = 'goods_name' + index;
	var goodsName = $('#'+str2).text();
	$('.CartOptionUpdateModal__productName').text(goodsName);
	
	//가격
	var str3 = 'goods_option_price' + index;
	var goodsPrice = $('.'+str3).text();
	console.log('가격 : ' + goodsPrice);
	$('.CartOptionUpdateModal__productPrice').text(goodsPrice+'원');
	
	//현재 선택옵션
	var str4 = 'optionList' + index;
	var curOption = $('#'+str4).text();
	$('.CartOptionUpdateModal__optionBox').text(curOption);
	
	//상품 코드 hidden값 설정
	var str5 = 'goods_code' + index;
	var hiddenCode = $('#'+str5).val();
	$('input[name=cur_goods_code]').attr('value', hiddenCode);
	
	//옵션리스트
	
	
	$('.footer_modal_container').css({'display': ''});
	document.body.classList.add("stop-scrolling");
	$.ajax({
		url: "cartGetOptionList.do",
		type: "GET",
		dataType: 'json',
		async: false, 
		data: { 
			"goods_code": goods_code
			},
		success: function(data){
			console.log('변환 전 : ' + data);
			for(let i=0; i<2; i++){
				console.log(data.goods_op1_value);
			}
			
		},
		error: function(request, status, error){
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
}

//옵션 삭제 이벤트
function optionDelete(index){
	var str = 'optionListItem' + index;
	var listId = document.getElementById(str);
	listId.remove();
	
	if(1 == 1){//해당 태그에 옵션이 하나도 없으면 폼을 삭제
		var str1 = 'cartListItem' + index;
		var cartList = document.getElementById(str1);
		var result = document.getElementById("resultForm");
		
		cartList.remove();
		result.remove();
		location.href = "cart.do";
	}
}