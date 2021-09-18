package com.idwith.mpweb.user.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.util.UrlPathHelper;

import com.fasterxml.jackson.databind.JsonNode;
import com.idwith.mpweb.user.UserVO;
import com.idwith.mpweb.user.service.UserService;

@Controller
public class APIController {
	@Autowired
	private UserService userService;
	
//	카카오톡 
	@RequestMapping(value="/kakao.do", method=RequestMethod.POST)
	@ResponseBody
	public HashMap<String, String> kakaoLogin(HttpServletRequest req) throws Exception { 
		System.out.println("kakaoSign() 실행");
		HashMap<String, String> params = new HashMap<String, String>();
		UserVO vo = new UserVO();
		
		String age_range = req.getParameter("age_range");
		String email= req.getParameter("email");
		
		vo.setUser_id(email);
		vo.setUser_pwd("kakao");
		
		String result = userService.kakaoLogin(vo);
		
		params.put("result", result);
		params.put("email", email);
		
		return params;
	}
	
	
//	네이버
	
	// 네이버 로그인 처리 중 호출되는 컨트롤러
	@RequestMapping(value="/naver.do", method=RequestMethod.GET)
	public String naverLoginProcess(HttpServletRequest req, HttpSession session) {
		return "loginPostNaver";
	}
	
	@RequestMapping(value="/naver.do", method=RequestMethod.POST)
	@ResponseBody
	public HashMap<String, String> naverLogin(HttpServletRequest req) {
		System.out.println("naverLogin() 실행");
		HashMap<String, String> params = new HashMap<String, String>();
		UserVO vo = new UserVO();
		
		String email= req.getParameter("email");
		String name = req.getParameter("name");
		String mobile = req.getParameter("mobile");
		
		System.out.println(name+", "+email+", "+mobile);
		
		vo.setUser_id(email);
		vo.setUser_name(name);
		vo.setUser_phone(mobile);
		vo.setUser_pwd("naver");
		
		String result = userService.naverLogin(vo);
		
		params.put("result", result);
		params.put("email", email);
		
		return params;
	}
	
	// sns로 로그인 후 세션에 정보 세팅 후 index.do로 이동
	@RequestMapping(value="/sns.do", method= RequestMethod.GET)
	@ResponseBody
	public String indexAfterKakaoLogin(HttpServletRequest req, HttpSession session, HttpServletResponse response) throws Exception{
		String email = req.getParameter("email");
		String[] emailSplit = email.split("@");
		session.setAttribute("emailSplit", emailSplit[0]);
		return "success";
	}
}
