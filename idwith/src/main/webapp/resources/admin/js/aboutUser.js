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
	
	$(document).on("click", '#event-user-submit', function(){
		if(document.eventUserForm.user_event_board_title1.value==""){
			alert('제목을 입력해주세요.');
			document.eventUserForm.user_event_board_title1.focus();
		}else if(document.eventUserForm.user_event_board_title2.value==""){
			alert('제목을 입력해주세요.');
			document.eventUserForm.user_event_board_title2.focus();
		}else if(document.eventUserForm.user_event_board_category.value=="구분"){
			alert('카테고리를 선택해주세요.');
			document.eventUserForm.user_event_board_category.focus();
		}else if(document.eventUserForm.user_event_board_content.value==""){
			alert('내용을 입력해주세요.');
			document.eventUserForm.user_event_board_content.focus();
		}else if(document.eventUserForm.user_event_board_category.value=="이벤트" && document.eventUserForm.user_event_board_end.value==""){
			alert('이벤트 마감일을 신청해주세요.');
			document.eventUserForm.user_event_board_end.focus();
		}else {
			document.getElementById('form-event-user').onsubmit="return true";
		}
	});
	
	// 메시지 작성할 때
	$(document).on("click", '#msg-form-submit', function(){
		if(document.msgForm.msg_context.value==""){
			alert('메시지 내용을 입력해주세요.');
			document.msgForm.msg_context.focus();
		}else{
			document.getElementById('msg-form').onsubmit="return true";
		}
	});
	
});

// qna 페이지에서 특정 카테고리로 정렬할 때
function setQnACategory(){
	var set = $('#qna_type').val();
	location.replace('/mpweb/qna.mdo?set='+set);
}

// 사용자 공지사항에서 카테고리를 '공지'로 선택했을 때
function eventCategory(){
	var category = $('#qna_type').val();
	if(category=='공지'){
		$("#event-end-date").value==null;
		$("#event-end-date").attr("disabled", true);
	}else{
		$("#event-end-date").attr("disabled", false);
	}
}

function setEventCategory(){
	var set = $('#qna_type').val();
	location.replace('/mpweb/userNotice.mdo?set='+set);
}



