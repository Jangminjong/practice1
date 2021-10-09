/*$(document).ready(function() {
	$('#info-prd-btn').click(function() {
		console.log('화살표 버튼 눌림');
		
		$('#info-prd').addClass('active');
		$('#info-prd-tab').css({'display': ''});
	});
	
	$('.cart').click(function() {
		
	});
});*/

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

