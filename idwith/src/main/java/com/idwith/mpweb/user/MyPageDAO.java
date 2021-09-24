package com.idwith.mpweb.user;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MyPageDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<Map<String, String>> getUser(String user_id){
		
		List<Map<String, String>> user = sqlSessionTemplate.selectList("MyPageDAO.getUser", user_id);
		//System.out.println("°á°ú °ª : " + );
		return user;
	}
}
