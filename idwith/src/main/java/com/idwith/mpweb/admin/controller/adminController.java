package com.idwith.mpweb.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class adminController {
	@GetMapping("/main.mdo")
	public String adminMain() {
		return "main";
	}

}
