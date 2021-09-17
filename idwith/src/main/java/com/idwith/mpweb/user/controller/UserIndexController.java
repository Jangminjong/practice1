package com.idwith.mpweb.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.idwith.mpweb.user.UserVO;

@Controller
public class UserIndexController {

	@GetMapping("/index.do")
	public String userIndex() {
		return "index";
	}
	 
	@GetMapping("/class_index.do")
	public String classIndex() {
		return "class_index";
	}
}
