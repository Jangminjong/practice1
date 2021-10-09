package com.idwith.mpweb.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.idwith.mpweb.admin.CouponVO;
import com.idwith.mpweb.admin.WriterVO;
import com.idwith.mpweb.admin.service.CouponService;
import com.idwith.mpweb.common.CodeGeneration;

@Controller
public class couponController {
	
	@Autowired
	private CouponService couponService;
	
	@GetMapping("/couponList.mdo")
	public String couponList() {
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
		
		coupon.setCouponCode(Integer.parseInt(cg.excuteGenerate()));
		
		couponService.insertCoupon(coupon);
		
		return "redirect:/couponList.mdo";
	}
	
	
	@GetMapping("/detailCoupon.mdo")
	public String detailCoupon() {
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
