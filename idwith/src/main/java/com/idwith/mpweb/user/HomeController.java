package com.idwith.mpweb.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	@GetMapping("/home.do")
	public String home() {
		return "index"; // 수정(나중에 지우기)
	}
}
