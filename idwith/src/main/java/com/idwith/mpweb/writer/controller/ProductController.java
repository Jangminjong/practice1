package com.idwith.mpweb.writer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProductController {	
	
	
	@GetMapping("/productModify.wdo")
	public String productModify() {
		return "productModify";
	}
	
	@GetMapping("/productCreate.wdo")
	public String productCreate() {
		return "productCreate";
	}
	
	@GetMapping("/productDetails.wdo")
	public String productDetails() {
		return "productDetails";
	}
	
	@GetMapping("/productManagement.wdo")
	public String productManagement() {
		return "productManagement";
	}

}
