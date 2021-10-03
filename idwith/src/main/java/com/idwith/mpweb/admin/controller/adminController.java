package com.idwith.mpweb.admin.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.idwith.mpweb.admin.AdminVO;
import com.idwith.mpweb.admin.board.AdminNoticeBoardVO;
import com.idwith.mpweb.admin.service.AdminLoginService;
import com.idwith.mpweb.admin.service.MainViewService;

@Controller
public class adminController {
	@Autowired
	private AdminLoginService adminLoginService;
	
	@Autowired
	private MainViewService mainViewService;
	
	@RequestMapping(value = "/main.mdo", method = {RequestMethod.POST, RequestMethod.GET})
	public String adminMain(AdminVO vo, HttpSession session, Model model) {
		System.out.println("로그인 컨트롤러 실행");
		
		String admin_name = null;
		String admin_role = null;
		List<AdminVO> result = adminLoginService.getAdmin(vo);
		
		
		for (AdminVO admin : result) {
			admin_name = admin.getAdmin_name();
			admin_role = admin.getAdmin_role();
		}
		
		session.setAttribute("admin_name", admin_name);
		session.setAttribute("admin_role", admin_role);
		
		model.addAttribute("MainViewAll", mainViewService.getMainNoticeList());
		
		return "main";
	}
	
	//로그아웃 처리
	@RequestMapping(value = "/adminLogout.mdo", method = RequestMethod.GET)
	public String adminLogout(AdminVO vo, HttpSession session) {
		System.out.println("관리자 로그아웃 컨트롤러 실행");
		
		session.invalidate();
		
		return "adminLogin";
	}
	
	
	
}
