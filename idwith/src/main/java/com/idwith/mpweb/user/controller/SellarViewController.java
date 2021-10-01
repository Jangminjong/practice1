package com.idwith.mpweb.user.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.idwith.mpweb.admin.service.SellerService;
import com.idwith.mpweb.user.SellerClassVO;
import com.idwith.mpweb.user.UserSellerVO;
import com.idwith.mpweb.user.service.SellerViewService;

@Controller
public class SellarViewController {
	@Autowired
	private SellerViewService sellerViewService;

	@GetMapping("/seller_class.do")
	public String sClass(Model model) {
		System.out.println("작가 클래스탭 컨트롤러 실행");
		
		String seller_code = "215367";
		boolean classCheck = false;
		int result = sellerViewService.getClassCheck(seller_code);
		
		if(result == 1) {
			List<SellerClassVO> classList = sellerViewService.getClassList(seller_code);
			if(classList != null) {
				classCheck = true;
				model.addAttribute("classList", classList);
			}
		}
		
		System.out.println("클래스 여부 : " + classCheck);
		model.addAttribute("classCheck", classCheck); //클래스 여부
		
		return "seller_class";
	}

	@GetMapping("/seller_goods.do")
	public String sGoods(HttpSession session, @RequestParam("seller_code") String seller_code, Model model) {
		System.out.println("작가 메인 페이지 컨트롤러 실행");

		System.out.println("코드 : " + seller_code);

		List<UserSellerVO> info = sellerViewService.getSellerInfo(seller_code);

		model.addAttribute("info", info);

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
	public String sProfile(Model model) {
		String seller_code = "215367";
		System.out.println("작가 프로필 컨트롤러 실행");

		List<UserSellerVO> profile = sellerViewService.getSellerProfile(seller_code);

		model.addAttribute("info", profile);

		return "seller_profile";
	}

	@GetMapping("/seller_review.do")
	public String sReview() {
		return "seller_review";
	}

	@GetMapping("/seller_story.do")
	public String sStory(Model model) {
		System.out.println("작가 스토리 컨트롤러 실행");
		String seller_code = "215367";
		List<UserSellerVO> story = sellerViewService.getSellerStory(seller_code);

		model.addAttribute("info", story);
		return "seller_story";
	}
}