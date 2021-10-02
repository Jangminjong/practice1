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
		System.out.println("DAO getWatingClient ����");
		List<Map<String, String>> watingList = sqlSessionTemplate.selectList("ProposeDAO.getWatingList");
		System.out.println("리스트 대기자 DB 결과 값 : " + watingList);
		return watingList;
	}
	
	//���� ����
	public int updateAgree(String user_id) {
		System.out.println("DAO updateAgree ����");
		System.out.println("DAO user_id : " + user_id);
		int result = sqlSessionTemplate.update("ProposeDAO.updateAgree", user_id);
		return result;
	}

	//���� ����
	public int updateDisagree(String user_id) {
		System.out.println("DAO updateAgree ����");
		System.out.println("DAO user_id : " + user_id);
		int result = sqlSessionTemplate.update("ProposeDAO.updateDisagree", user_id);
		return result;
	}
}
