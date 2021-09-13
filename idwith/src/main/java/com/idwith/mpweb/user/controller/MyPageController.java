package com.idwith.mpweb.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyPageController {
	@GetMapping("/mypage_main.do")
	public String mypageMain() {
		return "mypage";
	}
	
	@GetMapping("/mypage_address.do")
	public String mypageAddress() {
		return "mypage_adr";
	}
	
	@GetMapping("/mypage_coupon.do")
	public String mypageCoupon() {
		return "mypage_coupon";
	}
	
	@GetMapping("/mypage_point.do")
	public String mypagePoint() {
		return "mypage_point";
	}
	
	@GetMapping("/mypage_follow.do")
	public String mypageFollow() {
		return "mypage_follow";
	}
	
	@GetMapping("/mypage_info.do")
	public String mypageInfo() {
		return "mypage_adr";
	}
	
	@GetMapping("/mypage_interest_class.do")
	public String mypageInterestClass() {
		return "mypage_interest_class";
	}
	
	@GetMapping("/mypage_interest_goods.do")
	public String mypageInterestGoods() {
		return "mypage_interest_goods";
	}
	
	@GetMapping("/mypage_level.do")
	public String mypageLevel() {
		return "mypage_level";
	}
	
	@GetMapping("/mypage_order_return.do")
	public String mypageOrderReturn() {
		return "mypage_order_return";
	}
	
	@GetMapping("/mypage_order_goods.do")
	public String mypageOrderGoods() {
		return "mypage_order_goods";
	}
	
	@GetMapping("/mypage_order_class.do")
	public String mypageOrderClass() {
		return "mypage_order_class";
	}
	
	
	@GetMapping("/mypage_recent.do")
	public String mypageRecent() {
		return "mypage_recent";
	}
	
	@GetMapping("/mypage_review_after.do")
	public String mypageReviewAfter() {
		return "mypage_review_after";
	}
	
	@GetMapping("/mypage_review_before.do")
	public String mypageReviewBefore() {
		return "mypage_review_before";
	}
	
}

