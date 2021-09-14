package com.idwith.mpweb.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.idwith.mpweb.user.UserVO;
import com.idwith.mpweb.user.service.UserService;

@Controller
public class SignController {
	@Autowired
	private UserService userService;
	
	@GetMapping("/sign.do")
	public String sign(UserVO vo) {
		userService.insertUser(vo);
		return "sign";
	}
	
	@GetMapping("/sign_choice.do")
	public String signChoice() {
		return "sign_choice";
	}
}
