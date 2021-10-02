
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
	
});

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
