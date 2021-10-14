$(document).ready(function (){
	$('.option-select-btn').click(function() {
		$('.option-modal').css({'display': 'block'});
	});
	
	$('#modal_close').click(function() {
		$('.option-modal').css({'display': 'none'});
	});
	
	//옵션 선택이 안되어 있을 시 경고창 띄우기
	$('.cart').click(function (){
		var cartInfo = 0;
		var valueArray = new Array(); // 값을 담을 배열

		//셀렉트박스에 있는 값을 하나씩 꺼내 배열에 담는 로직
		$('select[name=goods_option_value] option:selected').each(function(index){
			var num=$(this).attr('value');
			valueArray.push(num);
		});

		for(let i=0; i<valueArray.length; i++){
			console.log("선택 상품 : " + valueArray[i]);
			if(valueArray[i] == undefined){
				cartInfo = 1;
				break;
			}else if(valueArray[i] != undefined){
				if(cartInfo != 1){
					cartInfo = 2;
				}
			}//end if
		}//end for
		
		if(cartInfo == 1){
			alert('옵션을 선택해주세요.');
		}else if(cartInfo == 2){
			
			console.log('옵션 길이 : ' + $('input[name=optionNum]').val());
			
			//로그인 한 상태인지 확인 후 
			var loginState = $('#user_id').val();
			
			if(loginState == ''){//로그인이 되어있지 않을 때 : 로그인화면으로 이동
				alert('로그인이 필요합니다.');
				location.replace("login.do");
			}else { //로그인되어 있을 때 : 장바구니에 insert --> 수량에 -1을 해서 보내는 듯
				$.ajax({
					url: "insertCart.do",
					type: "POST",
					async: false,
					data: $('#buyScrollable').serialize(),
					datatype: 'json',
					success: function(data){
						$('.selected_options').css({'display': 'none'});
						$('#total').attr('value', 0);
						alert('장바구니에 추가되었습니다');
						location.reload();
					},
					error: function(request, status, error){
						alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
					}
				}); //end ajax
			}
		}
		
	});//end event
	
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
	
	//이미지 이전 버튼 클릭시 발생되는 이벤트
	var imgIndex = 0; //이미지의 인덱스
	var imgList = [];
	$('#image_prev_btn').click(function() {
		var imgLength = 0; //이미지의 총 개수
		$(".img-list li").each(function(index, element) {
     		img = $(this).css('background-image');
			console.log('순서: ' + index);
			imgList[index] = img;
			imgLength += 1;
   		});

		if(imgIndex == 0){
			imgIndex == imgLength;
		}else if(imgIndex >= 1){
			imgIndex -= 1;
		}

		const setImg = imgList[imgIndex];
		
		$('#main_image').css({'background-image': setImg});
	});
	
	//이미지 다음 버튼 클릭시 발생되는 이벤트
	$('#image_next_btn').click(function() {
		var imgLength = 0; //이미지의 총 개수
		$(".img-list li").each(function(index, element) {
     		img = $(this).css('background-image');
			console.log('순서: ' + index);
			imgList[index] = img;
			imgLength += 1;
   		});

		if(imgIndex == imgLength){
			imgIndex == 0;
		}else if(imgIndex < imgLength){
			imgIndex += 1;
		}

		const setImg = imgList[imgIndex];
		
		$('#main_image').css({'background-image': setImg});
	});
});//end document ready

var selectNum = 0; //현재 선택한 옵션의 수를 저장하는 변수
function optionClose(index){
	var str1 = "op_card" + index;
	var optionCard = document.getElementById(str1);
	
	if(selectNum == 1){
		$('.selected_options').css({'display': 'none'});
		selectNum -= 1;
		console.log('선택한 옵션 수 : ' + selectNum);
	}else if(selectNum > 1){
		optionCard.remove();
		selectNum -= 1;
		console.log('선택한 옵션 수 : ' + selectNum);
	}
}

