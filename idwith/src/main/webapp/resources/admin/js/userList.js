// 사용자 블랙 설정
function blockAgree(userId) {
	console.log(userId);
	var dataResult;
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
			var blockEmail = $.ajax({
				url: "blockUpdate.mdo",
				type: "GET",
				async: false,
				data: {
					"userId": userId
				},
				success: function(data) {
					console.log('블락 처리 확인!');
					dataResult = data;
				},
				error: function(request, status, error) {
					alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
				}
			}); // end ajax

			if (dataResult == 1) {

				blockEmail.done(function() {

					console.log('이메일 전송!');

					var result = 2;

					$.ajax({
						url: "sendEmail.mdo",
						type: "GET",
						async: false,
						data: {
							"user_id": userId,
							"result": result
						},
						success: function(data) {
							if (data == 1) {
								Swal.fire(
									'계정상태가 변경되었습니다.',
									'해당 사용자는 블랙리스트 처리되었습니다.'
								)
								
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
					}); //end ajax
				})
			} else if (dateResult == 0) {
				Swal.fire(
					'블랙 오류',
					'해당 사용자의 블랙리스트 처리에 오류가 생겼습니다.'
				)
			}

			console.log('블락 이벤트 완료');
			location.reload();
		}
	})
}

// 사용자 계정 복원
function blockCancle(userId) {
	console.log(userId);
	var dataResult;
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
			var blockCancleEamil = $.ajax({
				url: "blockCancel.mdo",
				type: "GET",
				async: false,
				data: {
					"userId": userId
				},
				success: function(data) {
					console.log('복원 처리 확인!');
					dataResult = data;
				},
				error: function(request, status, error) {
					alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
				}
			});

			if (dataResult == 1) {
				blockCancleEamil.done(function() {
					console.log('이메일 전송');

					var result = 3;

					$.ajax({
						url: "sendEmail.mdo",
						type: "GET",
						async: false,
						data: {
							"user_id": userId,
							"result": result
						},
						success: function(data) {
							if (data == 1) {
								Swal.fire(
									'계정상태가 변경되었습니다.',
									'해당 계정을 복원하였습니다.'
								)
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
					}); //end ajax
				})
			} else if (dataResult == 0) {
				Swal.fire(
					'블랙 오류',
					'해당 사용자의 블랙리스트 처리에 오류가 생겼습니다.'
				)
			}
			console.log('복원 이벤트 완료');
		}
	})
}

