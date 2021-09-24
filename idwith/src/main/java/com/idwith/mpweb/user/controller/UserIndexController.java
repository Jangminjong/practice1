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
import com.idwith.mpweb.user.service.SellerCheckService;

@Controller
public class UserIndexController {
	@Autowired
	private SellerCheckService sellerCheckService;
	
	@GetMapping("/index.do")
	public String userIndex(HttpSession session, Model model) {
		System.out.println("UserIndex 컨트롤러 실행");
		
		String user_id = (String) session.getAttribute("email");
		
		if(user_id != null) {
			System.out.println("세션 값 : " + user_id);
			int result = sellerCheckService.getSeller(user_id);
			
			System.out.println("컨트롤러 결과 값 : " + result);
			session.setAttribute("result", result);
			model.addAttribute("result", result);
		}
		
		return "index";
	}
	 
	@GetMapping("/class_index.do")
	public String classIndex() {
		return "class_index";
	}
}
