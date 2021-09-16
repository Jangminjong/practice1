package com.idwith.mpweb.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class loginTestController {
	@GetMapping("/adminLogin.mdo")
	public String adminTestLogin() {
		return "adminLogin";
	}
}
