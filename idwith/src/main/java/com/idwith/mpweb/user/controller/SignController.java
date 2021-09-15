package com.idwith.mpweb.user.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	/* 회원가입 - sms 인증*/
	@RequestMapping(value = "/sendSms.do")
    public void sendSms(HttpServletRequest request) throws Exception {
		 String api_key = "NCSE2QVWOHHJKJLS";
		    String api_secret = "ZPPUAJDBF60J9SU9MIE74YWWNG3YXLUJ";
		    Message coolsms = new Message(api_key, api_secret);

		    // 4 params(to, from, type, text) are mandatory. must be filled
		    HashMap<String, String> params = new HashMap<String, String>();
		    params.put("to", "01091592149");
		    params.put("from", "01091592149");
		    params.put("type", "SMS");
		    params.put("text", "Coolsms Testing Message!");
		    params.put("app_version", "test app 1.2"); // application name and version

		    try {
		      JSONObject obj = (JSONObject) coolsms.send(params);
		      System.out.println(obj.toString());
		    } catch (CoolsmsException e) {
		      System.out.println(e.getMessage());
		      System.out.println(e.getCode());
		    }
		    
	}
}
