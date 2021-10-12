package com.idwith.mpweb.writer.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.writer.coupon.WriterCouponVO;
import com.idwith.mpweb.writer.coupon.service.WriterCouponService;

@Controller
public class WriterCouponController {
	
	@Autowired
	WriterCouponService writerCouponService;
	
	// 쿠폰 목록 요청
	@GetMapping("/couponRequest.wdo")
	public String couponRequest(PagingVO pageVO, Model model, HttpSession session,
			@RequestParam(value = "nowPage", required = false)String nowPage,
			@RequestParam(value = "cntPerPage", required = false)String cntPerPage,
			@RequestParam(value = "set", required=false) String set) {
		System.out.println("쿠폰 목록 요청 처리");
		
		int sellerCode = Integer.parseInt(session.getAttribute("sellerCheck").toString());
		int writerCouponTotal = writerCouponService.countWriterCoupon(sellerCode);
		
		System.out.println("쿠폰 수 : " + writerCouponTotal);
		
		if(nowPage == null && cntPerPage == null ) {
			nowPage = "1";
			cntPerPage = "5";
			
		}else if(nowPage == null) {
			nowPage = "1";
		}else if(cntPerPage == null) {
			cntPerPage = "5";
		}
		
		pageVO = new PagingVO(writerCouponTotal, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), sellerCode);
		
		model.addAttribute("total", writerCouponTotal);
		model.addAttribute("paging", pageVO);
		model.addAttribute("writerCouponViewAll", writerCouponService.getCouponList(pageVO));
		
		return "couponRequest";
	}
	
	
	
	// 쿠폰 요청화면
	@RequestMapping("/couponWriting.wdo")
	public String couponWriting() {
		return "couponWriting";
	}
	
	
    // 쿠폰 발행요청 기능
	@RequestMapping("/insertCoupon.wdo")
	public String inserCoupon(WriterCouponVO writerCoupon) {
		System.out.println("쿠폰발행 요청");
		System.out.println("CouponName : " + writerCoupon.getRequest_cp_name());
		System.out.println("SerllerCode : " + writerCoupon.getRequest_cp_seller());
		writerCouponService.insertWriterCoupon(writerCoupon);
		return "redirect:/couponRequest.wdo";
	}
	
	
	// 상세보기
	@RequestMapping(value="/coupon.wdo", method =RequestMethod.GET)
	public String coupon(WriterCouponVO writerCoupon, Model model) {
		System.out.println("요청 쿠폰 상세보기 seq : " + writerCoupon);
		System.out.println("요청 쿠폰 이름 : " + writerCoupon);
		model.addAttribute("writerCoupon", writerCouponService.coupon(writerCoupon));
		return "coupon";
	}
	
	@RequestMapping("/updateWriterCoupon.wdo")
	public String updateWriterCoupon(WriterCouponVO writerCoupon) {
		writerCouponService.updateWriterCoupon(writerCoupon);
		return "redirect:/requestCoupon.wdo";
		
	}
	
	
	

}
