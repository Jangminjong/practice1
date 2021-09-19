package com.idwith.mpweb.writer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class WriterController {
	
	@GetMapping("/main.dwo")
	public String main() {
		return "main";
	}

}
