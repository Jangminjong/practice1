package com.idwith.mpweb.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class categoryController {
	
	@GetMapping("/category.mdo")
	public String category() {
		return "category";
	}

	@GetMapping("/insertProductCategory.mdo")
	public String insertProductCategory() {
		return "insertProductCategory";
	}
	
	@GetMapping("/insertClassCategory.mdo")
	public String insertClassCategory() {
		return "insertClassCategory";
	}
	
}
