package com.idwith.mpweb.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SellarController {
	@GetMapping("/seller_class.do")
	public String sClass() {
		return "seller_class";
	}
	
	@GetMapping("/seller_goods.do")
	public String sGoods() {
		return "seller_goods";
	}
	
	@GetMapping("/seller_list.do")
	public String sList() {
		return "seller_list";
	}
	
	@GetMapping("/seller_main.do")
	public String sMain() {
		return "seller_main";
	}
	
	@GetMapping("/seller_profile.do")
	public String sProfile() {
		return "seller_profile";
	}
	
	@GetMapping("/seller_review.do")
	public String sReview() {
		return "seller_review";
	}
	
	@GetMapping("/seller_story.do")
	public String sStory() {
		return "seller_story";
	}
}