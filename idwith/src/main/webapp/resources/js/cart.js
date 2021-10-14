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
		var cartInfo = 0;
		var valueArray = new Array(); // 값을 담을 배열

		//셀렉트박스에 있는 값을 하나씩 꺼내 배열에 담는 로직
		$('select[name=goods_option_value] option:selected').each(function(index){
			var num=$(this).attr('value');
			valueArray.push(num);
		});
		
		for(let i=0; i<valueArray.length; i++){
			if(valueArray[i] == undefined){
				cartInfo = 1;
				break;
			}else if(valueArray[i] != undefined){
				if(cartInfo != 1){
					cartInfo = 2;
				}
			}//end if
		}//end for
		
		console.log('3333333333333333333333' + $('#updateOption').val());
		
		
		if(cartInfo == 1){
			alert('옵션을 선택해주세요.');
		}else if(cartInfo == 2){
			$.ajax({
				url: "optionUpdate.do",
				type: "GET",
				async: false,
				data: { 
						"goods_code": $('input[name=cur_goods_code]').val(),
						"curOption": $('#updateOption').val(),
						"goods_price": $('#total_price').text()
					},
				success: function(data){
					//var resultOption = $('.CartOptionUpdateModal__optionBox').text();
					var totalPrice = $('#total_price').text();
					//$('.CartOptionListItem__optionText').text(resultOption);
					$('#optionQuantity').text(totalPrice);
					$('.footer_modal_container').css({'display': 'none'});
				},
				error: function(request, status, error){
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}		
			});
		}
	});
	
	
	//선택삭제 버튼 이벤트
	$('.selDelete').click(function() {
		const checkboxs = document.getElementsByName('checkAll').checked;
		
		
		
		checkboxs.forEach((checkbox) => {
			var num=$(this).attr('id');
			
			var str1 = $('#'+num);
			console.log('선택삭제 중' + str1);
			checkbox.str1.unwrap();
		})
	});
});

//상품 수량 +
function changePlus(state, index){
	if(state == 'update'){
		const checkboxs = document.getElementsByName('optionCheck').checked;
		console.log('몇번째 상품인가요 : ' + index);
		
		var str1 = "cart_quantity" + index;
		var quantity = $('#'+str1).val();
		var curQuantity = $('#'+str1).val();//현재 수량
		
		var resultQuantity = Number(curQuantity) + 1;//결과 : 수량
		$('#'+str1).attr('value', resultQuantity);
		
		var str2 = 'goods_code' + index;
		var goods_code = $('#'+str2).val();
		
		var optionPrice = $('#optionPrice'+index).text();//현재 작품 가격
		var initOptionPrice = Number(optionPrice) / Number(curQuantity); //정가
		
		var resultOptionPrice = Number(initOptionPrice) * Number(resultQuantity);//결과 : 옵션 + 정가 가격
		$('#optionPrice'+index).text(resultOptionPrice);
		
		$('#goods_price'+index).attr('value', resultOptionPrice);
		$('#goodsPrice').text(Math.abs(resultOptionPrice));//선택한 모든 상품(정가+옵션)의 합산
	
		var length = $('#optionLength'+index).val();
		var allGoodsPrice = 0;
		const checkLength = document.getElementsByName('optionCheck').checked;
		
		
		//체크박스 선택된 애들만 최종금액에 + 해야함 (여기부터 시작)
		/*checkboxs.forEach((checkbox) => {
			var num=$(this).attr('id');
			
			var str1 = $('#'+num);
			console.log('선택삭제 중' + str1);
			checkbox.str1.unwrap();
		})*/
	
		$('#allGoodsPrice').attr('value', allGoodsPrice); //최종 금액 세팅
		
		$.ajax({
			url: "cartQuantityUpdate.do",
			type: "GET",
			async: false,
			data: { "cart_quantity": curQuantity,
					"goods_price": $('#goodsPrice').text(),
					"user_id": $('#user_id').val(),
					"goods_code": goods_code
				},
			success: function(data){
			},
			error: function(request, status, error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}		
		});
	}else if(state == 'modal'){
		var curQuantity = $('input[name=numberCount_m]').val();
		var result = Number(curQuantity) + 1;
		var totalPrice = $('#total').val();
		
		$('input[name=numberCount_m]').attr('value', result);
		console.log("totalPrice:"+totalPrice);
		var resultPrice = Number(totalPrice) * Number(result);
		console.log(resultPrice);
		$('#total_price').text(Math.abs(resultPrice));
		
	}
}

