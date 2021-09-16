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
	
	@GetMapping("/productPropose.mdo")
	public String productPropose() {
		return "productPropose";
	}
	
	@GetMapping("/classPropose.mdo")
	public String classPropose() {
		return "classPropose";
	}
	
	@GetMapping("/adminList.mdo")
	public String adminList() {
		return "adminList";
	}
	
	@GetMapping("/writerList.mdo")
	public String writerList() {
		return "writerList";
	}
	
	@GetMapping("/productWriter.mdo")
	public String productWriter() {
		return "productWriter";
	}
	
	@GetMapping("/classWriter.mdo")
	public String classWriter() {
		return "classWriter";
	}
	
}
