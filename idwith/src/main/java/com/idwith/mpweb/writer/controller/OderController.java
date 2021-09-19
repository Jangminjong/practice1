package com.idwith.mpweb.writer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class OderController {
	
	@GetMapping("/orderList.wdo")
	public String orderList() {
		return "orderList";
	}
	
	
	

}