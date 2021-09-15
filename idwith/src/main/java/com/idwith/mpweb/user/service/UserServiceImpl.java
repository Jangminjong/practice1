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
		System.out.println("Service : ȸ������ ó��");
		
		BCryptPasswordEncoder scpwd = new BCryptPasswordEncoder();
        System.out.println(vo.toString());
        //��ȣȭ �ϱ���
        String password = scpwd.encode(vo.getPassword());
        //��ȣȭ �Ͽ� password�� ����
        vo.setPassword(password);
        System.out.println(vo.toString());
        
		dao.insertUser(vo);
	}

	@Override
	public UserVO getUser(String id) {
		return dao.getUser(id);
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

}
