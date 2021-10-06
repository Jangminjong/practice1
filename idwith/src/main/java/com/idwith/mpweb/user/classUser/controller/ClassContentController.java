package com.idwith.mpweb.user.classUser.controller;

import java.util.List;

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
	public String classDetail(ClassVO classVO, UserSellerVO sellerVO, Model model,
			@RequestParam(value="class_open_class_code", required=false) String class_open_class_code) {
		
		classVO = service.getClassContentAtUser(class_open_class_code);
		model.addAttribute("classVO", classVO);
		
		int seller_code = classVO.getClass_open_seller();
		sellerVO = service.getSellerInfoForClassDetail(seller_code);
		model.addAttribute("sellerVO", sellerVO);
		
		List<ClassVO> classList = service.getClassListForClassDetail(seller_code);
		model.addAttribute("classList", classList);
		
		return "class/class_detail_content";
	}
}
