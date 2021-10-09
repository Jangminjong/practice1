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
import com.idwith.mpweb.admin.WriterVO;
import com.idwith.mpweb.admin.service.CouponService;
import com.idwith.mpweb.common.CodeGeneration;
import com.idwith.mpweb.common.PagingVO;

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
	
	@GetMapping("/sellerCoupon.mdo")
	public String sellerCoupon() {
		return "sellerCoupon";
	}
	
	@GetMapping("/requestCoupon.mdo")
	public String requestCoupon() {
		return "requestCoupon";
	}

}
