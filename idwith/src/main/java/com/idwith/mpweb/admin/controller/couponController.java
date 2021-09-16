package com.idwith.mpweb.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class couponController {
	
	@GetMapping("/couponList.mdo")
	public String couponList() {
		return "couponList";
	}
	
	@GetMapping("/insertCoupon.mdo")
	public String insertCoupon() {
		return "insertCoupon";
	}
	
	@GetMapping("/detailCoupon.mdo")
	public String detailCoupon() {
		return "detailCoupon";
	}
	
	@GetMapping("/sellerCoupon.mdo")
	public String sellerCoupon() {
		return "sellerCoupon";
	}
	
	@GetMapping("/requestCoupon.mdo")
	public String requestCoupon() {
		return "requestCoupon";
	}

}
