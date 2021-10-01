package com.idwith.mpweb.admin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.idwith.mpweb.admin.AdminVO;
import com.idwith.mpweb.admin.service.AdminLoginService;

@Controller
public class loginTestController {
	@Autowired
	private AdminLoginService adminLoginService;
	
	@RequestMapping(value = "/adminLogin.mdo", method = RequestMethod.GET)
	public String adminTestLogin(AdminVO vo) {
		return "adminLogin";
	}
	
	@RequestMapping(value = "/adminIdCheck.mdo", method = RequestMethod.GET)
	@ResponseBody
	public String adminIdCheck(HttpServletRequest request) {
		System.out.println("아이디 체크 컨트롤러 실행");
		String admin_id = request.getParameter("admin_id");
		String admin_pwd = request.getParameter("admin_pwd");

		System.out.println("ID : " + admin_id);
		System.out.println("PWD : " + admin_pwd);
		
		int result = adminLoginService.CheckID(admin_id, admin_pwd);
		
		System.out.println("결과 값 : " + result);
		return Integer.toString(result);
	}
}
