package com.idwith.mpweb.writer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ReviewController {
	
	@GetMapping("/review.wdo")
	public String review() {
		return "review";
	}
	
	@GetMapping("/reviewContent.wdo")
	public String reviewContent() {
		return "reviewContent";
	}

}
