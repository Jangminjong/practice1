package com.idwith.mpweb.admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.admin.CategoryVO;
import com.idwith.mpweb.admin.ClassCategoryDAO;

@Service("classCategoryService")
public class ClassCategoryServiceImpl implements ClassCategoryService {
	
	@Autowired
	private ClassCategoryDAO classCategoryDAO;

	@Override
	public void insertClassCategory(CategoryVO category) {
		System.out.println("클래스 카테고리 등록 service");
		classCategoryDAO.insertClassCategory(category);
	}

}
