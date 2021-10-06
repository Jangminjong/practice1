// 특정 조건으로 정렬할 태
function setCondition(){
	var set = $('#goods-condition').val();
	var goods_categroy = $('#selected-category').val();
	location.replace('/mpweb/goods_category.do?goods_category='+goods_categroy+'&set='+set);
}

function priceRangeSet(){
	var goods_category = $('#selected-category').val();
	const priceRange1 = $('#price-range1').val();
	const priceRange2 = $('#price-range2').val();
	const priceRange3 = $('#price-range3').val();
	const priceRange4 = $('#price-range4').val();
	const priceRange5 = $('#price-range5').val();
	const priceRange6 = $('#price-range6').val();
	var min = 0;
	var max = 0;
	
	if($('#price-range1').is(':checked')){
		max =  priceRange1;
	}
	
	if($('#price-range2').is(':checked')){
		max =  priceRange2;
	}
	
	if($('#price-range3').is(':checked')){
		max =  priceRange3;
	}
	
	if($('#price-range4').is(':checked')){
		max =  priceRange4;
	}
	
	if($('#price-range5').is(':checked')){
		max =  priceRange5;
	}
	
	if($('#price-range6').is(':checked')){
		min =  priceRange6;
		max = "5000000";
	}
	
	alert('min:'+min+'/ max: '+max);
	
	
	$.ajax({
		url:'goods_category.do',
		type: 'GET',
		data: {
			min:min,
			max:max
		},
		success: location.replace('/mpweb/goods_category.do?goods_category='+goods_category+'&max='+max+'&min='+min),
		error: function(request, status, error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
     	},
		
	});
	
}



