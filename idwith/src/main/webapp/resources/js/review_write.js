/* 후기 작성 */

$(window).ready(function(){
	$(document).on("click", '#review-submit', function(){
		if(document.reviewForm.goods_review_context.value==""){
			alert('후기 내용을 입력해주세요.');
			document.reviewForm.goods_review_context.focus();
		}else{
			document.getElementById('form-review').onsubmit="return true";
		}
	});
	
});

/* 별점 이벤트*/

function starBtn1() {
	var star1 = document.getElementById('star1');
	if(star1.classList.contains('fa-star-o')){
		star1.classList.remove('fa-star-o');
		star1.classList.add('fa-star');
	}

	var total= $('.fa-star').length;
	$('#star-point-total').val(total);
}

function cancelStar1(){
	var star1 = document.getElementById('star1');
	var star2 = document.getElementById('star2');
	var star3 = document.getElementById('star3');
	var star4 = document.getElementById('star4');
	var star5 = document.getElementById('star5');
	
	if(star1.classList.contains('fa-star')){
		star1.classList.remove('fa-star');
		star1.classList.add('fa-star-o');
	}
	
	if(star2.classList.contains('fa-star')){
		star2.classList.remove('fa-star');
		star2.classList.add('fa-star-o');
	}
	
	if(star3.classList.contains('fa-star')){
		star3.classList.remove('fa-star');
		star3.classList.add('fa-star-o');
	}
	
	if(star4.classList.contains('fa-star')){
		star4.classList.remove('fa-star');
		star4.classList.add('fa-star-o');
	}
	
	if(star5.classList.contains('fa-star')){
		star5.classList.remove('fa-star');
		star5.classList.add('fa-star-o');
	}
	
	var total= $('.fa-star').length;
	$('#star-point-total').val(total);
}

function starBtn2() {
	var star1 = document.getElementById('star1');
	var star2 = document.getElementById('star2');
	if(star1.classList.contains('fa-star') && star2.classList.contains('fa-star-o')){
		star2.classList.remove('fa-star-o');
		star2.classList.add('fa-star');
	}
	
	var total= $('.fa-star').length;
	$('#star-point-total').val(total);
}

function cancelStar2(){
	var star2 = document.getElementById('star2');
	var star3 = document.getElementById('star3');
	var star4 = document.getElementById('star4');
	var star5 = document.getElementById('star5');

	
	if(star2.classList.contains('fa-star')){
		star2.classList.remove('fa-star');
		star2.classList.add('fa-star-o');
	}
	
	if(star3.classList.contains('fa-star')){
		star3.classList.remove('fa-star');
		star3.classList.add('fa-star-o');
	}
	
	if(star4.classList.contains('fa-star')){
		star4.classList.remove('fa-star');
		star4.classList.add('fa-star-o');
	}
	
	if(star5.classList.contains('fa-star')){
		star5.classList.remove('fa-star');
		star5.classList.add('fa-star-o');
	}
	
	var total= $('.fa-star').length;
	$('#star-point-total').val(total);
}

function starBtn3() {
	var star1 = document.getElementById('star1');
	var star2 = document.getElementById('star2');
	var star3 = document.getElementById('star3');
	if(star1.classList.contains('fa-star') && star2.classList.contains('fa-star') && star3.classList.contains('fa-star-o')){
		star3.classList.remove('fa-star-o');
		star3.classList.add('fa-star');
	}
	
	var total= $('.fa-star').length;
	$('#star-point-total').val(total);
}

function cancelStar3(){
	var star3 = document.getElementById('star3');
	var star4 = document.getElementById('star4');
	var star5 = document.getElementById('star5');

	if(star3.classList.contains('fa-star')){
		star3.classList.remove('fa-star');
		star3.classList.add('fa-star-o');
	}
	
	if(star4.classList.contains('fa-star')){
		star4.classList.remove('fa-star');
		star4.classList.add('fa-star-o');
	}
	
	if(star5.classList.contains('fa-star')){
		star5.classList.remove('fa-star');
		star5.classList.add('fa-star-o');
	}
	
	var total= $('.fa-star').length;
	$('#star-point-total').val(total);
}

function starBtn4() {
	var star1 = document.getElementById('star1');
	var star2 = document.getElementById('star2');
	var star3 = document.getElementById('star3');
	var star4 = document.getElementById('star4');
	if(star1.classList.contains('fa-star') && star2.classList.contains('fa-star') && star3.classList.contains('fa-star') && star4.classList.contains('fa-star-o') ){
		star4.classList.remove('fa-star-o');
		star4.classList.add('fa-star');
	}
	
	var total= $('.fa-star').length;
	$('#star-point-total').val(total);
}

function cancelStar4(){
	var star4 = document.getElementById('star4');
	var star5 = document.getElementById('star5');
	
	if(star4.classList.contains('fa-star')){
		star4.classList.remove('fa-star');
		star4.classList.add('fa-star-o');
	}
	
	if(star5.classList.contains('fa-star')){
		star5.classList.remove('fa-star');
		star5.classList.add('fa-star-o');
	}
	
	var total= $('.fa-star').length;
	$('#star-point-total').val(total);
}

function starBtn5() {
	var star1 = document.getElementById('star1');
	var star2 = document.getElementById('star2');
	var star3 = document.getElementById('star3');
	var star4 = document.getElementById('star4');
	var star5 = document.getElementById('star5');
	if(star1.classList.contains('fa-star') && star2.classList.contains('fa-star') && star3.classList.contains('fa-star') && star4.classList.contains('fa-star') && star5.classList.contains('fa-star-o')){
		star5.classList.remove('fa-star-o');
		star5.classList.add('fa-star');
	}
	
	var total= $('.fa-star').length;
	$('#star-point-total').val(total);
}

function cancelStar2(){
	var star5 = document.getElementById('star5');

	if(star5.classList.contains('fa-star')){
		star5.classList.remove('fa-star');
		star5.classList.add('fa-star-o');
	}
	
	var total= $('.fa-star').length;
	$('#star-point-total').val(total);
}
