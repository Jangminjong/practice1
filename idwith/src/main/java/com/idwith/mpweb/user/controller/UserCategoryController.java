package com.idwith.mpweb.user.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.user.SellerStoryVO;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.idwith.mpweb.user.GoodsCategoryVO;
import com.idwith.mpweb.user.GoodsVO;
import com.idwith.mpweb.user.classUser.ClassCategoryVO;
import com.idwith.mpweb.user.classUser.ClassVO;
import com.idwith.mpweb.user.classUser.service.ClassService;
import com.idwith.mpweb.user.service.UserCategoryService;

@Controller
public class UserCategoryController {
	@Autowired
	private UserCategoryService service;
	
	@Autowired
	private ClassService classService;
	
	@GetMapping("/story.do")
	public String story(Model model, PagingVO pageVO, @RequestParam(value="nowPage", required=false) String nowPage
			,@RequestParam(value="cntPerPage", required=false) String cntPerPage) {
		int total = service.countStory();
		
		
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "20";
		} else {
			cntPerPage = "20";
		}
		
		pageVO = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		List<SellerStoryVO> storyList = service.getStoryList(pageVO);
		int listLength = storyList.size() / 2;
		
		model.addAttribute("paging", pageVO);
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
	
	@RequestMapping("/goods_category.do")
	public String goodsCategory(PagingVO pageVO, Model model, HttpSession session,
			@RequestParam(value="goods_category", required=false) String goods_category, 
			@RequestParam(value="nowPage", required=false) String nowPage, 
			@RequestParam(value="cntPerPage", required=false) String cntPerPage, 
			@RequestParam(value="set", required=false) String set,
			@RequestParam(value="max", required=false) String max,
			@RequestParam(value="min", required=false) String min) {
		
		
		String categoryName=service.getCategoryName(goods_category);
		model.addAttribute("categoryName", categoryName);
		
		int total = service.goodsCount(goods_category);
		
		if (nowPage == null && cntPerPage == null) { 
			nowPage = "1"; 
			cntPerPage = "16"; 
		} else {
			cntPerPage = "16";
		}
		
		System.out.println("set: "+set);
		
		if(set == null) {
			set="all";
		}
		
		
		List<GoodsVO> goodsList;
		
		if(max == null) {
			pageVO = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), goods_category, set);
			goodsList = service.getGoodsList(pageVO);
		} else {
			pageVO = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), goods_category, set, Integer.parseInt(min), Integer.parseInt(max));
			goodsList = service.getGoodsListWithPrice(pageVO);
		}
		
		pageVO.setSet(pageVO.getSearchKeyword());
		model.addAttribute("paging", pageVO); 
		model.addAttribute("goods_category", goods_category);
		model.addAttribute("goodsList", goodsList);
		
		return "goods_category";
	}
	
	@GetMapping("/goods_popular.do")
	public String goodsPopular(Model model, HttpSession session, GoodsVO goodsVO ) {
		// 인기 상품
		// 카테고리 조회
		List<GoodsCategoryVO> goodsCategoryList = service.getGoodsCategory();
		model.addAttribute("goodsCategoryList", goodsCategoryList);

		// 카테고리마다의 상품 가쳐오기
		for (int i = 0; i < goodsCategoryList.size(); i++) {
			goodsVO.setGoods_category(goodsCategoryList.get(i).getGoods_category_code());
			List<GoodsVO> goodsList = service.getGoodsListForPopular(goodsVO);
			model.addAttribute("goodsList" + i, goodsList);
		}
		return "goods_popular";
	}

	@GetMapping("/class_category.do")
	public String classCategory(PagingVO pageVO, Model model, 
			@RequestParam(value="class_category_code", required=false) String class_category_code, 
			@RequestParam(value="nowPage", required=false) String nowPage, 
			@RequestParam(value="cntPerPage", required=false) String cntPerPage ) {
		
		List<ClassCategoryVO> categoryList = classService.getCategoryList();
		model.addAttribute("categoryList", categoryList);
		
		ClassCategoryVO categoryName = classService.getCategoryName(class_category_code);
		model.addAttribute("categoryName", categoryName);
		
		int total = classService.getClassCount(class_category_code);
		
		if (nowPage == null && cntPerPage == null) { 
			nowPage = "1"; 
			cntPerPage = "9"; 
		} else {
			cntPerPage = "9";
		}
		
		pageVO =new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), class_category_code);
		List<ClassVO> classList = classService.getClassList(pageVO);
		
		model.addAttribute("paging", pageVO); 
		model.addAttribute("classList", classList);
		
		return "class/class_category";
	}
	
	@GetMapping("/class_region.do")
	public String classRegion(PagingVO pageVO, Model model, 
			@RequestParam(value="region", required=true, defaultValue = "서울") String region, 
			@RequestParam(value="nowPage", required=false) String nowPage, 
			@RequestParam(value="cntPerPage", required=false) String cntPerPage ) {
		
		int total = classService.getClassCountForRegion(region);
		
		if (nowPage == null && cntPerPage == null) { 
			nowPage = "1"; 
			cntPerPage = "9"; 
		} else {
			cntPerPage = "9";
		}
		
		pageVO =new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage), region);
		List<ClassVO> classList = classService.getClassListForRegion(pageVO);
		
		model.addAttribute("region", region);
		model.addAttribute("paging", pageVO); 
		model.addAttribute("classList", classList);
		
		return "class/class_region";
	}
	
	@GetMapping("/class_popular.do")
	public String classPopular(PagingVO pageVO, Model model,
			@RequestParam(value="nowPage", required=false) String nowPage, 
			@RequestParam(value="cntPerPage", required=false) String cntPerPage) {
		
		int total = classService.getAllClassCount();
		
		if (nowPage == null && cntPerPage == null) { 
			nowPage = "1"; 
			cntPerPage = "12"; 
		} else {
			cntPerPage = "12";
		}
		

		pageVO =new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		List<ClassVO> classList = classService.getAllClassList(pageVO);
		
		model.addAttribute("paging", pageVO); 
		model.addAttribute("classList", classList);
		return "class/class_popular";
	}
}
