package com.idwith.mpweb.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.user.UserDAO;
import com.idwith.mpweb.user.UserVO;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO dao;

	@Override
	public void insertUser(UserVO vo) {
		System.out.println("Service : 회원가입 처리");
		
		BCryptPasswordEncoder scpwd = new BCryptPasswordEncoder();
        System.out.println(vo.toString());
        //암호화 하기전
        String password = scpwd.encode(vo.getUser_pwd());
        //암호화 하여 password에 저장
        vo.setUser_pwd(password);
        System.out.println(vo.toString());
        
		dao.insertUser(vo);
	}

	@Override
	public UserVO getUser(UserVO vo) {
		System.out.println("Service : 로그인 처리");
		dao.getUser(vo);
		
		return vo;
	}
	
	@Override
	public void updateUser(UserVO vo) {
		dao.updateUser(vo);
	}

	@Override
	public void deleteUser(UserVO vo) {
		dao.deleteUser(vo);
	}
	
	@Override
	public Integer emailCheck(String email){
		int result = dao.emailCheck(email);
		return result;
	}
	
	@Override
	public Integer cellPhoneCheck(String cell_phone) {
		int result = dao.cellPhoneCheck(cell_phone);
		return result;
	}

}
