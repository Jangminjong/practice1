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
        System.out.println("암호화 전 : " + vo.getUser_pwd());
        //암호화 하기전
        String password = scpwd.encode(vo.getUser_pwd());
        //암호화 하여 password에 저장
        vo.setUser_pwd(password);
        System.out.println("암호화 후 : " + vo.getUser_pwd());
        
		dao.insertUser(vo);
	}

	
	@Override
	public int getUser(UserVO vo) {
		int result = 0;
		System.out.println("Service : 로그인 처리");
		
		String email = vo.getUser_id();
		String password = vo.getUser_pwd();
		
		UserVO dbResult = dao.getUser(email);
		String dbEmail = dbResult.getUser_id();
		String dbPassword = dbResult.getUser_pwd();
		
		BCryptPasswordEncoder scpwd = new BCryptPasswordEncoder();
		boolean match = scpwd.matches(password, dbPassword);
		System.out.println("암호화 비교 : " + match);
		if(email.equals(dbEmail) && match) {
			System.out.println("서비스 로그인 성공");
			result = 1;
		}
		
		return result;
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
