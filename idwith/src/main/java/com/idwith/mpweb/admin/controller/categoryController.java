package com.idwith.mpweb.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class categoryController {
	
	@GetMapping("/productCategory.mdo")
	public String productCategory() {
		return "productCategory";
	}

}
