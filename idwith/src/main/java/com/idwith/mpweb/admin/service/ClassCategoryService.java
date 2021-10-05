package com.idwith.mpweb.admin.service;

import java.util.List;

import com.idwith.mpweb.admin.CategoryVO;
import com.idwith.mpweb.common.PagingVO;

public interface ClassCategoryService {

	void insertClassCategory(CategoryVO category);

	int countClassCate();

	List<CategoryVO> getClassCate(PagingVO classPagination);

	void deleteClassCate(String classCategoryCode);

}
