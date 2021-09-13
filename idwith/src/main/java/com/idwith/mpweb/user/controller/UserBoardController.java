package com.idwith.mpweb.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserBoardController {
	@GetMapping("/alarm.do")
	public String userAlarm() {
		return "alarm";
	}
	
	@GetMapping("/message.do")
	public String userMessage() {
		return "message";
	}
}
