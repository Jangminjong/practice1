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
		boolean check = sqlSessionTemplate.selectOne("UserDAO.idCheck", user_id);
		UserVO result = null;
		
		if(check == true) {
			 result = (UserVO) sqlSessionTemplate.selectOne("UserDAO.selectLogin", user_id);
		}
		
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

	public int changeChoice(ChoiceVO choice) {
		int count = 0;
		if(!choice.isChoice_true()) {
			count=sqlSessionTemplate.selectOne("ChoiceDAO.selectChoice", choice);
			if(count == 0) {
				sqlSessionTemplate.insert("ChoiceDAO.addChoice", choice);
			}else {
				sqlSessionTemplate.update("ChoiceDAO.updateChoice",choice);
			}
			return 1;
		}else {
			sqlSessionTemplate.update("ChoiceDAO.cancelChoice", choice);
			return 0;
		}
	}

	public List<ChoiceVO> setChoice(String email) {
		return sqlSessionTemplate.selectList("ChoiceDAO.setChoice",email);
	}

	public List<FollowVO> setFollow(String email) {
		return sqlSessionTemplate.selectList("ChoiceDAO.setFollow",email);
	}

	public int changeFollow(FollowVO follow) {
		int count = 0;
		if(!follow.isFollow_true()) {
			count=sqlSessionTemplate.selectOne("ChoiceDAO.selectFollow", follow);
			if(count == 0) {
				sqlSessionTemplate.insert("ChoiceDAO.addFollow", follow);
			}
			return 1;
		}else {
			sqlSessionTemplate.delete("ChoiceDAO.deleteFollow", follow);
			return 0;
		}

	}

	public UserVO getOrderUser(String user_id) {
		return sqlSessionTemplate.selectOne("UserDAO.getOrderUser", user_id);
	}

	public UserVO loginUser(String email) {
		return sqlSessionTemplate.selectOne("UserDAO.getLoginUser", email);
	}
}
