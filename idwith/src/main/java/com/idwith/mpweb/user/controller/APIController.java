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
	
	@RequestMapping(value="/kakao.do", method=RequestMethod.POST)
	@ResponseBody
	public HashMap<String, String> kakaoLogin(HttpServletRequest req) throws Exception { 
		System.out.println("kakaoSign() ½ÇÇà");
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
	
	@RequestMapping(value="/kakao.do", method= RequestMethod.GET)
	@ResponseBody
	public String indexAfterKakaoLogin(HttpServletRequest req, HttpSession session, HttpServletResponse response) throws Exception{
		String email = req.getParameter("email");
		String[] emailSplit = email.split("@");
		session.setAttribute("emailSplit", emailSplit[0]);
		return "success";
	}


//	https://kauth.kakao.com/oauth/authorize?client_id=aa1dcea4cbeb9091a826433c207cdc3c&redirect_uri=	
//		http://localhost:8080/mpweb/oauth&response_type=code

}
