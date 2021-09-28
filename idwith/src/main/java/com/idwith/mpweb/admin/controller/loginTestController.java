package com.idwith.mpweb.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.idwith.mpweb.admin.AdminVO;

@Controller
public class loginTestController {
	
	@RequestMapping(value = "/adminLogin.mdo", method = RequestMethod.GET)
	public String adminTestLogin(AdminVO vo) {
		return "adminLogin";
	}
	
	
}
