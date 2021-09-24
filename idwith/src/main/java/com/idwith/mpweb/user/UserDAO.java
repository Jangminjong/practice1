package com.idwith.mpweb.user;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("userDAO")
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

	public UserVO getUser(String user_id) {
		System.out.println("DAO getUser() 角青");
		UserVO result = (UserVO) sqlSessionTemplate.selectOne("UserDAO.selectLogin", user_id);
		return result;
	}
	
	public void insertKakao(UserVO vo) {
		System.out.println("DAO kakaoLogin() 角青");
		sqlSessionTemplate.insert("UserDAO.insertKakao", vo);
	}

	public void updateUser(UserVO vo) {
		System.out.println("DAO updateUser() 角青");
	}

	public void deleteUser(UserVO vo) {
		System.out.println("DAO deleteUser() 角青");
	}
}