var selIndex = 0;
//select 체크 후 선택한 옵션 표시하는 이벤트
function selOptionChange(){
	var cartInfo = 0;
	var valueArray = new Array(); // 소분류 값을 담을 배열
	var priceArray = new Array(); // 소분류 가격을 담을 배열

	//셀렉트박스에 있는 값을 하나씩 꺼내 배열에 담는 로직
	$('select[name=goods_option_value] option:selected').each(function(index){
		var num=$(this).attr('value');
		valueArray.push(num);
	});
	
	//셀렉트박스에 있는 가격을 하나씩 꺼내 배열에 담는 로직
	$('select[name=goods_option_value] option:selected').each(function(index){
		var num=$(this).attr('id');
		priceArray.push(num);
	});
	
	//실제로 모든 옵션이 선택되었는지 확인하는 로직
	for(let i=0; i<valueArray.length; i++){
		console.log("선택 상품 : " + valueArray[i]);
		if(valueArray[i] == undefined){
			console.log(i+"번째 : 카트번호 1");
			cartInfo = 1;
			break;
		}else if(valueArray[i] != undefined){
			if(cartInfo != 1){
				cartInfo = 2;
			}
		}//end if
	}//end for
	
	if(cartInfo == 2){ //모든 옵션 선택 O
		$('.option-modal').css({'display': 'none'});
		
		//결과 태그에 값 설정
		var selOption = new Array();
		var upOption = new Array();
		for(let i=0; i<valueArray.length; i++){
			let tmp = valueArray[i].split(',');
			
			let str = tmp[0]
			str += '(+';
			str += priceArray[i];
			str += '원)';
			
			selOption.push(str);
		}
		
		upOption.push(valueArray[0], valueArray[1]);
		var updateOption = upOption.join('/');
		
		var goodsPrice = $('#goods_price').text();//상품의 정가
		console.log('정가 : ' + goodsPrice);
		var optionPrice = 0; //선택한 옵션의 가격
		var total = 0; //선택한 옵션들의 총 가격
		for(let i=0; i<selOption.length; i++){
			let resultPrice = Number(priceArray[i]);
			optionPrice += resultPrice;
		}
		optionPrice = optionPrice + Number(goodsPrice);
		
		var result = selOption.join('/');
		//var inputClone = $(".mb-3 input:first-child").clone().prop('id',imgInput+imgInt);
		
		if(selectNum >= 1){ //이미 선택한 옵션이 있을 때
			console.log('인덱스값 : ' + selIndex);
			var divClone = $('.selected_options div:first-child').clone();
			divClone.find('p').prop('id', 'selected_options'+selIndex);
			divClone.find('p').text(result);
			
			divClone.find('b').prop('id', 'selOptionPrice'+selIndex);
			divClone.find('b').text(optionPrice);
			
			divClone.find('.option_card__counter button:first-child').prop('id', 'quantityMinus'+selIndex);
			divClone.find('.option_card__counter button:last-child').prop('id', 'quantityPlus'+selIndex);
			
			var cartIndex = 'cart_quantity'+selIndex;
			console.log('카트넘버: '+cartIndex);
			divClone.find('input:first-child').prop('id', cartIndex);
			
			
			$(".selected_options").append(divClone);
			
			selectNum += 1;
			selIndex += 1;
			console.log('선택한 옵션 수 : ' + selectNum);
		}else if(selectNum == 0){ //이미 선택한 옵션이 없을 때
			
			$('#selected_options0').text(result);//옵션 text 출력
			
			$('#selOptionPrice0').text(optionPrice);//선택한 옵션 총 가격 text 출력
			$('#hiddenPrice').attr('value', optionPrice);//선택한 옵션 총 가격 원본
			
			$('input[name=cart_quantity]').attr('value', 1);//상품의 기본 수량
			
			
			//옵션 선택 결과창 보여줌
			$('.selected_options').css({'display': ''});
			
			//옵션창 초기화(대분류 값으로 선택됨)
			/* $('select[name=goods_option_value] option:selected').each(function(index){
				$('select[name=goods_option_value] option:eq(0)').prop("selected", true);
			}); */
			
			/*var selectInit = $('select[name=goods_option_value]');
			for(let i=0; i<selectInit.length; i++){
				var selId = '#' + selectInit[i].id;
				$(selId+' option:eq(0)').prop("selected", true);
			} */
			
			selectNum += 1;
			selIndex += 1;
			console.log('선택한 옵션 수 : ' + selectNum);
		}//end if
		for(let z=0; z<selectNum; z++){
			const optionStr = 'selOptionPrice'+z;
			const optionPr = $('#'+optionStr).text();
			total += Number(optionPr);
		}
		console.log('합산가격 : ' + total);
		$('#total').attr('value', total);//선택한 모든 옵션의 합산가격
		
	}//end if
}

