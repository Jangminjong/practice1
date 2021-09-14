package com.idwith.mpweb.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {
	@GetMapping("/loginChoice.cdo")
	public String loginChoice() {
		return "loginChoice";
	}
	
	@GetMapping("/login.do")
	public String login() {
		return "login";
	}
}