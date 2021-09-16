package com.idwith.mpweb.user.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.util.UrlPathHelper;

import com.fasterxml.jackson.databind.JsonNode;
import com.idwith.mpweb.user.api.KakaoAPI;

@Controller
public class APIController {
	private KakaoAPI kakao = new KakaoAPI();
	
	@RequestMapping(value="/kakao.do", method=RequestMethod.POST)
	@ResponseBody
	public HashMap<String, String> kakaoSign(HttpServletRequest req) throws Exception { 
		System.out.println("kakaoSign() ½ÇÇà");
		HashMap<String, String> params = new HashMap<String, String>();
		
		String age_range = req.getParameter("age_range");
		String email= req.getParameter("email");
		
		
		params.put("age_range", age_range);
		params.put("email", email);
		
		
		
		System.out.println(params);
		
		
		
		return params;
	}


//	https://kauth.kakao.com/oauth/authorize?client_id=aa1dcea4cbeb9091a826433c207cdc3c&redirect_uri=	
//		http://localhost:8080/mpweb/oauth&response_type=code

}
