package com.idwith.mpweb.user;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.idwith.mpweb.common.PagingVO;

@Repository
public class UserCategoryDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public int countStory() {
		return sqlSessionTemplate.selectOne("userCategoryDAO.countStory");
	}
	
	public List<SellerStoryVO> getStoryList(PagingVO pageVO) {
		List<SellerStoryVO>  storyList = sqlSessionTemplate.selectList("userCategoryDAO.getStoryList", pageVO);
		return storyList;
	}
}
