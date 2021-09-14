package com.idwith.mpweb.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class LoginController {
	@GetMapping("/loginChoice.cdo")
	public String loginChoice() {
		return "loginChoice";
	}
	
	@PostMapping("/login.do")
	public String login() {
		return "login";
	}
}
