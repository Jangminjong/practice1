package com.idwith.mpweb.user.service;

import java.util.List;
import java.util.Map;


import com.idwith.mpweb.user.UserAddressVO;

import com.idwith.mpweb.user.ChoiceVO;
import com.idwith.mpweb.user.FollowVO;

import com.idwith.mpweb.user.UserVO;

public interface UserService {
	//ȸ������
	void insertUser(UserVO vo);

	int getUser(UserVO vo);

	void updateUser(UserVO vo);

	void deleteUser(UserVO vo);

	Integer emailCheck(String email);

	Integer cellPhoneCheck(String cell_phone);

	String kakaoLogin(UserVO vo);

	String naverLogin(UserVO vo);

	Integer userCheck(String user_phone);

	List<Map<String, String>> getUserList(String user_phone);

	List<Map<String, String>> getUserNameList(String user_id);

	List<Map<String, String>> getUserInfo(String user_name);

	void insertAddress(UserAddressVO userAddressVO);

	int changeChoice(ChoiceVO choice);

	List<ChoiceVO> setChoice(String email);

	List<FollowVO> setFollow(String email);

	int changeFollow(FollowVO follow);

	//결제 페이지 : 주문자 정보 가져오기
	UserVO getOrderUser(String user_id);

	UserVO loginUser(String email);

}
