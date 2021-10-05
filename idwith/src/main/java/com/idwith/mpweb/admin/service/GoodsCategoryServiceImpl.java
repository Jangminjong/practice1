package com.idwith.mpweb.admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.admin.CategoryVO;
import com.idwith.mpweb.admin.GoodsCategoryDAO;

@Service("goodsCateogryService")
public class GoodsCategoryServiceImpl implements GoodsCategoryService {
	
	@Autowired
	private GoodsCategoryDAO goodsCategoryDAO;

	@Override
	public void insertGoodsCategory(CategoryVO category) {
		System.out.println("작품 카테고리 등록 service");
		goodsCategoryDAO.insertGoodsCategory(category);
	}

}
