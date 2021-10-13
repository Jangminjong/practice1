package com.idwith.mpweb.user.classUser.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.idwith.mpweb.user.UserSellerVO;
import com.idwith.mpweb.user.classUser.ClassVO;
import com.idwith.mpweb.user.classUser.service.ClassService;

@Controller
public class ClassContentController {
	@Autowired
	private ClassService service;
	
	@RequestMapping("/class_detail_content.do")
	public String classDetail(UserSellerVO sellerVO, Model model, HttpSession session,
			@RequestParam(value="class_open_class_code", required=false) String class_open_class_code) {
		
		List<ClassVO> classDetails = service.getClassContentAtUser(class_open_class_code);
		session.setAttribute("classVO", classDetails.get(0));
		model.addAttribute("classDetails", classDetails);
		session.setAttribute("classCode", classDetails.get(0).getClass_open_class_code());
		
		int seller_code = classDetails.get(0).getClass_open_seller();
		sellerVO = service.getSellerInfoForClassDetail(seller_code);
		session.setAttribute("sellerVO", sellerVO);
		
		List<ClassVO> classList = service.getClassListForClassDetail(seller_code);
		model.addAttribute("classList", classList);
		
		return "class/class_detail_content";
	}
	
}
