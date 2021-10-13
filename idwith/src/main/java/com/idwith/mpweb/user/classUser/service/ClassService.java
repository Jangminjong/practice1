package com.idwith.mpweb.user.classUser.service;

import java.util.List;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.user.UserSellerVO;
import com.idwith.mpweb.user.UserVO;
import com.idwith.mpweb.user.classUser.ClassCategoryVO;
import com.idwith.mpweb.user.classUser.ClassOrderVO;
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

	List<ClassVO> getClassContentAtUser(String class_open_class_code);

	UserSellerVO getSellerInfoForClassDetail(int seller_code);

	List<ClassVO> getClassListForClassDetail(int seller_code);

	List<UserVO> getUserInfoForClassReg(String email);


	List<ClassVO> getNewClassList();

	String getStoreNameforOrder(String class_order_code);

	 List<ClassVO> getNearbyList(String area);

	void insertClassOrder(ClassOrderVO class_order);

	void paymentClassCancel(String marchant_uid);

	int countClassForSearch(String search);

	List<ClassVO> getClassListForSearch(PagingVO classPageVO);


}
