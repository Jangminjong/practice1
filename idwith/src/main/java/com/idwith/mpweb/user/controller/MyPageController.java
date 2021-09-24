package com.idwith.mpweb.user.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

//import com.idwith.mpweb.user.service.MypageService;

@Controller
public class MyPageController {
	@Autowired
	//private MypageService myPageService;
	
	//@RequestMapping(value = "/mypage.do", method=RequestMethod.GET)
//	public String mypageMain(Model model,HttpSession session) {
//		String user_id = (String) session.getAttribute("email");
//		
//		System.out.println("mypage 컨트롤러 실행");
//		System.out.println("세션 값 : " +user_id);
		
		//List<Map<String, String>> user = myPageService.getUser(user_id);
		
//		System.out.println("결과 값: " + user);
//		
//		
//		session.setAttribute("user_name", user);
//		model.addAttribute("user", user);
//		
//		return "mypage";
//	}
	
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
		return "mypage_info";
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

