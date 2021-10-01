
// 사용자 블랙 설정
function blockAgree(userId) {
	console.log(userId);
	Swal.fire({
		title: '이 계정을 블랙리스트로 설정하시겠습니까?',
		text: "",
		icon: 'warning',
		showCancelButton: true,
		confirmButtonColor: '#FF7B30',
		confirmButtonBorderColor: "#FF7B30",
		cancelButtonColor: '#15283D',
		confirmButtonText: '변경',
		cancelButtonText: '취소'
	}).then((result) => {
		if (result.isConfirmed) {
			$.ajax({
				url: "blockUpdate.mdo",
				type: "GET",
				async: false,
				data: {
					"userId": userId
				},
				success: function(data) {
					if (data == 1) {
						Swal.fire(
							'계정상태가 변경되었습니다.',
							'해당 사용자는 블랙리스트 처리되었습니다.'
						)
						location.href = "userList.mdo";
					} else if (data == 0) {
						Swal.fire(
							'블랙 오류',
							'해당 사용자의 블랙리스트 처리에 오류가 생겼습니다.'
						)
					}
					console.log('블락 처리 확인!');
				},
				error: function(request, status, error) {
					alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
				}
			}); // end ajax
		}
	})
}

// 사용자 계정 복원
function blockCancle(userId) {
	console.log(userId);
	Swal.fire({
		title: '이 계정을 복원하시겠습니까?',
		text: "",
		icon: 'warning',
		showCancelButton: true,
		confirmButtonColor: '#FF7B30',
		confirmButtonBorderColor: "#FF7B30",
		cancelButtonColor: '#15283D',
		confirmButtonText: '복원',
		cancelButtonText: '취소'
	}).then((result) => {
		if (result.isConfirmed) {
			$.ajax({
				url: "blockCancel.mdo",
				type: "GET",
				async: false,
				data: {
					"userId": userId
				},
				success: function(data) {
					if (data == 1) {
						Swal.fire(
							'계정상태가 변경되었습니다.',
							'해당 계정을 복원하였습니다.'
						)
						location.href = "userList.mdo";

					} else if (data == 0) {
						Swal.fire(
							'복원 오류',
							'해당 사용자의 복원 처리에 오류가 생겼습니다.'
						)
					}
					console.log('복원 처리 확인!');
				},
				error: function(request, status, error) {
					alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
				}
			});
		}
	})
}