//상품 수량 -
function changeMinus(state, index){
	if(state == 'update'){
		var str1 = "cart_quantity" + index;
		var quantity = $('#'+str1).val();
		var curQuantity = $('#'+str1).val();//현재 수량
		
		var str2 = 'goods_code' + index;
		var goods_code = $('#'+str2).val();
		
		if(curQuantity > 1){
			var resultQuantity = Number(curQuantity) - 1; //결과 : 수량
			$('#'+str1).attr('value', resultQuantity);
			
			var optionPrice = $('#optionPrice'+index).text();
			var initOptionPrice = Number(optionPrice) / Number(curQuantity);
			
			var resultOptionPrice = Number(initOptionPrice) * Number(resultQuantity);
			$('#optionPrice'+index).text(Math.abs(resultOptionPrice));
			
			$('#goodsPrice').text(Math.abs(resultOptionPrice));
			
			$.ajax({
				url: "cartQuantityUpdate.do",
				type: "GET",
				async: false,
				data: { "cart_quantity": resultQuantity,
						"goods_price": $('#goodsPrice').text(),
						"user_id": $('#user_id').val(),
						"goods_code": goods_code
					},
				success: function(data){
				},
				error: function(request, status, error){
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}		
			});
		}
	}else if(state == 'modal'){
		var curQuantity = $('input[name=numberCount_m]').val();
		if(curQuantity > 1){
			var result = Number(curQuantity) - 1;
			var totalPrice = $('#total').val();
		
			$('input[name=numberCount_m]').attr('value', result);
			console.log("totalPrice:"+totalPrice);
			var resultPrice = Number(totalPrice) * Number(result);
			console.log(resultPrice);
			$('#total_price').text(Math.abs(resultPrice));
		}
	}
}

