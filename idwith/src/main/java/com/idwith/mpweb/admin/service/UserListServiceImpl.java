package com.idwith.mpweb.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.admin.UserListDAO;
import com.idwith.mpweb.admin.UserListVO;
import com.idwith.mpweb.common.PagingVO;

@Service("userListService")
public class UserListServiceImpl implements UserListService {
	
	@Autowired
	private UserListDAO userListDAO;

	@Override
	public int countUserList() {
		return userListDAO.countUserList();
	}

	@Override
	public List<UserListVO> getUserList(PagingVO pagination) {
		return userListDAO.getUserList(pagination);
	}

	@Override
	public int blockUpdate(String userId) {
		return userListDAO.blockStatusUpdate(userId);
	}

	@Override
	public int blockCancel(String userId) {
		return userListDAO.blockCancelUpdate(userId);
	}

}
