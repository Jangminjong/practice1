package com.idwith.mpweb.user.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.idwith.mpweb.user.UserVO;
import com.idwith.mpweb.user.service.UserService;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Controller
public class SignController {
	@Autowired
	private UserService userService;

	@GetMapping("/sign.do")
	public String sign(UserVO vo) {
		return "sign";
	}

	@GetMapping("/sign_choice.do")
	public String signChoice() {
		return "sign_choice";
	}
	
	@RequestMapping(value="/emailCheck.do", method=RequestMethod.GET, produces="application/text; charset=utf8")
	@ResponseBody
	public String overlapCheck(HttpServletRequest req) throws Exception{
		String email = req.getParameter("email");
		int result = userService.emailCheck(email);
		return Integer.toString(result);
	}

	/* 회원가입 - sms 인증*/
	@RequestMapping(value = "/sendSms.do", method = RequestMethod.POST)
	@ResponseBody
	public HashMap<String, String> sendSms(HttpServletRequest request) throws Exception {
		System.out.println("SMS 인증 컨트롤러 실행");
		String api_key = "NCSE2QVWOHHJKJLS";
		String api_secret = "ZPPUAJDBF60J9SU9MIE74YWWNG3YXLUJ";
		Message coolsms = new Message(api_key, api_secret);
		
		//문자 랜덤 값
		int randomPIN = (int)(Math.random()*900000)+100000;
		String cell_phone = request.getParameter("cell_phone");
		System.out.println("받은 전화번호 : " + cell_phone);

		// 4 params(to, from, type, text) are mandatory. must be filled
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("to", cell_phone);
		params.put("from", "01091592149");
		params.put("type", "SMS");
		params.put("text", "본인확인 인증번호(" +  randomPIN +") 입력시 정상처리 됩니다.");
		params.put("app_version", "test app 1.2"); // application name and version

		try {
			JSONObject obj = (JSONObject) coolsms.send(params);
			System.out.println(obj.toString() + " 테스트");
		} catch (CoolsmsException e) {
			System.out.println(e.getMessage());
			System.out.println("오류");
			System.out.println(e.getCode());
		}

		return params;
	}
}
