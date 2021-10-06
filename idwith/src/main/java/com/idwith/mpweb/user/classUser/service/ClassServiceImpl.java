package com.idwith.mpweb.user.classUser.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.user.classUser.ClassCategoryVO;
import com.idwith.mpweb.user.classUser.ClassDAO;
import com.idwith.mpweb.user.classUser.ClassVO;


@Service("classService")
public class ClassServiceImpl implements ClassService{

	@Autowired
	private ClassDAO dao;
	
	@Override
	public List<ClassVO> getPopularClassList() {
		return dao.getPopularClassList();
	}

	@Override
	public ClassCategoryVO getCategoryName(String class_category_code) {
		return dao.getCategoryName(class_category_code);
	}

	@Override
	public int getClassCount(String class_category_code) {
		return dao.getClassCount(class_category_code);
	}

	@Override
	public List<ClassVO> getClassList(PagingVO pageVO) {
		return dao.getClassList(pageVO);
	}

	@Override
	public List<ClassCategoryVO> getCategoryList() {
		return dao.getCategoryList();
	}

	@Override
	public int getAllClassCount() {
		return dao.getAllClassCount();
	}

	@Override
	public List<ClassVO> getAllClassList(PagingVO pageVO) {
		return dao.getAllClassList(pageVO);
	}

	@Override
	public int getClassCountForRegion(String region) {
		return dao.getClassCountForRegion(region);
	}

	@Override
	public List<ClassVO> getClassListForRegion(PagingVO pageVO) {
		return dao.getClassListForRegion(pageVO);
	}

}
