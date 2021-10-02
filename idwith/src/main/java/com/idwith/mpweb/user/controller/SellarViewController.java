package com.idwith.mpweb.user.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.idwith.mpweb.admin.service.SellerService;
import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.user.SellerClassVO;
import com.idwith.mpweb.user.SellerProductReviewVO;
import com.idwith.mpweb.user.SellerStoryVO;
import com.idwith.mpweb.user.UserSellerVO;
import com.idwith.mpweb.user.service.SellerViewService;

@Controller
public class SellarViewController {
	@Autowired
	private SellerViewService sellerViewService;

	@GetMapping("/seller_class.do")
	public String sClass(Model model, @RequestParam("seller_code") String seller_code) {
		System.out.println("작가 클래스탭 컨트롤러 실행");
		
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
		model.addAttribute("seller_code", seller_code);
		
		return "seller_class";
	}

	@GetMapping("/seller_goods.do")
	public String sGoods(HttpSession session, @RequestParam("seller_code") String seller_code, Model model
			,PagingVO pageVO, @RequestParam(value="nowPage", required=false) String nowPage
			,@RequestParam(value="cntPerPage", required=false) String cntPerPage) {
		System.out.println("작가 메인 페이지 컨트롤러 실행");
		int total = sellerViewService.getSellerInfo(seller_code);
		
//		if (nowPage == null && cntPerPage == null) {
//			nowPage = "1";
//			cntPerPage = Integer.toString(20-countNotice);
//		} else if(nowPage =="1") {
//			cntPerPage = Integer.toString(20-countNotice);
//		}else if(Integer.parseInt(nowPage)>1) {
//			cntPerPage = "20";
//		}

		System.out.println("nowpage: "+nowPage+"cntPerpage: "+cntPerPage);
		System.out.println("total : " + total);
		
		pageVO = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		model.addAttribute("paging", pageVO);
		model.addAttribute("seller_code", seller_code);

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
	public String sProfile(Model model, @RequestParam("seller_code") String seller_code) {
		System.out.println("작가 프로필 컨트롤러 실행");

		UserSellerVO profile = sellerViewService.getSellerProfile(seller_code);
		
		System.out.println("프로필 정보 : " + profile);
		model.addAttribute("info", profile);
		model.addAttribute("seller_code", seller_code);

		return "seller_profile";
	}

	@GetMapping("/seller_review.do")
	public String sReview(Model model, @RequestParam("seller_code") String seller_code) {
		System.out.println("작가 리뷰 컨트롤러 실행");
		
		List<SellerProductReviewVO> reviewList = sellerViewService.getSellerProductReviewList(seller_code);
		int listLength = reviewList.size() / 2;
		
		
		
		
		model.addAttribute("list", reviewList);
		model.addAttribute("seller_code", seller_code);
		model.addAttribute("listLength", listLength);
		
		return "seller_review";
	}

	@GetMapping("/seller_story.do")
	public String sStory(Model model, @RequestParam("seller_code") String seller_code) {
		System.out.println("작가 스토리 컨트롤러 실행");
		List<SellerStoryVO> story = sellerViewService.getSellerStory(seller_code);
		int listLength = story.size() / 2;

		model.addAttribute("info", story);
		model.addAttribute("seller_code", seller_code);
		model.addAttribute("listLength", listLength);
		
		return "seller_story";
	}
}