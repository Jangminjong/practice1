package com.idwith.mpweb.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.admin.CategoryVO;
import com.idwith.mpweb.admin.GoodsCategoryDAO;
import com.idwith.mpweb.common.PagingVO;

@Service("goodsCateogryService")
public class GoodsCategoryServiceImpl implements GoodsCategoryService {
	
	@Autowired
	private GoodsCategoryDAO goodsCategoryDAO;

	@Override
	public void insertGoodsCategory(CategoryVO category) {
		System.out.println("작품 카테고리 등록 service");
		goodsCategoryDAO.insertGoodsCategory(category);
	}

	@Override
	public int countGoodsCate() {
		return goodsCategoryDAO.countGoodsCate();
	}

	@Override
	public List<CategoryVO> getGoodsCate(PagingVO goodsPagination) {
		System.out.println("작품 카테고리 목록 service");
		return goodsCategoryDAO.getGoodsCate(goodsPagination);
	}

	@Override
	public void deleteGoodsCate(String goodsCategoryCode) {
		System.out.println("작품 카테고리 삭제 service");
		goodsCategoryDAO.deleteGoodsCate(goodsCategoryCode);
	}

}