//주문 요청 사항
function orderMessageUpdate(index){
	var str1 = 'orderMessage' + index;
	var msg = $('#'+str1).val();
	
	console.log(msg);
	
	var str2= 'goodsItem' + index;
	var goods_code = $('#'+str2).val();
	
	console.log('상품코드 확인 : ' + goods_code);
	
	$.ajax({
		url: "orderMessageUpdate.do",
		type: "GET",
		async: false,
		data: { 
			"user_id": $('#user_id').val(),
			"goods_code": goods_code,
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

//전체선택 체크박스 이벤트
function selectAll(selectAll) {
	const checkboxs = document.getElementsByName('optionCheck');
	
	checkboxs.forEach((checkbox) => {
		checkbox.checked = selectAll.checked;
	})
	
	var cartLength = $('#cartLength').val();
	
	var allCheck = document.getElementById('cart-product-all-check');
	if(allCheck.checked == false){
		$('.CartCheckboxControl__label--bold').text(0);
		$('#payment_btn').attr('disabled', true);
	}else {
		$('.CartCheckboxControl__label--bold').text(cartLength);
		$('#payment_btn').attr('disabled', false);
	}
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
	var str1 = "cart_quantity" + index;
	var curQuantity = $('#'+str1).val();//현재 수량
	var optionPrice = $('#optionPrice'+index).text();//현재 작품 가격
	
	console.log("현재 가격 : " + optionPrice);
	var initOptionPrice = Number(optionPrice) / Number(curQuantity); //정가
	
	var str3 = 'goods_option_price' + index;
	var goodsPrice = $('.'+str3).text();
	var goodsTotal = Number(initOptionPrice) + Number(goodsPrice);
	console.log('가격 : ' + goodsTotal);
	$('.CartOptionUpdateModal__productPrice').text(goodsTotal+'원');
	
	//현재 선택옵션
	var str4 = 'optionList' + index;
	var curOption = $('#'+str4).text();
	$('.CartOptionUpdateModal__optionBox').text(curOption);
	
	//상품 코드 hidden값 설정
	var str5 = 'goods_code' + index;
	var hiddenCode = $('#'+str5).val();
	$('input[name=cur_goods_code]').attr('value', hiddenCode);
	
	//옵션리스트
	$.ajax({
		url: "cartGetOptionList.do",
		type: "GET",
		async: false, 
		data: { 
			"goods_code": goods_code
			},
		success: function(data){
			console.log('옵션 모달 성공');
			
			$('.footer_modal_container').css({'display': ''});
			document.body.classList.add("stop-scrolling");	
		},
		error: function(request, status, error){
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
}

//옵션 삭제 이벤트
function optionDelete(goods_code, index){
	var str = 'optionListItem' + index;
	var listId = document.getElementById(str); //작품 옵션 태그
	
	var str1 = 'cartListItem' + index;
	var cartList = document.getElementById(str1); //작품 전체 태그
	var result = document.getElementById("resultForm"); //총 결제금액있는 태그
	var clientCartList = document.getElementById('clientCartList');//장바구니 전체 태그
	
	var optionTagExists = !!document.getElementsByClassName("goodsOptionTag"); //옵션태그가 존재하는지 확인
	var goodsTagExists = !!document.getElementById("goodsTag"); //작품 태그가 존재하는지 확인
		
	var str2 = 'cart_num' + index;	
	var cart_num = 	document.getElementById(str2).value;
		
	$.ajax({
		url: "deleteCartList.do",
		type: "GET",
		async: false, 
		data: { 
			"goods_code": goods_code,
			"cart_num": cart_num
		},
		success: function(data){
			console.log('옵션 삭제 코드');
			if(optionTagExists == true){ //다른 옵션이 존재하는 경우
				listId.remove();
				console.log('옵션만 삭제');
			}else if(optionTagExists == false){ //다른 옵션이 존재하지 않는 경우
				console.log('옵션 없어서 전체 삭제');
				listId.remove();
				cartList.remove(); //작품 태그 삭제
				if(goodsTagExists == false){ //다른 작품이 존재하지 않는 경우
					result.remove(); //장바구니 푸터 삭제
					clientCartList.remove();
				}
			}
			location.href = "cart.do";
		},
		error: function(request, status, error){
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
}

//select box 변화 감지 이벤트
function optionChange(){
	var cartInfo = 0;
	var valueArray = new Array(); // 소분류 값을 담을 배열
	var priceArray = new Array(); // 소분류 가격을 담을 배열

	//셀렉트박스에 있는 값을 하나씩 꺼내 배열에 담는 로직
	$('select[name=goods_option_value] option:selected').each(function(index){
		var num=$(this).attr('value');
		valueArray.push(num);
	});
	
	//셀렉트박스에 있는 값을 하나씩 꺼내 배열에 담는 로직
	$('select[name=goods_option_value] option:selected').each(function(index){
		var num=$(this).attr('id');
		priceArray.push(num);
	});
	
	//실제로 모든 옵션이 선택되었는지 확인하는 로직
	for(let i=0; i<valueArray.length; i++){
		if(valueArray[i] == undefined){
			cartInfo = 1;
			break;
		}else if(valueArray[i] != undefined){
			if(cartInfo != 1){
				cartInfo = 2;
			}
		}//end if
	}//end for
	
	if(cartInfo == 2){//모든 옵션 선택 O
		$('#option-modal').css({'display': 'none'});

		
		//결과 태그에 값 설정
		var selOption = new Array();
		var upOption = new Array();
		for(let i=0; i<valueArray.length; i++){
			let tmp = valueArray[i].split(',');
			
			let str = tmp[0];
			str += '(+';
			str += priceArray[i];
			str += '원)';
			
			
			console.log('값1 : ' + valueArray[i]);
			console.log('값2 : ' + priceArray[i]);
			
			
			selOption.push(str);
		}
		
		upOption.push(valueArray[0], valueArray[1]);
		var updateOption = upOption.join('/');
		console.log('가공 값 : ' + updateOption);

		//화면에 보여주기 위해 가공
		var result = selOption.join('/');

		$('#selected_options').text(result);//옵션 text 출력
		$('.CartOptionUpdateModal__optionBox').text(result);
		$('#updateOption').attr('value', updateOption);
		
		
		var total = 0;
		for(let i=0; i<selOption.length; i++){
			let resultPrice = Number(priceArray[i]);
			total += resultPrice;
			
			console.log(total);
		}
		
		$('#selOptionPrice').text(total);//선택한 옵션 총 가격 text 출력
		$('#total').attr('value', total);//선택한 모든 옵션의 합산가격
		
		var initPrice = $('#init_price').val(); // 초기 정가
		var totalPrice = Number(initPrice) + Number(total); 
		$('#total_price').text(totalPrice); // 총 가격 표시용
		$('#total').attr("value", totalPrice); // (초기정가 + 옵션가) 1개 가격 
		console.log('수량 변경전:'+ totalPrice);
		
		$('input[name=cart_quantity]').attr('value', 1);//상품의 기본 수량
		
		//최종 상품 가격 표시
		$('.CartOptionUpdateModal__productPrice').text(totalPrice+'원');
		
		//옵션 선택 결과창 보여줌
		$('.selected_options').css({'display': ''});
		
		//옵션창 초기화(대분류 값으로 선택됨)
		/* $('select[name=goods_option] option:selected').each(function(index){
			$("select[name=goods_option] option:eq(0)").prop("selected", true);
		}); */
		
	}//end if
}

//옵션 이벤트
function checkOption() {
	
}


//주문하기 버튼 이벤트
function paymentBtn(){
	$('#loadingForm').css({'display': 'block'});
	setTimeout(function() { 
		var finalPrice = $('#final_price').val();
		
		//체크박스가 체크된 것만 가져옴
		//var selChecked = $('input[name=optionCheck]:checked');
		//var formTag = selChecked.closest('input');
	
		var optionCheck = $('input[name=optionCheck]:checked');
		var optionStr='cart';
		
		var options = new Array();
		for(let i=0; i<optionCheck.length; i++){
			console.log(optionCheck[i]);	
			console.log(i+'번쨰');
			console.log("선택한 옵션의 카트 넘버 : " + optionCheck[i].value);
			options.push(optionCheck[i].value);
			console.log("카트넘버 타입 : " + typeof optionCheck[i].value);
			optionStr+=('@'+ optionCheck[i].value);
		}
		
		console.log('데이터 타입 : ' + typeof options);
		console.log('optionStr: '+ optionStr);
		
		$.ajaxSettings.traditional = true;
		$.ajax({
			url: "product_payment.do?finalPrice="+finalPrice+'&optionStr='+optionStr,
			type: "POST",
			async: false, 
			//contentType: 'application/json',
			data: optionStr,
			//dataType: "json",
			success: function(data){
				console.log('주문결제 사용 완료');
				setTimeout(function() { 
					location.replace("payment.do");
				}, 1500);
			},
			error: function(request, status, error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		}); 
	}, 1000);
}