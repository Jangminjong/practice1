package com.idwith.mpweb.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.idwith.mpweb.admin.AdminVO;
import com.idwith.mpweb.admin.service.AdminLoginService;
import com.idwith.mpweb.user.UserVO;

@Controller
public class loginTestController {
	@Autowired
	private AdminLoginService adminLoginService;
	
	@RequestMapping(value = "/adminLogin.mdo", method = RequestMethod.GET)
	public String adminTestLogin(AdminVO vo) {
		return "adminLogin";
	}
}
