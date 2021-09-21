/* 게시판 메인 페이지 */

$(window).ready(function(){
	const email = $('#email').val();
	$(document).on("click", "#btn-qna-write", function(){
		if(email==''){
			alert('로그인 후 작성 가능합니다.');
			location.replace('/mpweb/login.do');
		} else{
			location.replace('/mpweb/board_write.do');
		}
		
	});
	
	/*$(document).on("click", ".qna-one", function(){
		const seq = $('#qna-seq').val();
		console.log('seq: '+seq);
		$.ajax({
			url: "/mpweb/qnaRightCheck.do",
     		type: "POST",
     		data: {
				email:email,
				seq: seq
			},
			success: function(data){
				console.log('data: '+data);
				if(data == 1){
					document.getElementsByClassName('qna-one').onclick= "return true";
				}else{
					alert('권한이 없습니다.');
					
				}
			},
			error: function(request, status, error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
     		},
		});
	});*/
	
});

/* 게시판 작성 페이지 */

$(window).ready(function(){
	$(document).on("click", '#qna-submit', function(){
		if($('#qna_type').val()=='구분'){
			alert('문의 유형을 선택해주세요.');
		} else if(document.qnaForm.board_title.value==""){
			alert('제목을 입력해주세요.');
			document.qnaForm.board_title.focus();
		} else if(document.qnaForm.board_content.value==""){
			alert('문의 내용을 입력해주세요.');
			document.qnaForm.board_content.focus();
		}else{
			document.getElementById('form-qna').onsubmit="return true";
		}
	});
	
});