//상품 수량 +
function plusQuantity(str) {
	console.log('플러스');
	var indexStr = str.split(',');
	var index = indexStr[1];
	
	var curQuantity = $('#cart_quantity'+index).val();
	console.log('현재 수량: '+curQuantity);
	
	var resultQuantity = Number(curQuantity) + 1;
	$('#cart_quantity'+index).attr('value', resultQuantity);
	console.log('결과 수량: '+ resultQuantity);
	
	var curPrice = $('#selOptionPrice'+index).text();
	console.log('현재 가격: ' + curPrice);
	
	var initPrice = Number(curPrice) / Number(curQuantity);
	console.log('정가: ' + initPrice);
	
	//var optionPrice = $('#hiddenPrice').val();
	
	var optiontotal = Number(initPrice) * Number(resultQuantity);
	$('#selOptionPrice'+index).text(Number(optiontotal));
	console.log('최종값: '+ optiontotal);
	
	var total = 0;
	for(let z=0; z<selectNum; z++){
		const optionStr = 'selOptionPrice'+z;
		const optionPr = $('#'+optionStr).text();
		total += Number(optionPr);
	}
	
	console.log('총 합산: ' + total);
	$('#total').attr('value', total);
}
	
	
	//상품 수량 -
function minusQuantity(str) {
	console.log('마이너스');
	var indexStr = str.split(',');
	var index = indexStr[1]
	
	var curQuantity = $('#cart_quantity'+index).val();
	if(curQuantity > 1){
		var resultQuantity = Number(curQuantity) - 1;
		$('#cart_quantity'+index).attr('value', resultQuantity);
		
		var curPrice = $('#selOptionPrice'+index).text();
		
		var initPrice = Number(curPrice) / Number(curQuantity);
		console.log('정가 : '+ initPrice);
		
		var optiontotal = Number(initPrice) * Number(resultQuantity);
		$('#selOptionPrice'+index).text(Number(optiontotal));
		
		var total = 0;
		for(let z=0; z<selectNum; z++){
			const optionStr = 'selOptionPrice'+z;
			const optionPr = $('#'+optionStr).text();
			total += Number(optionPr);
		}
		
		console.log('합산가격 : ' + total);
		
		$('#total').attr('value', total);
	}
}

function choicePeople(date, time, people){
	
	$(".NumberCounter__input").prop('disabled', false);
	$(".ui_btn--red").prop('disabled', false);
	$(".NumberCounter__input").prop('max', people);
	
	document.getElementById('final-date').value= date;
	document.getElementById('final-time').value= time;
}

function setPrice(){
	var people = parseInt($('.NumberCounter__input').val());
	var price = parseInt($('#price').val());
	var finalPrice= people * price;
	document.getElementById('final-price').value= finalPrice;
}





