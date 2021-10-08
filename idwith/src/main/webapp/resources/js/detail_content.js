$(document).ready(function (){
	$('.option-select-btn').click(function() {
		$('.option-modal').css({'display': 'block'});
	});
	
	$('.idus-icon-close').click(function() {
		$('.option-modal').css({'display': 'none'});
	});
	
	
	
	//옵션 선택이 안되어 있을 시 경고창 띄우기
	$('.cart').click(function (){
		
		var cartInfo = 0;
		var valueArray = new Array(); // 값을 담을 배열

		//셀렉트박스에 있는 값을 하나씩 꺼내 배열에 담는 로직
		$('select[name=goods_option] option:selected').each(function(index){
			var num=$(this).attr('value');
			valueArray.push(num);
		});
		
		for(let i=0; i<valueArray.length; i++){
			console.log('선택 값 : ' + valueArray);
			
			if(valueArray[i] == undefined){
				console.log(i+'번째 : ' + valueArray[i]);
				cartInfo = 1;
				break;
			}else if(valueArray[i] != undefined){
				console.log(i+'번째 : ' + valueArray[i]);
				if(cartInfo != 1){
					cartInfo = 2;
				}
			}//end if
		}//end for
		
		if(cartInfo == 1){
			alert('옵션을 선택해주세요.');
		}else if(cartInfo == 2){
			$.ajax({
				url: "insertCart.do",
				type: "POST",
				async: false,
				data: $('#buyScrollable').serialize(),
				datatype: 'json',
				success: function(data){
					alert('장바구니에 추가되었습니다');
				},
				error: function(request, status, error){
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}
			}); //end ajax
		}
		
	});//end event
	
	//상품 수량 +
	$('#quantityPlus').click(function() {
		var curQuantity = $('input[name=cart_quantity]').val();
		var resultQuantity = Number(curQuantity) + 1;
		$('input[name=cart_quantity]').attr('value', resultQuantity);
		
		var curPrice = $('#selOptionPrice').text();
		var optionPrice = $('#hiddenPrice').val();
		
		var resultTotal = Number(curPrice) + Number(optionPrice);
		
		$('#total').attr('value', resultTotal);
		$('#selOptionPrice').text(Number(resultTotal));
	});
	
	
	//상품 수량 -
	$('#quantityMinus').click(function() {
		var curQuantity = $('input[name=cart_quantity]').val();
		if(curQuantity > 1){
			var curQuantity = $('input[name=cart_quantity]').val();
			var resultQuantity = Number(curQuantity) - 1;
			$('input[name=cart_quantity]').attr('value', resultQuantity);
			
			var curPrice = $('#selOptionPrice').text();
			var optionPrice = $('#hiddenPrice').val();
			
			var resultTotal = Number(curPrice) - Number(optionPrice);
			
			$('#total').attr('value', resultTotal);
			$('#selOptionPrice').text(Number(resultTotal));
		}
	});
	
	//작품 정보제공 고시
	$('#info-prd-btn').click(function() {
		const activeCheck = $('#info-prd-btn').attr('class'); //클래스 이름 가져오기
		
		if(activeCheck == 'idwith-icon-arrow active'){
			$('#info-prd-tab').css({'display': 'none'});
			$('#info-prd-btn').removeClass('active');
		}else if(activeCheck == 'idwith-icon-arrow'){
			$('#info-prd-tab').css({'display': 'block'});
			$('#info-prd-btn').addClass('active');
		}		
	});
	
	//판매 작가 정보
	$('#info-artist-btn').click(function() {
		const activeCheck = $('#info-artist-btn').attr('class');
		
		if(activeCheck == 'idwith-icon-arrow active'){
			$('#info-artist-tab').css({'display': 'none'});
			$('#info-artist-btn').removeClass('active');
		}else if(activeCheck == 'idwith-icon-arrow'){
			$('#info-artist-tab').css({'display': 'block'});
			$('#info-artist-btn').addClass('active');
		}		
	});
	
	//배송 - 교환 - 환불
	$('#info-delivery-btn').click(function() {
		const activeCheck = $('#info-delivery-btn').attr('class');
		
		if(activeCheck == 'idwith-icon-arrow active'){
			$('#info-delivery-tab').css({'display': 'none'});
			$('#info-delivery-btn').removeClass('active');
		}else if(activeCheck == 'idwith-icon-arrow'){
			$('#info-delivery-tab').css({'display': 'block'});
			$('#info-delivery-btn').addClass('active');
		}		
	});
	
	
	//이미지 이전, 다음 버튼 클릭시 발생되는 이벤트
	$('#image_prev_btn').click(function() {
		const imgList = $('.img-list');
		
		
	});
});


/*function optionPrice(args){
	var subOption;
	var total;
	var sumPrice = 0;

	console.log('최종함수');
	subOption = document.form.goods_option;
	total = document.form.total;
	const str = document.getElementById('goods_price').innerText.slice(0, -1);
	
	if(sumPrice == 0){
		sumPrice = parseInt(str) + parseInt(price);
	}else if(sumPrice != 0){
		sumPrice = sumPrice + parseInt(price);		
	}
	total.value = sumPrice;
	
	
	
	console.log('가격함수');
	priceChange(price);
	
	$("#args option:selected").val();
}*/