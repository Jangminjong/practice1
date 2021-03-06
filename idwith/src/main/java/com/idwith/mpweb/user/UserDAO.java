package com.idwith.mpweb.user;

import java.util.List;
import java.util.Map;

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
	
	public void insertAddress(UserVO vo) {
		sqlSessionTemplate.insert("UserDAO.insertAddress", vo);
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
	
	public int userCheck(String user_phone) {
		int result = 0;
		boolean dbResult = sqlSessionTemplate.selectOne("UserDAO.userCheck", user_phone);
		
		if(dbResult == true) {
			result = 1;
		}
		return result;
	}
	
	public List<Map<String, String>> getUserList(String user_phone){
		List<Map<String, String>> userList = sqlSessionTemplate.selectList("UserDAO.getUserList", user_phone);
		return userList;
	}
	
	public List<Map<String, String>> getUserNameList(String user_id){
		List<Map<String, String>> userList = sqlSessionTemplate.selectList("UserDAO.getUserNameList", user_id);
		System.out.println("搬苞 蔼 : " + userList);
		return userList;
	}
	
	public List<Map<String, String>> getUserInfo(String user_name){
		List<Map<String, String>> userInfo = sqlSessionTemplate.selectList("UserDAO.getUserInfo", user_name);
		System.out.println("搬苞 蔼 : " +userInfo);
		return userInfo;
	}
}
