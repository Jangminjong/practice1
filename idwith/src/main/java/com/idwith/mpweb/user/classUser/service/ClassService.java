package com.idwith.mpweb.user.classUser.service;

import java.util.List;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.user.classUser.ClassCategoryVO;
import com.idwith.mpweb.user.classUser.ClassVO;


public interface ClassService {

	List<ClassVO> getPopularClassList();

	ClassCategoryVO getCategoryName(String class_category_code);

	int getClassCount(String class_category_code);

	List<ClassVO> getClassList(PagingVO pageVO);

	List<ClassCategoryVO> getCategoryList();

	int getAllClassCount();

	List<ClassVO> getAllClassList(PagingVO pageVO);

	int getClassCountForRegion(String region);

	List<ClassVO> getClassListForRegion(PagingVO pageVO);


}
