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
import com.idwith.mpweb.user.GoodsVO;
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

		List<SellerClassVO> classList = sellerViewService.getClassList(seller_code);

		if(classList.isEmpty() == false) {
			classCheck = true;
		}

		System.out.println("클래스 여부 : " + classCheck);
		model.addAttribute("classCheck", classCheck); //클래스 여부
		model.addAttribute("classList", classList);
		model.addAttribute("sellerInfo", sellerViewService.getSellerProfile(seller_code));
		model.addAttribute("seller_code", seller_code);

		return "seller_class";
	}

	@GetMapping("/seller_goods.do")
	public String sGoods(HttpSession session, @RequestParam("seller_code") String seller_code, Model model
			,PagingVO pageVO, @RequestParam(value="nowPage", required=false) String nowPage
			,@RequestParam(value="cntPerPage", required=false) String cntPerPage) {
		int total = sellerViewService.getCountGoods(seller_code);
		boolean goodsCheck = false;

		if(total >= 1) {
			goodsCheck = true;
		}

		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "8";
		} else {
			cntPerPage = "8";
		}


		pageVO = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), Integer.parseInt(seller_code));

		List<GoodsVO> goodsList = sellerViewService.getGoodsList(pageVO);

		UserSellerVO sellerInfo = sellerViewService.getSellerProfile(seller_code);

		model.addAttribute("paging", pageVO);
		model.addAttribute("goodsList", goodsList);
		model.addAttribute("sellerInfo", sellerInfo);
		model.addAttribute("goodsCheck", goodsCheck);
		model.addAttribute("seller_code", seller_code);

		return "seller_goods";
	}

	@GetMapping("/seller_list.do")
	public String sList(Model model, PagingVO pageVO, @RequestParam(value="nowPage", required=false) String nowPage
			,@RequestParam(value="cntPerPage", required=false) String cntPerPage) {
		System.out.println("작가 리스트 컨트롤러");

		int total = sellerViewService.getSellerList();

		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "20";
		} else {
			cntPerPage = "20";
		}

		pageVO = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));

		List<UserSellerVO> sellerList = sellerViewService.getpagingSellerList(pageVO);

		model.addAttribute("paging", pageVO);
		model.addAttribute("sellerList", sellerList);

		return "seller_list";
	}

	@GetMapping("/seller_profile.do")
	public String sProfile(Model model, @RequestParam("seller_code") String seller_code) {
		System.out.println("작가 프로필 컨트롤러 실행");

		UserSellerVO profile = sellerViewService.getSellerProfile(seller_code);

		System.out.println("프로필 정보 : " + profile);
		model.addAttribute("info", profile);
		model.addAttribute("sellerInfo", sellerViewService.getSellerProfile(seller_code));
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
	public String sStory(Model model, @RequestParam("seller_code") String seller_code,
			PagingVO pageVO, @RequestParam(value="nowPage", required=false) String nowPage
			,@RequestParam(value="cntPerPage", required=false) String cntPerPage) {
		System.out.println("작가 스토리 컨트롤러 실행");
		List<SellerStoryVO> story = sellerViewService.getSellerStory(seller_code);
		int listSize = story.size();
		int listLength = story.size() / 2;
		boolean storyCheck = false;

		if(story.isEmpty() == false) {
			storyCheck = true;
		}

		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";
		} else {
			cntPerPage = "10";
		}

		pageVO = new PagingVO(listSize, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), Integer.parseInt(seller_code));
		List<SellerStoryVO> storyList = sellerViewService.getStoryList(pageVO);

		model.addAttribute("paging", pageVO);
		model.addAttribute("info", storyList);
		model.addAttribute("listSize", listSize);
		model.addAttribute("sellerInfo", sellerViewService.getSellerProfile(seller_code));
		model.addAttribute("seller_code", seller_code);
		model.addAttribute("storyCheck", storyCheck);
		model.addAttribute("listLength", listLength);

		return "seller_story";
	}
}