package com.idwith.mpweb.writer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SalesController {
	
	@GetMapping("/writerSales.wdo")
	public String writerSales() {
		return "writerSales";
	}
	
	@GetMapping("/sellerCalculate.wdo")
	public String sellerCalculate() {
		return "sellerCalculate";
	}
	

}
