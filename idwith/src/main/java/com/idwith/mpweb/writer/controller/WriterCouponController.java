package com.idwith.mpweb.writer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class WriterCouponController {
	
	@GetMapping("/couponRequest.wdo")
	public String couponRequest() {
		return "couponRequest";
	}
	
	@GetMapping("/coupon.wdo")
	public String coupon() {
		return "coupon";
	}
	
	@GetMapping("/couponWriting.wdo")
	public String couponWriting() {
		return "couponWriting";
	}
	
	

}
