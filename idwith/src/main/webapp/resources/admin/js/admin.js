$(document).ready(function() {
	
	//관리자 권한 확인 후 정산
	$('#productCalculate').click(function (){
		var role = $('#admin_role').val();
		
		if(role != 'all'){
			noSuperAdmin();
		}else if(role == 'all'){
			productCalculate();
		}
	});
	
	$('#login_logging').click(function (){
		var id = $('#email_login_input').val();
		var pwd = $('#password_login_input').val();
		
		$.ajax({
	        url : "adminIdCheck.mdo",
	        type : "GET",
			async : false,
	        data : {
				"admin_id" : id,
				"admin_pwd" : pwd
			},
	        success : function(data) {
				console.log('아이디 체크 완료');
				if(data == 1){
					document.getElementById('form').onsubmit = "return true";
				}else if(data == 0){
					alert('아이디 또는 비밀번호를 다시 확인해주세요.');
				}else if(data == -1){
					alert('존재하지 않는 아이디입니다.');
				}
	        },
	        error : function(request, status, error) {
	            alert("list search fail :: error code: "
	            + request.status + "\n" + "error message: "
	            + error + "\n");
	        }
    	});
	});	
});

function noSuperAdmin(){
	Swal.fire({
        icon: 'error',
        title: 'No SuperAdmin',
        text: '정산은 최고관리자님만 가능합니다.',
    });
}

function productCalculate(){
	Swal.fire({ 
		title: '', 
		text: "작가의 정산을 진행하시겠습니까?", 
		icon: 'warning', 
		showCancelButton: true, 
		confirmButtonColor: '#FF7B30', 
		confirmButtonBorderColor : "#FF7B30",
		cancelButtonColor: '#15283D', 
		confirmButtonText: '정산', 
		cancelButtonText: '취소' 
	}).then((result) => { 
		if (result.isConfirmed) { 
			Swal.fire(
				'정산되었습니다', 
				'정산 내용은 작가님 메일로 전송되었습니다.' 
			) 
		} 
	})
}