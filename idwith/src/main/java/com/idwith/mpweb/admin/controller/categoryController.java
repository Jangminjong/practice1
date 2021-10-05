package com.idwith.mpweb.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.idwith.mpweb.admin.CategoryVO;
import com.idwith.mpweb.admin.service.ClassCategoryService;
import com.idwith.mpweb.admin.service.GoodsCategoryService;
import com.idwith.mpweb.common.PagingVO;

@Controller
public class categoryController {
	
	@Autowired
	private GoodsCategoryService goodsCategoryService;
	
	@Autowired
	private ClassCategoryService classCategoryService;
	
	@GetMapping("/category.mdo")
	public String category(Model model,
			@RequestParam(value = "nowPage", required = false)String nowPage,
			@RequestParam(value = "cntPerPage", required = false)String cntPerPage) {

		int goodsCateTotal = goodsCategoryService.countGoodsCate();
		int classCateTotal = classCategoryService.countClassCate();
		
		System.out.println("goodsTotal : " + goodsCateTotal);
		System.out.println("classTotal : " + classCateTotal);
		
		if(nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";
		} else if(nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "10";
		}
		
		PagingVO goodsPagination = new PagingVO(goodsCateTotal, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		PagingVO classPagination = new PagingVO(classCateTotal, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		model.addAttribute("goodsPaging", goodsPagination);
		model.addAttribute("GoodsCateAll", goodsCategoryService.getGoodsCate(goodsPagination));
		
		model.addAttribute("classPaging", classPagination);
		model.addAttribute("ClassCateAll", classCategoryService.getClassCate(classPagination));
		
		return "category";
	}
	
	// 카테고리 등록 처리 뷰
	@GetMapping("insertCategory.mdo")
	public String insertCategory() {
		return "insertCategory";
	}
	
	@RequestMapping("/CategoryInsert.mdo")
	public String categoryInsert(CategoryVO category, Model model,
			@RequestParam(value = "categoryLabel")String categoryLabel,
			@RequestParam(value = "CategoryCode")String categoryCode,
			@RequestParam(value = "CategoryName")String categoryName) {
		
		System.out.println("카테고리 입력");
		
		if(categoryLabel.equals("goods")) {
			category.setGoodsCategoryCode(categoryCode);
			category.setGoodsCategoryName(categoryName);
			goodsCategoryService.insertGoodsCategory(category);
		} else {
			category.setClassCategoryCode("CL" + categoryCode);
			category.setClassCategoryName(categoryName);
			classCategoryService.insertClassCategory(category);
		}
		
		return "redirect:/category.mdo";
	}
	
	@RequestMapping("/deletGoodsCate.mdo")
	public String deletGoodsCate(CategoryVO category, 
			@RequestParam(value = "goodsCategoryCode")String goodsCategoryCode) {
		System.out.println("작품 카테고리 삭제 controller");
		System.out.println("받은 코드 : " + goodsCategoryCode);
		goodsCategoryService.deleteGoodsCate(goodsCategoryCode);
		return "redirect:category.mdo";
	}
	
	@RequestMapping("/deleteClassCate.mdo")
	public String deleteClassCate(CategoryVO category, @RequestParam(value = "classCategoryCode")String classCategoryCode) {
		System.out.println("클래스 카테고리 삭제 controller");
		classCategoryService.deleteClassCate(classCategoryCode);
		return "redirect:category.mdo";
	}

}






















