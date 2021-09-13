package com.idwith.mpweb.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserIndexController {
	@GetMapping("/index.do")
	public String userIndex() {
		return "index";
	}
	
	@GetMapping("/class_index.do")
	public String classIndex() {
		return "class_index";
	}
}
