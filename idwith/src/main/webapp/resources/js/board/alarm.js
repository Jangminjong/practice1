/**
 * eventNotice_detail.do?user_event_board_seq=${newEvent.user_event_board_seq}
 */

function dueDateCheck(seq) {
	$.ajax({
		url: "/mpweb/dueDateCheck.do",
		type: "POST",
		data: {
			seq:seq,
		},
		success: function(data){
			if(data==1){
				location.replace('eventNotice_detail.do?user_event_board_seq='+seq);
			}else{
				alert('종료된 이벤트입니다.');
				location.replace('alarm.do');
			}
		},
		error: function(request, status, error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
     	},
	});
}