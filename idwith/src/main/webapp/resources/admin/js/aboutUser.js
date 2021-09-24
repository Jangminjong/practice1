// 공지 글 작성 및 수정 페이지에 적용
$(window).ready(function(){
	$(document).on("click", '#notice-user-submit', function(){
		if(document.noticeUserForm.board_title.value==""){
			alert('제목을 입력해주세요.');
			document.noticeUserForm.board_title.focus();
		}else if(document.noticeUserForm.board_content.value==""){
			alert('문의 내용을 입력해주세요.');
			document.noticeUserForm.board_content.focus();
		}else{
			document.getElementById('form-notice-user').onsubmit="return true";
		}
	});
});

// qna 페이지에서 특정 카테고리로 정렬할 때
function setCategory(){
	var set = $('#qna_type').val();
	location.replace('/mpweb/qna.mdo?set='+set);
}