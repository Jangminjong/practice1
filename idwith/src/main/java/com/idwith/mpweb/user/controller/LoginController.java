package com.idwith.mpweb.user.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.scribejava.core.model.OAuth2AccessToken;

@Controller
public class LoginController {
	/* Naver Login */
//	private NaverLoginBO naverLoginBO;
//	private String apiResult = null;
//
//	@Autowired
//	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
//		this.naverLoginBO = naverLoginBO;
//	}

	@GetMapping("/loginChoice.cdo")
	public String loginChoice() {
		return "loginChoice";
	}

	@PostMapping("/login.do")
	public String login() {
		return "login";
	}

	//로그인 화면 요청 메소드 : 네이버
//	@GetMapping("/login.do")
//	public String naverLogin(HttpSession session, Model model) {
//		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
//		model.addAttribute("url", naverAuthUrl);
//		return "login";
//	}

	//네이버 로그인 성공 시 callback 호출 메소드
//	@GetMapping("/callback.do")
//	public String callback(@RequestParam String code, @RequestParam String state, HttpSession session, HttpServletResponse servletResponse, Model model)throws IOException {
//		OAuth2AccessToken oauthToken;
//		oauthToken = naverLoginBO.getAccessToken(session, code, state);

		//1. 로그인 사용자 정보를 읽어온다.
		//apiResult = naverLoginBO.getUserProfile(oauthToken); //String형식의 json데이터 
		
		/** apiResult json 구조 {"resultcode":"00", "message":"success", "response":{"id":"33666449","nickname":"shinn****","age":"20-29","gender":"M","email":"sh@naver.com","name":"\uc2e0\ubc94\ud638"}} **/
		
		//2. String형식인 apiResult를 json형태로 바꿈 
		//JSONParser parser = new JSONParser();
		//Object obj = parser.parse(apiResult);
		//JSONObject jsonObj = (JSONObject) obj; 
		
		//3. 데이터 파싱 //Top레벨 단계 _response 파싱 
		//JSONObject response_obj = (JSONObject)jsonObj.get("response"); 
		//response의 nickname값 파싱 
		//String nickname = (String)response_obj.get("nickname"); 
		//System.out.println(nickname); 
		
		//4.파싱 닉네임 세션으로 저장 
		//session.setAttribute("sessionId",nickname); //세션 생성 
//		model.addAttribute("result", apiResult); 
//		return "login";
//	}
}
