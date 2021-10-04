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
		System.out.println("DAO insertUser() ����");
		sqlSessionTemplate.insert("UserDAO.insertUser", vo);
	}
	
	public void insertAddress(UserAddressVO vo) {
		sqlSessionTemplate.insert("UserDAO.insertAddressOne", vo);//배송지 1에 저장
		
		for(int i=2; i<=3; i++) {//배송지 2, 3에 저장
			UserAddressVO addressVO = new UserAddressVO();
			addressVO.setUser_id(vo.getUser_id());
			addressVO.setUser_order(i);
			sqlSessionTemplate.insert("UserDAO.insertAddress", addressVO);
		}
	}
	
	public int emailCheck(String email) {
		System.out.println("DAO emailCheck() ����");
		int result = sqlSessionTemplate.selectOne("UserDAO.selectEmail", email);
		return result;
	}
	
	public int cellPhoneCheck(String cell_phone) {
		System.out.println("DAO cell_phone() ����");
		int result = sqlSessionTemplate.selectOne("UserDAO.selectCellPhone", cell_phone);
		return result;
	}

	public UserVO getUser(String user_id) {
		System.out.println("DAO getUser() ����");
		UserVO result = (UserVO) sqlSessionTemplate.selectOne("UserDAO.selectLogin", user_id);
		return result;
	}
	
	public void insertKakao(UserVO vo) {
		System.out.println("DAO kakaoLogin() ����");
		sqlSessionTemplate.insert("UserDAO.insertKakao", vo);
	}

	public void updateUser(UserVO vo) {
		System.out.println("DAO updateUser() ����");
	}

	public void deleteUser(UserVO vo) {
		System.out.println("DAO deleteUser() ����");
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
		System.out.println("��� �� : " + userList);
		return userList;
	}
	
	public List<Map<String, String>> getUserInfo(String user_name){
		List<Map<String, String>> userInfo = sqlSessionTemplate.selectList("UserDAO.getUserInfo", user_name);
		System.out.println("��� �� : " +userInfo);
		return userInfo;
	}
}
