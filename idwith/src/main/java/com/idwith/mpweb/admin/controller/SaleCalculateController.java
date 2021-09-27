package com.idwith.mpweb.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SaleCalculateController {
	
	@GetMapping("calculate.mdo")
	public String calculate() {
		return "calculate";
	}
	
	@GetMapping("sales.mdo")
	public String sales() {
		return "sales";
	}
	
}
