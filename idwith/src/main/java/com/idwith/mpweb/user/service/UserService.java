package com.idwith.mpweb.user.service;

import com.idwith.mpweb.user.UserVO;

public interface UserService {
	void insertUser(UserVO vo);
	
	UserVO getUser(String email);
	
	void updateUser(UserVO vo);
	
	void deleteUser(UserVO vo);
	
	Integer emailCheck(String email);
}
