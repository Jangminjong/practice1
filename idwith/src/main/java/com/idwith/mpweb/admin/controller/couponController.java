package com.idwith.mpweb.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.idwith.mpweb.admin.CouponVO;
import com.idwith.mpweb.admin.RequestCouponVO;
import com.idwith.mpweb.admin.WriterVO;
import com.idwith.mpweb.admin.service.CouponService;
import com.idwith.mpweb.common.CodeGeneration;
import com.idwith.mpweb.common.PagingVO;

import scala.collection.generic.BitOperations.Int;

@Controller
public class couponController {
	
	@Autowired
	private CouponService couponService;
	
	@GetMapping("/couponList.mdo")
	public String couponList(PagingVO pagination, Model model,
			@RequestParam(value = "nowPage", required = false)String nowPage,
			@RequestParam(value = "cntPerPage", required = false)String cntPerPage) throws NumberFormatException {
		
		int couponListTotal = couponService.countCouponList();
		
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "10";
		}
		
		pagination = new PagingVO(couponListTotal, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		model.addAttribute("couponPaging", pagination);
		model.addAttribute("couponListAll", couponService.getCouponList(pagination));
		
		return "couponList";
	}
	
	/**쿠폰 등록 뷰*/
	@GetMapping("/insertCoupon.mdo")
	public String insertCoupon(Model model) {
		
		List<WriterVO> writerList = couponService.getWriterList();
		
		model.addAttribute("writerList", writerList);
		
		return "insertCoupon";
	}
	
	/**쿠폰 등록 처리*/
	@RequestMapping("/couponInsert.mdo")
	public String couponInsert(CouponVO coupon) {
		
		CodeGeneration cg = new CodeGeneration();
		cg.setCertNumLength(6);
		
		coupon.setCouponCode(cg.excuteGenerate());
		couponService.insertCoupon(coupon);
		
		return "redirect:/couponList.mdo";
	}
	
	/**쿠폰 상세보기 뷰*/
	@GetMapping("/detailCoupon.mdo")
	public String detailCoupon(CouponVO coupon, Model model) {
		
		CouponVO detailCoupon = couponService.getDetailCoupon(coupon);
		model.addAttribute("detailCoupon", detailCoupon);
		
		return "detailCoupon";
	}
	
	/**쿠폰 수정*/
	@RequestMapping("/updateCoupon.mdo")
	public String updateCoupon(CouponVO coupon, Model model) {
		List<WriterVO> writerList = couponService.getWriterList();
		model.addAttribute("writerList", writerList);
		CouponVO detailCoupon = couponService.getDetailCoupon(coupon);
		model.addAttribute("detailCoupon", detailCoupon);
		return "updateCoupon";
	}
	
	@RequestMapping("/couponContentUpdate.mdo")
	public String couponContentUpdate(CouponVO coupon) {
		couponService.couponContentUpdate(coupon);
		return "redirect:couponList.mdo";
	}
	
	/**쿠폰 삭제*/
	@RequestMapping("/deleteCoupon.mdo")
	public String deleteCoupon(CouponVO coupon) {
		couponService.deleteCoupon(coupon);
		return "redirect:couponList.mdo";
	}
	
	@GetMapping("/sellerCoupon.mdo")
	public String sellerCoupon() {
		return "sellerCoupon";
	}
	
	/**쿠폰 요청 리스트*/
	@GetMapping("/requestCoupon.mdo")
	public String requestCoupon(PagingVO pagination, Model model, 
			@RequestParam(value = "nowPage", required = false)String nowPage,
			@RequestParam(value = "cntPerPage", required = false)String cntPerPage) {
		
		int requestCouponTotal = couponService.countRequestCoupon();
		
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "10";
		}
		
		pagination = new PagingVO(requestCouponTotal, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		model.addAttribute("paging", pagination);
		model.addAttribute("requestConponList", couponService.getRequestCoupon(pagination));
		
		return "requestCoupon";
	}
	
	@RequestMapping("/requestInsertCoupon.mdo")
	public String requestInsertCoupon(Model model, RequestCouponVO coupon) {
		
		model.addAttribute("requestConponList", couponService.requestInsertCoupon(coupon));

		return "requestInsertCoupon";
	}
	
	@RequestMapping("/requestCouponInsert.mdo")
	public String requestCouponInsert(RequestCouponVO reCoupon) {
		CodeGeneration cg = new CodeGeneration();
		cg.setCertNumLength(6);
		reCoupon.setRequsetCouponCode(cg.excuteGenerate());
		
		couponService.updateRequestCouponStatus(reCoupon);
		couponService.requestCouponInsert(reCoupon);
		
		return "redirect:/requestCoupon.mdo";
	}
	
}
