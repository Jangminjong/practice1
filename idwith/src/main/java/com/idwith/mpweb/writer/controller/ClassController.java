package com.idwith.mpweb.writer.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.postgresql.util.PSQLException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

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
	
	@RequestMapping("/classInsertApply.wdo")
	public String classInsertApply(HttpServletRequest request,MultipartFile[] file, Model model,HttpSession session)  throws IOException, PSQLException, IllegalStateException {
		
		return "";
	}
	
}