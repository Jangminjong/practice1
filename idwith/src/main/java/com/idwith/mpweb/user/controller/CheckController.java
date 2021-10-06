package com.idwith.mpweb.user.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.idwith.mpweb.user.ChoiceVO;
import com.idwith.mpweb.user.FollowVO;
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
	
	@RequestMapping(value="/changeChoice.do", method=RequestMethod.GET, produces="application/json; charset=UTF-8")
	@ResponseBody
	public String changeChoice(HttpServletRequest req, ChoiceVO choice) throws Exception{
		String email = req.getParameter("email");
		String goodsCode = req.getParameter("goodsCode");
		Boolean choiceTrue = Boolean.valueOf(req.getParameter("state"));
		choice.setChoice_id(email);
		choice.setChoiced_code(goodsCode);
		choice.setChoice_true(choiceTrue);
		int result = userService.changeChoice(choice);
		return Integer.toString(result);
	}
		
	@RequestMapping(value="/setChoice.do", method=RequestMethod.GET, produces="application/json; charset=UTF-8")
	@ResponseBody
	public ArrayList<String> setChoice(HttpServletRequest req, ChoiceVO choice) throws Exception{
		System.out.println("찜 목록 조회 컨트롤러 실행");
		String email = req.getParameter("email");
		List<ChoiceVO> result = userService.setChoice(email);
		ArrayList<String> data =new ArrayList<>();
		for(ChoiceVO list : result) {
			data.add(list.getChoiced_code());
		}
		return data;
	}
	
	@RequestMapping(value="/changeFollow.do", method=RequestMethod.GET, produces="application/json; charset=UTF-8")
	@ResponseBody
	public String changeFollow(HttpServletRequest req, FollowVO follow) throws Exception{
		String email = req.getParameter("email");
		String sellerId = req.getParameter("sellerId");
		Boolean followTrue = Boolean.valueOf(req.getParameter("state"));
		follow.setFollow_id(email);
		follow.setFollowed_id(Integer.parseInt(sellerId));
		follow.setFollow_true(followTrue);
		int result = userService.changeFollow(follow);
		return Integer.toString(result);
	}
	
	@RequestMapping(value="/setFollow.do", method=RequestMethod.GET, produces="application/json; charset=UTF-8")
	@ResponseBody
	public ArrayList<String> setFollow(HttpServletRequest req, FollowVO follow) throws Exception{
		String email = req.getParameter("email");
		List<FollowVO> result = userService.setFollow(email);
		ArrayList<String> data =new ArrayList<>();
		for(FollowVO list : result) {
			data.add(Integer.toString(list.getFollowed_id()));
		}
		return data;
	}
}
