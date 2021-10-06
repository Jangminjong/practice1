package com.idwith.mpweb.writer.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
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
	public String review(PagingVO pageVO, Model model,
			@RequestParam(value = "nowPage", required=false)String nowPage,
			@RequestParam(value = "cntPerPage", required=false)String cntPerPage,
			@RequestParam(value ="set", required=false)String set){
		System.out.println("리뷰 목록 처리");
		
		int writerReviewTotal = reviewService.countReview();
		
		System.out.println("리뷰 수 : " + writerReviewTotal);
		
		if(nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		}else if(nowPage == null) {
			nowPage ="1";
		}else if(cntPerPage == null) {
			cntPerPage = "5";
		}
		
		
		pageVO = new PagingVO(writerReviewTotal, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		model.addAttribute("paging", pageVO);
		model.addAttribute("writerReviewViewAll", reviewService.getReviweList(pageVO));
		return "review";
	}
	
	@RequestMapping("/insertReview.wdo")
	public String insertReview() {
		return "insertReview";
	}
	
	
	@GetMapping("/reviewContent.wdo")
	public String reviewContent(ReviewVO review) {
		System.out.println("리뷰 댓글 등록처리");
		System.out.println("context : " + review.getGoods_review_context() );
		reviewService.review(review);
		return "reviewContent";
	}
	
	

}
