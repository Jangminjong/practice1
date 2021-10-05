package com.idwith.mpweb.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.idwith.mpweb.user.GoodsVO;
import com.idwith.mpweb.user.service.GoodsService;

@Controller
public class ItemController {
	@Autowired
	private GoodsService goodsService;
	
	//클래스 상세보기
	@GetMapping("/class_detail_content.do")
	public String classDetailContent() {
		return "class_detail_content";
	}
	
	@GetMapping("/class_search.do")
	public String classSearch() {
		return "class_search";
	}
	
	
	//작품 상세보기
	@GetMapping("/detail_content.do")
	public String detailContent(@RequestParam("goods_code") String goods_code, Model model) {
		System.out.println("작품 상세보기 컨트롤러 실행");
		
		GoodsVO goods = goodsService.getGoodsContent(goods_code);
		
		model.addAttribute("goods", goods);
		return "detail_content";
	}
	
	@GetMapping("/product_search.do")
	public String productSearch() {
		return "product_search";
	}
}
