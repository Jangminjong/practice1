package com.idwith.mpweb.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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

	@Override
	public UserListVO getUserContent(UserListVO userList) {
		System.out.println("사용자 상세보기 처리 service");
		return userListDAO.getUserContent(userList);
	}

	@Override
	@Transactional
	public int getSearchUserCnt(String searchKeyword) {
		return userListDAO.getSearchCnt(searchKeyword);
	}

	@Override
	public List<UserListVO> getSearchUser(PagingVO pagination) {
		return userListDAO.getSearchPagingList(pagination);
	}


}
