package com.idwith.mpweb.writer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ClassController {
	
	@GetMapping("/classManagement.wdo")
	public String classManagement() {
		return "classManagement";
	}
	
	@GetMapping("/classModify.wdo")
	public String classModify() {
		return "classModify";
	}
	
	@GetMapping("/classCreate.wdo")
	public String classCreate() {
		return "classCreate";
	}
	
	@GetMapping("/classOpen.wdo")
	public String classOpen() {
		return "classOpen";
	}

}