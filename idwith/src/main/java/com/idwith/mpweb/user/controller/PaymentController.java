package com.idwith.mpweb.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PaymentController {
	@GetMapping("/payment.do")
	public String payment() {
		return "payment";
	}
	
	@GetMapping("/cart.do")
	public String cart() {
		return "cart";
	}
}
