package com.idwith.mpweb.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.idwith.mpweb.user.UserVO;
import com.idwith.mpweb.user.classUser.ClassOrderVO;
import com.idwith.mpweb.user.classUser.service.ClassService;

@Controller
public class PaymentController {
	@Autowired
	ClassService service;
	
	@RequestMapping("/payment_class.do")
	public String payment(ClassOrderVO classOrder, HttpSession session, HttpServletRequest req, Model model) {
		model.addAttribute("state", "lecture");
		String classCode = (String) session.getAttribute("classCode");
		String email = (String) session.getAttribute("email");
		
		// 사용자 정보 세팅 
		UserVO user = service.getUserInfoForClassReg(email); 
		 
		classOrder.setClass_order_code(classCode);
		classOrder.setClass_order_id(email);
		
		model.addAttribute("sellerVO", classOrder);
		model.addAttribute("user", user);
		
		return "payment";
	}
}
