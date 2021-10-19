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
import com.idwith.mpweb.user.service.SellerViewService;
import com.idwith.mpweb.user.service.UserService;

@Controller
public class APIController {
	@Autowired
	private UserService userService;
	
	@Autowired
	private SellerViewService sellerService;
	
	
	// 카카오톡 로그인 
	// 1. 카카오 api에서 넘어온 email값으로 작가에 등록되어 있는지 확인
	// 2. client 테이블에 저장된 유저인지 확인하여 등록되어 있으면 그냥 로그인, 안되어 있으면 등록하고 로그인 처리
	// 로그인할 때 email갑 세션에 저장 
	@RequestMapping(value="/kakao.do", method=RequestMethod.POST)
	@ResponseBody
	public HashMap<String, String> kakaoLogin(HttpServletRequest req, HttpSession session) throws Exception { 
		HashMap<String, String> params = new HashMap<String, String>();
		UserVO vo = new UserVO();
		
		String age_range = req.getParameter("age_range");
		String email= req.getParameter("email"); 
		
		if(email != null) {
			Long sellerCheck = sellerService.getSeller(email);

			if(sellerCheck != null) {
				session.setAttribute("sellerCheck", sellerCheck);
			}
		}
		
		vo.setUser_id(email);
		vo.setUser_pwd("kakao");
		
		String result = userService.kakaoLogin(vo);
		
		params.put("result", result);
		params.put("email", email);
		
		session.setAttribute("email", email);
		
		return params;
	}
	
	

	// 네이버 로그인 
	// 로그인 처리 및 프로필 조회처리하는 페이지로 이동(api 처리상 필요한 페이지)
	@RequestMapping(value="/naver.do", method=RequestMethod.GET)
	public String naverLoginProcess(HttpServletRequest req, HttpSession session) {
		return "loginPostNaver";
	}
	
	//  네이버 로그인 처리(api) 이후 작가 여부 체크
	// client 테이블에 등록 여부 체크(있으면 그냥 결과값 리턴, 없으면 등록하고 결과값 리턴)   
	@RequestMapping(value="/naver.do", method=RequestMethod.POST)
	@ResponseBody
	public HashMap<String, String> naverLogin(HttpServletRequest req, HttpSession session) {
		System.out.println("naverLogin() ����");
		HashMap<String, String> params = new HashMap<String, String>();
		UserVO vo = new UserVO();
		
		String email= req.getParameter("email");
		String name = req.getParameter("name");
		String mobile = req.getParameter("mobile");
		
		
		if(email != null) {
			Long sellerCheck = sellerService.getSeller(email);

			if(sellerCheck != null) {
				session.setAttribute("sellerCheck", sellerCheck);
			}
		}
		
		System.out.println(name+", "+email+", "+mobile);
		
		vo.setUser_id(email);
		vo.setUser_name(name);
		vo.setUser_phone(mobile);
		vo.setUser_pwd("naver");
		
		String result = userService.naverLogin(vo);
		
		params.put("result", result);
		params.put("email", email);
		
		session.setAttribute("email", email);
		
		return params;
	}
	
	// api로 로그인 이후에 이메일 주소의 '@' 앞 부분 세션에 저장. 등록된 이름이 없을 경우 아이디로 대신 사용자명 표시해주기 위함.
	@RequestMapping(value="/sns.do", method= RequestMethod.GET)
	@ResponseBody
	public String indexAfterKakaoLogin(HttpServletRequest req, HttpSession session, HttpServletResponse response) throws Exception{
		String email = req.getParameter("email");
		String[] emailSplit = email.split("@");
		session.setAttribute("emailSplit", emailSplit[0]);
		session.setAttribute("email", email);
		return "success";
	}
}
