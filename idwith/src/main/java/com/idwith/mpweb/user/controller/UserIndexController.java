package com.idwith.mpweb.user.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.idwith.mpweb.user.UserVO;
import com.idwith.mpweb.user.service.SellerViewService;

@Controller
public class UserIndexController {
	@Autowired
	private SellerViewService sellerCheckService;
	
	@GetMapping("/index.do")
	public String userIndex(HttpSession session, Model model) {
		return "index";
	}
	 
	@GetMapping("/class_index.do")
	public String classIndex() {
		return "class_index";
	}
}
