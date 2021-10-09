package com.idwith.mpweb.user.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.idwith.mpweb.user.UserVO;
import com.idwith.mpweb.user.service.SellerViewService;
import com.idwith.mpweb.user.service.UserService;

@Controller
public class LoginController {
	@Autowired
	private UserService userService;
	
	@Autowired
	private SellerViewService sellerService;
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

	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String login(UserVO vo) {
		return "login";
	}
	
	//�α��� : email, password Ȯ��
	@RequestMapping(value="/loginCheck.do", method=RequestMethod.GET, produces="application/text; charset=utf8")
	@ResponseBody
	public String loginCheck(HttpServletRequest request, HttpSession session) throws Exception{
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		
		UserVO vo = new UserVO();
		vo.setUser_id(email);
		vo.setUser_pwd(password);
		//String[] emailSplit = vo.getUser_id().split("@");
		int result = userService.getUser(vo);
		String[] emailSplit = email.split("@");
		

		if(result == 2) {
			session.setAttribute("email", email);
			session.setAttribute("emailSplit", emailSplit[0]);
		}

		if(email != null) {
			Long sellerCheck = sellerService.getSeller(email);

			if(sellerCheck != null) {
				session.setAttribute("sellerCheck", sellerCheck);
			}
		}
		
		
		return Integer.toString(result);
	}
	
	@GetMapping("/IdSearch.do")
	public String idSearch() {
		
		return "IdSearch";
	}
	
	@GetMapping("/logout.do")
	public String logout(HttpSession session) {
		String emailSave = (String)session.getAttribute("emailSave");
		System.out.println("로그아웃 세션 확인 : " + emailSave);
		if(emailSave == null) {
			session.invalidate();
		}
		return "redirect:/index.do";
	}

	//�α��� ȭ�� ��û �޼ҵ� : ���̹�
//	@GetMapping("/login.do")
//	public String naverLogin(HttpSession session, Model model) {
//		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
//		model.addAttribute("url", naverAuthUrl);
//		return "login";
//	}

	//���̹� �α��� ���� �� callback ȣ�� �޼ҵ�
//	@GetMapping("/callback.do")
//	public String callback(@RequestParam String code, @RequestParam String state, HttpSession session, HttpServletResponse servletResponse, Model model)throws IOException {
//		OAuth2AccessToken oauthToken;
//		oauthToken = naverLoginBO.getAccessToken(session, code, state);

		//1. �α��� ����� ������ �о�´�.
		//apiResult = naverLoginBO.getUserProfile(oauthToken); //String������ json������ 
		
		/** apiResult json ���� {"resultcode":"00", "message":"success", "response":{"id":"33666449","nickname":"shinn****","age":"20-29","gender":"M","email":"sh@naver.com","name":"\uc2e0\ubc94\ud638"}} **/
		
		//2. String������ apiResult�� json���·� �ٲ� 
		//JSONParser parser = new JSONParser();
		//Object obj = parser.parse(apiResult);
		//JSONObject jsonObj = (JSONObject) obj; 
		
		//3. ������ �Ľ� //Top���� �ܰ� _response �Ľ� 
		//JSONObject response_obj = (JSONObject)jsonObj.get("response"); 
		//response�� nickname�� �Ľ� 
		//String nickname = (String)response_obj.get("nickname"); 
		//System.out.println(nickname); 
		
		//4.�Ľ� �г��� �������� ���� 
		//session.setAttribute("sessionId",nickname); //���� ���� 
//		model.addAttribute("result", apiResult); 
//		return "login";
//	}
}
