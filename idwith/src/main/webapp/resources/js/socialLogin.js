/* 카카오 가입 */
function kakaoSign(){
	Kakao.Auth.login({
		scope: 'age_range, account_email',
		success: function(authObj){ 
			console.log(JSON.stringify(authObj))
			Kakao.API.request({
				url:'/v2/user/me',
				success: function(res){
					console.log(res)
					$.ajax({
						url:"/mpweb/kakao.do",
						type: "POST",
						dataType:"json",
						data: res.kakao_account,
						success: function(data){
							console.log(data);
						},
						error: function(request,status,error){
							alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
						}
					}); 
				}
			});
			
      	},
      	fail: function(err) {
        alert(JSON.stringify(err))
      	},
		/*redirectUri: 'http://localhost:8080/oauth2/code/kakao'*/ 
	});
}



