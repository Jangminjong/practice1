package com.idwith.mpweb.user.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.user.SellerStoryVO;
import com.idwith.mpweb.user.UserCategoryDAO;

@Service
public class UserCategoryServiceImpl implements UserCategoryService {
	@Autowired
	private UserCategoryDAO dao;
	
	@Override
	public int countStory() {
		return dao.countStory();
	}
	
	@Override
	public List<SellerStoryVO> getStoryList(PagingVO pageVO) {
		return dao.getStoryList(pageVO);
	}
}
