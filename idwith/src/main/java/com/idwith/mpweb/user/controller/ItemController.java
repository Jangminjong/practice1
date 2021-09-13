package com.idwith.mpweb.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ItemController {
	//클래스 관련
	@GetMapping("/class_detail_content.do")
	public String classDetailContent() {
		return "class_detail_content";
	}
	
	@GetMapping("/class_search.do")
	public String classSearch() {
		return "class_search";
	}
	
	
	//작품 관련
	@GetMapping("/detail_content.do")
	public String detailContent() {
		return "detail_content";
	}
	
	@GetMapping("/product_search.do")
	public String productSearch() {
		return "product_search";
	}
}
