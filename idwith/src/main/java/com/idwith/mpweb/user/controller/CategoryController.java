package com.idwith.mpweb.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CategoryController {
	@GetMapping("/story.do")
	public String story() {
		return "story";
	}
	
	@GetMapping("/goods_category.do")
	public String GoodsCategory() {
		return "goods_category";
	}
	
	@GetMapping("/goods_popular.do")
	public String GoodsPopular() {
		return "goods_popular";
	}
}
