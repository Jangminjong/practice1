package com.idwith.mpweb.user.service;

import com.idwith.mpweb.user.UserVO;

public interface UserService {
	void insertUser(UserVO vo);
	
	UserVO getUser(UserVO vo);
	
	void updateUser(UserVO vo);
	
	void deleteUser(UserVO vo);
	
	Integer emailCheck(String email);
	
	Integer cellPhoneCheck(String cell_phone);
}