$(document).ready(function() {
	//loadCalendar();
	
	const email = $('#email').val();
	$(document).on("click", "#btn-payment", function(){
		if(email==''){
			alert('로그인 후 작성 가능합니다.');
			location.replace('/mpweb/login.do');
		}else if(document.classRegForm.class_order_price.value==""){
			alert('참여 인원을 선택해주세요.')
			document.classRegForm.class_order_people.focus();
		}else{
			document.getElementById('class-reg-form').onsubmit="return true";
		}
		
	});
	
	
	var openAddress = $('#class-address').val();
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = {
		center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		level : 3
	// 지도의 확대 레벨
	};

	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption);

	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();

	// 주소로 좌표를 검색합니다
	geocoder.addressSearch(openAddress, function(result, status) {

						
		// 정상적으로 검색이 완료됐으면 
						if (status === kakao.maps.services.Status.OK) {

							var coords = new kakao.maps.LatLng(result[0].y,
									result[0].x);

							// 결과값으로 받은 위치를 마커로 표시합니다
							var marker = new kakao.maps.Marker({
								map : map,
								position : coords
							});

							// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
							map.setCenter(coords);
							
						}
	});
	
	
	
	
	
	// 달력 파트

let calendar = document.querySelector('.calendar')

const month_names = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12']

isLeapYear = (year) => {
	return (year % 4 === 0 && year % 100 !== 0 && year % 400 !== 0) || (year % 100 === 0 && year % 400 === 0)
}

getFebDays = (year) => {
	return isLeapYear(year) ? 29 : 28
}

generateCalendar = (month, year, date) => {

	let calendar_days = calendar.querySelector('.calendar-days')
	let calendar_header_year = calendar.querySelector('#year')

	let days_of_month = [31, getFebDays(year), 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

	calendar_days.innerHTML = ''

	let currDate = new Date()
	if (!month) month = currDate.getMonth()
	if (!year) year = currDate.getFullYear()
	
	let curr_month = `${month_names[month]}`
	month_picker.innerHTML = curr_month
	calendar_header_year.innerHTML = year

	// get first day of month

	let first_day = new Date(year, month, 1)
	

	for (let i = 0; i <= days_of_month[month] + first_day.getDay() - 1; i++) {
		let day = document.createElement('div')
		if (i >= first_day.getDay()) {
			day.classList.add('calendar-day-hover')
			day.innerHTML = i - first_day.getDay() + 1
			day.innerHTML += `<span></span>
                            <span></span>
                            <span></span>
                            <span></span>`
			
			
			if (i - first_day.getDay() + 1 === currDate.getDate() && year === currDate.getFullYear() && month === currDate.getMonth()) {
				day.classList.add('curr-date')
			}
		}
		calendar_days.appendChild(day)
	}
}

let month_list = calendar.querySelector('.month-list');

month_names.forEach((e, index) => {
	let month = document.createElement('div')
	month.innerHTML = `<div data-month="${index}">${e}</div>`
	month.querySelector('div').onclick = () => {
		month_list.classList.remove('show')
		curr_month.value = index
		generateCalendar(index, curr_year.value)
	}
	month_list.appendChild(month)
})

let month_picker = calendar.querySelector('#month-picker')

month_picker.onclick = () => {
	month_list.classList.add('show')
}

var indexes = document.querySelector('#list-length').value;
let currDate;
let curr_month;
let curr_year
for(var i=0; i<indexes; i++){
	currDate = new Date(document.getElementById('open-date'+i).value);
	curr_month = { value: currDate.getMonth() }
	curr_year = { value: currDate.getFullYear() }
	curr_date = { value: currDate.getDate() }
	generateCalendar(curr_month.value, curr_year.value, curr_date.value)
}

document.querySelector('#prev-year').onclick = () => {
	--curr_year.value
	generateCalendar(curr_month.value, curr_year.value)
}

document.querySelector('#next-year').onclick = () => {
	++curr_year.value
	generateCalendar(curr_month.value, curr_year.value)
}

});

function changeImage(arg){
	console.log('서브 이미지 클릭 이벤트 실행');
	
	var str1 = arg.split(",");
	var str2 = str1[1];
	var index = str2;
	console.log('인덱스 : #sub_image,'+index);
	
	const clickImage = $('#sub_image,'+index).css('background-image');
	console.log('버튼 클릭된 이미지 : ' + clickImage);
	
		
	$('#main_image').css({'background-image': clickImage});
}