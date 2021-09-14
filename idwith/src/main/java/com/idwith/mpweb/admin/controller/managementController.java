package com.idwith.mpweb.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class managementController {
	
	@GetMapping("/user.mdo")
	public String adminUser() {
		return "user";
	}
	
	@GetMapping("/userList.mdo")
	public String adminUserList() {
		return "userList";
	}
	
	@GetMapping("/storePropose.mdo")
	public String storePropose() {
		return "storePropose";
	}
	
	@GetMapping("/sellerList.mdo")
	public String sellerList() {
		return "sellerList";
	}

}
