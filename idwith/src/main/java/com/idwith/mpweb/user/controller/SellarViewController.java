package com.idwith.mpweb.user.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.idwith.mpweb.admin.service.SellerService;
import com.idwith.mpweb.user.UserSellerVO;
import com.idwith.mpweb.user.service.SellerViewService;

@Controller
public class SellarViewController {
	@Autowired
	private SellerViewService sellerViewService;
	
	@GetMapping("/seller_class.do")
	public String sClass() {
		return "seller_class";
	}
	
	@GetMapping("/seller_goods.do")
	public String sGoods(HttpSession session) {
		System.out.println("작가 메인 페이지 컨트롤러 실행");
		
		return "seller_goods";
	}
	
	@GetMapping("/seller_list.do")
	public String sList(Model model) {
		System.out.println("작가 리스트 컨트롤러");
		
		List<UserSellerVO> sellerList = sellerViewService.getSellerList();
		
		model.addAttribute("sellerList", sellerList);
		
		return "seller_list";
	}
	
//	@GetMapping("/seller_main.do")
//	public String sMain() {
//		return "seller_main";
//	}
	
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