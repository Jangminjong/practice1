/*$(window).ready(function(){
	$('#email').blur(function() { 
		$(this).val( $(this).val().replace(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/)); 
			alert('안녕');
			if($('#email').val() > 0) {
				$('.email-error').css({'display' : ''});
			}
	});
	
	$(document).on("keyup", "#auth_code", function() { 
		$(this).val( $(this).val()); 
		if(document.getElementsByName('auth_code').length > 0) {
			document.getElementById('randomPIN_button').setAttribute('class', 'btn btn-login btn-point');
		}
	});
});
*/
function onblurEvent(args){
	switch(args.id){
		case "email":
			var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
			if($('#email').val() == ""){
				$('.emailRe-error').css({'display' : 'flex'});
				$('#emailBorder').css({'border-color' : '#d93025'});
				$('#emailUnderline').css({'background-color' : '#d93025'});
			}else if(exptext.test($('#email').val()) == false){
				$('.emailRe-error').css({'display' : 'none'});
				$('.email-error').css({'display' : 'flex'});
				$('#emailBorder').css({'border-color' : '#d93025'});
				$('#emailUnderline').css({'background-color' : '#d93025'});
			}
			
			if(exptext.test($('#email').val()) == true){
				$('.email-error').css({'display' : 'none'});
				$('#emailBorder').css({'border-color' : ''});
				$('#emailUnderline').css({'background-color' : ''});
			}
			break;
		case "sellerName":
			if($('#sellerName').val() == ""){
				$('.sellerName-error').css({'display' : 'flex'});
				$('#sellerNameBorder').css({'border-color' : '#d93025'});
				$('#sellerNameUnderline').css({'background-color' : '#d93025'});
			}else{
				$('.sellerName-error').css({'display' : 'none'});
				$('#sellerNameBorder').css({'border-color' : ''});
				$('#sellerNameUnderline').css({'background-color' : ''});
			}
			break;
		case "sellerPhone":
			if($('#sellerPhone').val() == ""){
				$('.sellerPhone-error').css({'display' : 'flex'});
				$('#sellerPhoneBorder').css({'border-color' : '#d93025'});
				$('#sellerPhoneUnderline').css({'background-color' : '#d93025'});
			}else{
				$('.sellerPhone-error').css({'display' : 'none'});
				$('#sellerPhoneBorder').css({'border-color' : ''});
				$('#sellerPhoneUnderline').css({'background-color' : ''});
			}
			break;
		case "productName":
			if($('#productName').val() == ""){
				$('.productName-error').css({'display' : 'flex'});
				$('#productNameBorder').css({'border-color' : '#d93025'});
				$('#productNameUnderline').css({'background-color' : '#d93025'});
			}else{
				$('.productName-error').css({'display' : 'none'});
				$('#productNameBorder').css({'border-color' : ''});
				$('#productNameUnderline').css({'background-color' : ''});
			}
			break;
		case "productPrice":
			if($('#productPrice').val() == ""){
				$('.productPrice-error').css({'display' : 'flex'});
				$('#productPriceBorder').css({'border-color' : '#d93025'});
				$('#productPriceUnderline').css({'background-color' : '#d93025'});
			}else{
				$('.productPrice-error').css({'display' : 'none'});
				$('#productPriceBorder').css({'border-color' : ''});
				$('#productPriceUnderline').css({'background-color' : ''});
			}
			break;
	}
}

function textDelete(){
	alert('ddd');
}