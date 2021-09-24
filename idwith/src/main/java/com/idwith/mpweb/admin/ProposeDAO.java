package com.idwith.mpweb.admin;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProposeDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public List<Map<String, String>> getWatingClient(){
		System.out.println("DAO getWatingClient 실행");
		List<Map<String, String>> watingList = sqlSessionTemplate.selectList("ProposeDAO.getWatingList");
		System.out.println("가져온 값 : " + watingList);
		return watingList;
	}
	
	//입점 승인
	public int updateAgree(String user_id) {
		System.out.println("DAO updateAgree 실행");
		System.out.println("DAO user_id : " + user_id);
		int result = sqlSessionTemplate.update("ProposeDAO.updateAgree", user_id);
		return result;
	}

	//입점 거절
	public int updateDisagree(String user_id) {
		System.out.println("DAO updateAgree 실행");
		System.out.println("DAO user_id : " + user_id);
		int result = sqlSessionTemplate.update("ProposeDAO.updateDisagree", user_id);
		return result;
	}
}
