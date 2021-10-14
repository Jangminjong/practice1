package com.idwith.mpweb.user.classUser;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.user.UserSellerVO;
import com.idwith.mpweb.user.UserVO;

@Repository("classDAO")
public class ClassDAO {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public List<ClassVO> getPopularClassList() {
		return sqlSessionTemplate.selectList("classDAO.getPopularClassList");
	}

	public ClassCategoryVO getCategoryName(String class_category_code) {
		return sqlSessionTemplate.selectOne("classDAO.getCategoryName", class_category_code);
	}

	public int getClassCount(String class_category_code) {
		return sqlSessionTemplate.selectOne("classDAO.getClassCount", class_category_code);
	}

	public List<ClassVO> getClassList(PagingVO pageVO) {
		return sqlSessionTemplate.selectList("classDAO.getClassList", pageVO);
	}

	public List<ClassCategoryVO> getCategoryList() {
		return sqlSessionTemplate.selectList("classDAO.getCategoryList");
	}

	public int getAllClassCount() {
		return sqlSessionTemplate.selectOne("classDAO.getAllClassCount");
	}

	public List<ClassVO> getAllClassList(PagingVO pageVO) {
		return sqlSessionTemplate.selectList("classDAO.getAllClassList", pageVO);
	}

	public int getClassCountForRegion(String region) {
		return sqlSessionTemplate.selectOne("classDAO.getClassCountForRegion", region);
	}

	public List<ClassVO> getClassListForRegion(PagingVO pageVO) {
		return sqlSessionTemplate.selectList("classDAO.getClassListForRegion",pageVO);
	}

	public List<ClassVO> getClassContentAtUser(String class_open_class_code) {
		return sqlSessionTemplate.selectList("classDAO.getClassContentAtUser", class_open_class_code);
	}

	public List<ClassVO> getClassListForClassDetail(int seller_code) {
		List<ClassVO> classList = sqlSessionTemplate.selectList("classDAO.getClassListForClassDetail",seller_code);
		return classList;
	}

	public List<UserVO> getUserInfoForClassReg(String email) {
		return sqlSessionTemplate.selectList("UserDAO.getUserInfoForClassReg", email);
	}

	public List<ClassVO> getNearbyList(String area) {
		String param = area;
		List<ClassVO> classList = sqlSessionTemplate.selectList("classDAO.getNearbyList", param);
		
		if(classList.size()<1) {
			param="종로";
			classList = sqlSessionTemplate.selectList("classDAO.getNearbyList", param);
		}
		
		return classList;
	}

	public List<ClassVO> getNewClassList() {
		return sqlSessionTemplate.selectList("classDAO.getNewClassList");
	}

	public String getStoreNameforOrder(String class_order_code) {
		return sqlSessionTemplate.selectOne("SellerCheckDAO.getStoreNameforOrder", class_order_code);
	}

	public void insertClassOrder(ClassOrderVO class_order) {
		sqlSessionTemplate.insert("classDAO.insertClassOrder", class_order);
	}

	public void paymentClassCancel(String marchant_uid) {
		sqlSessionTemplate.delete("classDAO.paymentClassCancel", marchant_uid);
		
	}

	public int countClassForSearch(String search) {
		return sqlSessionTemplate.selectOne("classDAO.countClassForSearch", search);
	}

	public List<ClassVO> getClassListForSearch(PagingVO classPageVO) {
		return sqlSessionTemplate.selectList("classDAO.getClassListForSearch", classPageVO);
	}

	public List<ClassOrderVO> getClassReturnList(String email) {
		return sqlSessionTemplate.selectList("classDAO.getClassReturnList", email);
	}
}
