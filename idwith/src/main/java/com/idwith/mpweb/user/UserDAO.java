package com.idwith.mpweb.user;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAO {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public void insertUser(UserVO vo) {
		System.out.println("DAO insertUser() ����");
		sqlSessionTemplate.insert("UserDAO.insertUser", vo);
	}

	public UserVO getUser(String id) {
		UserVO vo = new UserVO();
		System.out.println("DAO getUser() ����");
		return vo; //�ӽ�
	}

	public void updateUser(UserVO vo) {
		System.out.println("DAO updateUser() ����");
	}

	public void deleteUser(UserVO vo) {
		System.out.println("DAO deleteUser() ����");
	}
}
