package com.idwith.mpweb.writer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FollowController {
	
	@GetMapping("/Follow.wdo")
	public String Follow() {
		return "Follow";
	}

}
