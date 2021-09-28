$(document).ready(function() {
	
	//관리자 권한 확인 후 정산
	$('#calculate').click(function (){
		var role = $('#admin_role').val();
		
		if(role != 'all'){
			$('#defaultModalcalculate').removeClass('modal-backdrop');
			alert('최고관리자가 아닙니다.');
			
			console.log('끝');
			return;
		}
	});	
	
	$('#calculate').click(function (){
		var role = $('#admin_role').val();
		
		if(role != 'all'){
			$('#defaultModalcalculate').removeClass('modal-backdrop');
			alert('최고관리자가 아닙니다.');
			
			console.log('끝');
			return;
		}
	});
});