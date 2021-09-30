package com.idwith.mpweb.user.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.user.UserCategoryDAO;

@Service
public class UserCategoryServiceImpl implements UserCategoryService {
	@Autowired
	private UserCategoryDAO dao;
	
	@Override
	public List<Map<String, String>> getStoryList() {
		return dao.getStoryList();
	}
}
