package com.idwith.mpweb.user.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.user.MyPageDAO;

@Service
public class MyPageServiceImpl implements MypageService {
	@Autowired
	private MyPageDAO dao;
	
	@Override
	public List<Map<String, String>> getUser(String user_id) {
		return dao.getUser(user_id);
	}
}
