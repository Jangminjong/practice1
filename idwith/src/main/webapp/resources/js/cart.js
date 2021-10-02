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
});