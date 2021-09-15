package com.idwith.mpweb.user;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAO {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public void insertUser(UserVO vo) {
		System.out.println("DAO insertUser() 실행");
		sqlSessionTemplate.insert("UserDAO.insertUser", vo);
	}
	
	public int emailCheck(String email) {
		System.out.println("DAO emailCheck() 실행");
		int result = sqlSessionTemplate.selectOne("UserDAO.selectEmail", email);
		return result;
	}
	
	public int cellPhoneCheck(String cell_phone) {
		System.out.println("DAO cell_phone() 실행");
		int result = sqlSessionTemplate.selectOne("UserDAO.selectCellPhone", cell_phone);
		return result;
	}

	public UserVO getUser(String id) {
		UserVO vo = new UserVO();
		System.out.println("DAO getUser() 실행");
		return vo; //임시
	}

	public void updateUser(UserVO vo) {
		System.out.println("DAO updateUser() 실행");
	}

	public void deleteUser(UserVO vo) {
		System.out.println("DAO deleteUser() 실행");
	}
}
