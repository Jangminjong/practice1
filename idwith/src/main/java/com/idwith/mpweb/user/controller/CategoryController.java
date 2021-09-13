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
	public String goodsCategory() {
		return "goods_category";
	}
	
	@GetMapping("/goods_popular.do")
	public String goodsPopular() {
		return "goods_popular";
	}

	@GetMapping("/class_category.do")
	public String classCategory() {
		return "class_category";
	}
	
	@GetMapping("/class_region.do")
	public String classRegion() {
		return "class_region";
	}
}
