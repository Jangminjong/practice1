// 회원가입 시 입력안한 칸이 있는지 확인
function boardWriteCheck() {
	var form = document.adminNoticeForm;

	if (form.adminBoardTitle.value == '' || form.adminBoardTitle.value == null) {
		swal("공지사항 제목을 입력하세요");
		form.adminBoardTitle.focus();
		return false;
	}
	if (form.amdinBoardContent.value == '' || form.amdinBoardContent.value == null) {
		swal("공지사항 내용을 입력하세요");
		form.amdinBoardContent.focus();
		return false;
	}
	return true;
}
