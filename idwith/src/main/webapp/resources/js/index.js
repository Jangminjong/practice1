
$(document).ready(function(){
	
	$('.mymenu').hover(function() {
  		$('.menu-dropdown.menu-first').stop(true, true).delay(0).fadeIn(0);
	}, function() {
 		 $('.menu-dropdown.menu-first').stop(true, true).delay(0).fadeOut(0);
	});

	
	$('#message-list-alarm').hover(function() {
  		$('.menu-second').stop(true, true).delay(0).fadeIn(0);
	}, function() {
 		 $('.menu-second').stop(true, true).delay(0).fadeOut(0);
	});
	
	$('#message-list-msg').hover(function() {
  		$('.menu-third').stop(true, true).delay(0).fadeIn(0);
	}, function() {
 		 $('.menu-third').stop(true, true).delay(0).fadeOut(0);
	});
	
	// 상단 메뉴바 고정
	 var topBar = $("#topBar").offset();
 
    $(window).scroll(function(){
        var docScrollY = $(document).scrollTop()
        var barThis = $("#topBar")
 
        if( docScrollY > (topBar.top+$("#topBar").outerHeight()) ) {
            barThis.addClass("menu-fix");
        }else{
            barThis.removeClass("menu-fix");
        }
 
    });

	// index 슬라이드 배너부분
	var slideCount = $('#slider ul li').length;
	var slideWidth = $('#slider ul li').width();
	var slideHeight = $('#slider ul li').height();
	var sliderUlWidth = slideCount * slideWidth;
	
	console.log('slideCount: '+slideCount+', slideWidth: '+slideWidth+', slideHeight: '+slideHeight+', sliderUlWidth'+sliderUlWidth);
	
	$('#slider').css({ width: slideWidth, height: slideHeight });
	$('#slider ul').css({ width: sliderUlWidth, marginLeft: - slideWidth });
	$('#slider ul li:last-child').prependTo('#slider ul');
	
	 var autoBanner= setInterval(function () {
        moveRight();
    }, 6000);
	
	$('.control-prev').click(function() {
		clearInterval(autoBanner);
		moveLeft();
	});

	$('.control-next').click(function() {
		clearInterval(autoBanner);
		moveRight();
	});
	
	function moveLeft() {
        $('#slider ul').animate({
            left: + slideWidth
        }, 3000, function () {
            $('#slider ul li:last-child').prependTo('#slider ul');
            $('#slider ul').css('left', '');
        });
    };

    function moveRight() {
        $('#slider ul').animate({
            left: - slideWidth
        }, 3000, function () {
            $('#slider ul li:first-child').appendTo('#slider ul');
            $('#slider ul').css('left', '');
        });
    };

	const email =  $('#email').val();
	if(!email ==""){
		// 찜 목록 세팅
		$.ajax({
			url:'setChoice.do',
			type:"GET",
			contentType:'application/json; charset=UTF-8',
			dataType:'json',
			data:{ 
				email:email
			},
			success:function(data){
				var i =0;
				while(i<data.length){
					console.log(data[i]);
					document.getElementById('btn-'+data[i]).classList.add('active');
					i++;
				}
			},
			error: function(request,status,error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
		
		// 작가 팔로우 세팅
		$.ajax({
			url:'setFollow.do',
			type:"GET",
			contentType:'application/json; charset=UTF-8',
			dataType:'json',
			data:{ 
				email:email
			},
			success:function(data){
				var i =0;
				while(i<data.length){
					document.getElementById('btn-'+data[i]).classList.add('active');
					i++;
				}
			},
			error: function(request,status,error, event){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
		
	}
	
	
	// 장바구니 개수 헤더에 세팅
	if(!email ==""){
		$.ajax({
			url:'setCart.do',
			type:"GET",
			contentType:'application/json; charset=UTF-8',
			dataType:'json',
			data:{ 
				email:email
			},
			success:function(data){
				
			},
			error: function(request,status,error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
	}

});


// 하트 눌렀을 때 찜 상태 변경 하기 
function changeChoice(goodsCode, event){
	const email = $('#email').val();
	var choiceBtn = document.getElementById('btn-'+goodsCode);
	var state = choiceBtn.classList.contains('active');
	if(email == ""){
		location.replace('login.do');
	}else{
		$.ajax({
			url:'changeChoice.do',
			type:'GET',
			contentType: 'application/json; charset=UTF-8',
			data :{
				email:email,
				goodsCode:goodsCode,
				state:state
			},
			success:function(data){
				if(data == 1){
						choiceBtn.classList.add('active');				
				}else{
					choiceBtn.classList.remove('active');
				}
				
			},
			error: function(request,status,error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
	}
	event.stopPropagation();
}


// 하트 또는 팔로우 버튼 눌렀을 때 눌렀을 때 팔로우 상태 변경 하기 
function changeFollow(sellerId, event){
	const email = $('#email').val();
	var followBtn = document.getElementById('btn-'+sellerId);
	var state = followBtn.classList.contains('active');
	if(email == ""){
		location.replace('login.do');
	}else{
		$.ajax({
			url:'changeFollow.do',
			type:'GET',
			contentType: 'application/json; charset=UTF-8',
			data :{
				email:email,
				sellerId:sellerId,
				state:state
			},
			success:function(data){
				if(data == 1){
					followBtn.classList.add('active');					
				}else{
					followBtn.classList.remove('active');
				}
			},
			error: function(request,status,error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
	}
	event.stopPropagation();
	
}

function messageView(){
	var email = document.getElementById('email').value;
	$.ajax({
		url:"messageList.do",
		type:"POST",
		data:{
			email:email
		},
		success: function(data){
			if(data != null){
				console.log('성공..');
			}else{
				console.log('실패..');
			}
		},
		error: function(request,status,error){
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
}

function alarmView(){
	var email = document.getElementById('email').value;
	$.ajax({
		url:"alarmList.do",
		type:"POST",
		data:{
			email:email
		},
		success: function(data){
			if(data != null){
				console.log('성공..');
			}else{
				console.log('실패..');
			}
		},
		error: function(request,status,error){
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
}

// 상단 배너 없애기
function bannerHide(){
	$('#header-banner').hide();
}


// 마이페이지 로그인 여부 확인
function myPageCheck(){
	const email =  $('#email').val();
	if(email == ""){
		location.replace('login.do');
	}else{
		location.replace('mypage_order_goods.do');
	}

}

// 클래스 메인 페이지 - 주변 클래스 :: 위치기반
function setClassWithLocation() {
	
	// Geolocation API에 액세스할 수 있는지를 확인
	if (navigator.geolocation) {
		//위치 정보를 얻기
		navigator.geolocation.getCurrentPosition(function(pos) {
			// (위도, 경도)
			geocoder.coord2RegionCode(pos.coords.longitude, pos.coords.latitude, callback);
			
		});
	} else {
		alert("이 브라우저에서는 Geolocation이 지원되지 않습니다.")
	}
	
	var geocoder = new kakao.maps.services.Geocoder();
	
	var callback = function(result, status) {
    if (status === kakao.maps.services.Status.OK) {
		var area = result[0].address_name; // ex) 서울특별시 광진구 구의동
		$.ajax({
			url: 'nearbyMeClass.do',
			type: 'POST',
			data: {
				area:area
			},
			success:{},
			error: function(request, status, error) {
				alert("list search fail :: error code: "
					+ request.status + "\n" + "error message: "
					+ error + "\n");
			}
		})
    }
};

}



