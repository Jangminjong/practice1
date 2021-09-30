package com.idwith.mpweb.user;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserCategoryDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<Map<String, String>> getStoryList() {
		List<Map<String, String>> storyList = sqlSessionTemplate.selectList("userCategoryDAO.getStoryList");
		
		System.out.println("결과 값 : " + storyList);
		
		return storyList;
	}
}
