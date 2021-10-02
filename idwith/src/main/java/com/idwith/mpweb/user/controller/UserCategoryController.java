package com.idwith.mpweb.user.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.user.service.UserCategoryService;

@Controller
public class UserCategoryController {
	@Autowired
	private UserCategoryService service;
	
	@GetMapping("/story.do")
	public String story(PagingVO pageVO, Model model) {
		List<Map<String, String>> storyList = service.getStoryList();
		int listLength = storyList.size() / 2;
		
		model.addAttribute("storyList", storyList);
		model.addAttribute("listLength", listLength);
		
		
		/*
		 * model.addAttribute("noticeList",boardService.getQnAList()); int total =
		 * boardService.countQnA(); int countNotice = boardService.countNotice();
		 * System.out.println("������ ��: "+ countNotice); if (nowPage == null &&
		 * cntPerPage == null) { nowPage = "1"; cntPerPage =
		 * Integer.toString(20-countNotice); } else if(nowPage =="1") { cntPerPage =
		 * Integer.toString(20-countNotice); }else if(Integer.parseInt(nowPage)>1) {
		 * cntPerPage = "20"; }
		 * 
		 * System.out.println("nowpage: "+nowPage+"cntPerpage: "+cntPerPage); pageVO =
		 * new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage),
		 * countNotice); model.addAttribute("paging", pageVO);
		 * model.addAttribute("qnaList", boardService.selectQnA(pageVO));
		 */
		
		return "story";
	}
	
	@GetMapping("/goods_category.do")
	public String goodsCategory() {
		return "goods_category";
	}
	
	@GetMapping("/goods_popular.do")
	public String goodsPopular() {
		return "goods_popular";
	}

	@GetMapping("/class_category.do")
	public String classCategory() {
		return "class_category";
	}
	
	@GetMapping("/class_region.do")
	public String classRegion() {
		return "class_region";
	}
	
	@GetMapping("/class_popular.do")
	public String classPopular() {
		return "class_popular";
	}
}
