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

@Controller
public class categoryController {
	
	@Autowired
	private GoodsCategoryService goodsCategoryService;
	
	@Autowired
	private ClassCategoryService classCategoryService;
	
	@GetMapping("/category.mdo")
	public String category() {
		return "category";
	}
	
	// 카테고리 등록 처리 뷰
	@GetMapping("insertCategory.mdo")
	public String insertCategory() {
		return "insertCategory";
	}
	
	@RequestMapping("/CategoryInsert.mdo")
	public String categoryInsert(CategoryVO category, Model model,
			@RequestParam(value = "categoryLabel")String categoryLabel) {
		
		System.out.println("카테고리 입력");
		
		if(categoryLabel.equals("goods")) {
			goodsCategoryService.insertGoodsCategory(category);
		} else {
			classCategoryService.insertClassCategory(category);
		}
		
		return "redirect:/category.mdo";
	}

}
