package com.idwith.mpweb.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class noticeController {
	
	@GetMapping("/adminNotice.mdo")
	public String adminNotice() {
		return "adminNotice";
	}
	
	@GetMapping("/adminInsertNotice.mdo")
	public String adminInsertNotice() {
		return "adminInsertNotice";
	}

}
