package com.idwith.mpweb.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SignController {
	@GetMapping("/sign.do")
	public String sign() {
		return "sign";
	}
	
	@GetMapping("/sign_choice.do")
	public String signChoice() {
		return "sign_choice";
	}
}
