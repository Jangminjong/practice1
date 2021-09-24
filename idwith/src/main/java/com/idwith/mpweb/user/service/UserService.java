package com.idwith.mpweb.user.service;

import java.util.List;
import java.util.Map;

import com.idwith.mpweb.user.UserVO;

public interface UserService {
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
}
