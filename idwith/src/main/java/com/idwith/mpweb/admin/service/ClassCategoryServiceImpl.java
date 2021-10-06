package com.idwith.mpweb.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.admin.CategoryVO;
import com.idwith.mpweb.admin.ClassCategoryDAO;
import com.idwith.mpweb.common.PagingVO;

@Service("classCategoryService")
public class ClassCategoryServiceImpl implements ClassCategoryService {
	
	@Autowired
	private ClassCategoryDAO classCategoryDAO;

	@Override
	public void insertClassCategory(CategoryVO category) {
		System.out.println("클래스 카테고리 등록 service");
		classCategoryDAO.insertClassCategory(category);
	}

	@Override
	public int countClassCate() {
		return classCategoryDAO.countClassCate();
	}

	@Override
	public List<CategoryVO> getClassCate(PagingVO classPagination) {
		System.out.println("클래스 카테고리 목록 service");
		return classCategoryDAO.getClassCate(classPagination);
	}

	@Override
	public void deleteClassCate(String classCategoryCode) {
		System.out.println("작품 카테고리 삭제 service");
		classCategoryDAO.deleteClassCate(classCategoryCode);
	}

}
