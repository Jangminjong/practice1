package com.idwith.mpweb.admin.service;

import java.util.List;

import com.idwith.mpweb.admin.CategoryVO;
import com.idwith.mpweb.common.PagingVO;

public interface GoodsCategoryService {

	void insertGoodsCategory(CategoryVO category);

	int countGoodsCate();

	List<CategoryVO> getGoodsCate(PagingVO goodsPagination);

	void deleteGoodsCate(String goodsCategoryCode);

}
