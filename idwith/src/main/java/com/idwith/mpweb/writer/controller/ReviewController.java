package com.idwith.mpweb.writer.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.writer.review.ReviewVO;
import com.idwith.mpweb.writer.reviewService.ReviewService;

@Controller
public class ReviewController {
	
	@Autowired
	ReviewService reviewService;
	
	
	// 리뷰 목록
	@GetMapping("/review.wdo")
	public String review(PagingVO pageVO, Model model, HttpSession session, HttpServletRequest request,
			@RequestParam(value = "nowPage", required=false)String nowPage,
			@RequestParam(value = "cntPerPage", required=false)String cntPerPage,
			@RequestParam(value ="set", required=false)String set){
		System.out.println("리뷰 목록 처리");
		
		int reviewSeller = Integer.parseInt(session.getAttribute("sellerCheck").toString());
		int writerReviewTotal = reviewService.countReview(reviewSeller);
		
		System.out.println("리뷰 수 : " + writerReviewTotal);
		
		if(nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		}else if(nowPage == null) {
			nowPage ="1";
		}else if(cntPerPage == null) {
			cntPerPage = "5";
		}
		
		
		pageVO = new PagingVO(writerReviewTotal, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), reviewSeller);
		
		model.addAttribute("total", writerReviewTotal);
		model.addAttribute("paging", pageVO);
		model.addAttribute("writerReviewViewAll", reviewService.getReviweList(pageVO));
		return "review";
	}
	
	
	@RequestMapping("/insertReview.wdo")
	public String insertReview() {
		return "inserReview";
	}
	
	@RequestMapping("/reviewInsert.wdo")
	public String ReviewInsert(ReviewVO review) {
		System.out.println("답변 등록처리");
		System.out.println("comment : " + review.getGoods_review_comment());
		reviewService.reviewInsert(review);
		return "review";
	}
	
	// 상세보기
	@RequestMapping(value="/reviewContent.wdo", method=RequestMethod.GET)
	public String reviewContent(ReviewVO review, Model model) {
		System.out.println("리뷰 상세보기 seq : " + review);
		model.addAttribute("review", reviewService.reviewContent(review));
		
	//	
		
		
			
		return "reviewContent";
	}
	
	@RequestMapping("/updateReview.wdo")
	public String updateReview(ReviewVO review) {
		System.out.println("리뷰 답변처리");
		System.out.println("comment : " + review.getGoods_review_comment() );
		System.out.println("seq : "+ review.getGoods_review_seq());
		reviewService.updateReview(review);
		return "redirect:/review.wdo";
	}
	
	

}
