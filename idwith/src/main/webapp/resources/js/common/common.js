window.onload = function () {
	/* scroll fixed*/
	const content = document.querySelector('#content');
	const div = document.querySelector('.sticky_aside');
	
	// 컨텐츠 영역부터 브라우저 최상단까지의 길이 구하기
	const contentTop = content.getBoundingClientRect().top + window.scrollY;
	
	window.addEventListener('scroll', function(){
	  if(window.scrollY >= contentTop){
	    div.dataset.state = 'fixed';
	  }else{
	    div.dataset.state = '';
	  }
	});
}

function commonIcon() {
	if(document.getElementsByClassName("artist-inquire-float-btn")[0].style.bottom = "30px"){
		document.getElementsByClassName("artist-inquire-float-btn")[0].style.bottom = "102px";
	}else{
		document.getElementsByClassName("artist-inquire-float-btn")[0].style.bottom = "30px";
	}
	
	if(document.getElementsByClassName("to-top")[0].style.display = "none"){
		document.getElementsByClassName("to-top")[0].style.display = "flex";
	}else{
		document.getElementsByClassName("to-top")[0].style.display = "none";
	}
};

function openCalendar(){
	const body = document.querySelector('body');
	body.style.position = "fixed";
	
	document.getElementById("calendar_background").style.display = "";
	document.getElementById("calendar").style.display = "";
}

function closeCalendar(){
	const body = document.querySelector('body');
	body.style.position = "";
	
	document.getElementById("calendar_background").style.display = "none";
	document.getElementById("calendar").style.display = "none";
}

$(document).ready(function() {
	$('#ribbon_close_btn').click(function (){
			$('#ribbon_close_btn').css({'display' : 'none'});
	});
});