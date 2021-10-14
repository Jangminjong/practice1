/**
 * 
 */


function goodsCalcRes(goods_code){
	$.ajax({
		url: "goodsCalcRes.mdo",
		type:"POST",
		async:"false",
		data : {
			"goods_order_detail_code" : goods_code
		}, success : function(data){
			location.replace("calculate.mdo");
		}, error : function(request, status, error){
			alert(`goodsCalcRes fail :
				error code: ${request.status}
				error message: ${error}`);
		}
	})
	
}

function classCalcRes(class_code){
	$.ajax({
		url: "classCalcRes.mdo",
		type:"POST",
		async:"false",
		data : {
			"class_order_seq" : class_code
		}, success : function(data){
			location.replace("calculate.mdo");
		}, error : function(request, status, error){
			alert(`classCalcRes fail :
				error code: ${request.status}
				error message: ${error}`);
		}
	})
	
}