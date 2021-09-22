$(window).ready(function(){
	$(document).on("click", '#notice-user-submit', function(){
		if(document.noticeUserForm.board_title.value==""){
			alert('제목을 입력해주세요.');
			document.qnaForm.board_title.focus();
		}else if(document.noticeUserForm.board_content.value==""){
			alert('문의 내용을 입력해주세요.');
			document.qnaForm.board_content.focus();
		}else{
			document.getElementById('form-notice-user').onsubmit="return true";
		}
	});
});