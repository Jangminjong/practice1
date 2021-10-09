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

	public UserVO getUserInfoForClassReg(String email) {
		return sqlSessionTemplate.selectOne("UserDAO.getUserInfoForClassReg", email);
	}
}
