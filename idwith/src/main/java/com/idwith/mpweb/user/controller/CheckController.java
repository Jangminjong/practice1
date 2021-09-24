package com.idwith.mpweb.user.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.idwith.mpweb.user.board.QnABoardVO;
import com.idwith.mpweb.user.service.UserService;

@Controller
public class CheckController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/cellPhoneCheck.do", method=RequestMethod.GET, produces="application/text; charset=utf8")
	@ResponseBody
	public String cellPhoneOverlapCheck(HttpServletRequest req) throws Exception{
		String cell_phone = req.getParameter("cell_phone");
		int result = userService.cellPhoneCheck(cell_phone);
		return Integer.toString(result);
	}
	
	@RequestMapping(value="/emailCheck.do", method=RequestMethod.GET, produces="application/text; charset=utf8")
	@ResponseBody
	public String overlapCheck(HttpServletRequest req) throws Exception{
		String email = req.getParameter("email");
		int result = userService.emailCheck(email);
		return Integer.toString(result);
	}

}
