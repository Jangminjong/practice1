var slideIndex = 0; //slide index

// HTML 로드가 끝난 후 동작
window.onload=function(){
  showSlides(slideIndex);

  // Auto Move Slide
  var sec = 3000;
  setInterval(function(){
    slideIndex++;
    showSlides(slideIndex);

  }, sec);
}

function nextSlider(){
	const current = document.getElementById('current_page').innerHTML;
	const current_index = document.getElementById('ui_slide').dataset.index;
		
	if(current >= 5 || current_index >= 4){
		document.getElementById('current_page').innerHTML = "1";
		//document.getElementById('ui_slide').dataset.index = "0";		
	}else{
		const result = Number(current) + Number(1);
		//const index = Number(current_index) + Number(1);
		document.getElementById('current_page').innerHTML = result;
		//document.getElementById('ui_slide').dataset.index = index;
		
		$("#ui_slide1").insertAfter("#ui_slide5");
	}
}

function prevSlider(){
	const current = document.getElementById('current_page').innerHTML;
	const current_index = document.getElementById('ui_slide').dataset.index;
		
	if(current <= 1 || current_index <= 0){
		document.getElementById('current_page').innerHTML = "5";
		//document.getElementById('ui_slide').dataset.index = "4";		
	}else{
		const result = Number(current) - Number(1);
		//const index = Number(current_index) - Number(1);
		document.getElementById('current_page').innerHTML = result;
		//document.getElementById('ui_slide').dataset.index = index;
	}
}