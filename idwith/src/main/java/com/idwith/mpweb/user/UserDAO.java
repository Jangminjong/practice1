package com.idwith.mpweb.user;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAO {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public void insertUser(UserVO vo) {
		System.out.println("DAO insertUser() 角青");
		sqlSessionTemplate.insert("UserDAO.insertUser", vo);
	}
	
	public int emailCheck(String email) {
		System.out.println("DAO emailCheck() 角青");
		int result = sqlSessionTemplate.selectOne("UserDAO.selectEmail", email);
		return result;
	}
	
	public int cellPhoneCheck(String cell_phone) {
		System.out.println("DAO cell_phone() 角青");
		int result = sqlSessionTemplate.selectOne("UserDAO.selectCellPhone", cell_phone);
		return result;
	}

	public UserVO getUser(UserVO vo) {
		System.out.println("DAO getUser() 角青");
		
		UserVO result = sqlSessionTemplate.selectOne("UserDAO.selectLogin", vo);
		System.out.println("角青 : " + result.getUser_id());
		System.out.println("角青 : " + result.getUser_pwd());
		
		return vo;
	}

	public void updateUser(UserVO vo) {
		System.out.println("DAO updateUser() 角青");
	}

	public void deleteUser(UserVO vo) {
		System.out.println("DAO deleteUser() 角青");
	}
}
