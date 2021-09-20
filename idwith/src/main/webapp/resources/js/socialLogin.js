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
							locateToIndex(data);
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


/* 카카오톡 가입&로그인 성공시 메인페이지로 이동*/
function locateToIndex(data){
	console.log('뷰로 보낼 데이터'+data);
	$.ajax({
		url:"/mpweb/kakao.do",
		type:"GET",
		data:data,
		contentType: "application/json; charset=UTF-8",
		success:function(data){
			console.log('로그인성공, 메인페이지로 이동');
			location.replace('/mpweb/index.do');
		},
		error: function(request,status,error){
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
}


/* 카카오톡 연결끊기 */
function cancel(){
	
	Kakao.Auth.login({
		scope: 'age_range, account_email',
		success: function(authObj){ 
			console.log(JSON.stringify(authObj))
			Kakao.API.request({
  		url: '/v1/user/unlink',
  		success: function(response) {
    	console.log(response);
  	},
  	fail: function(error) {
    	console.log(error);
 	 },
});
			
      	},
      	fail: function(err) {
        alert(JSON.stringify(err))
      	},
		/*redirectUri: 'http://localhost:8080/oauth2/code/kakao'*/ 
	});
	
	
}


