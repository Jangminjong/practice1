package com.idwith.mpweb.writer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class WriterLoginController {
	@GetMapping("/main.wdo")
	public String adminMain() {
		return "main";
	}

	
}
