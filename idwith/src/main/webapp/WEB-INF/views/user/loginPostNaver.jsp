<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Naver process</title>

<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="resources/js/socialLogin.js"></script>
</head>
<body>
<script type="text/javascript">
		var naver_id_login = new naver_id_login("aBJVgRXccefohvFJVX65", "http://localhost:8080/mpweb/naver.do"); // 역시 마찬가지로 'localhost'가 포함된 CallBack URL
		// 네이버 사용자 프로필 조회
		naver_id_login.get_naver_userprofile("naverSignInCallback()");
		// 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
		//naverSignInCallback();
	</script>
</body>
</html>