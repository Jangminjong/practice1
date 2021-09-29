package com.idwith.mpweb.admin.service;

import java.util.List;

import com.idwith.mpweb.admin.UserListVO;
import com.idwith.mpweb.common.PagingVO;

public interface UserListService {
	
	//페이징처리 개수
	int countUserList();
	
	// 사용자 목록 조회
	List<UserListVO> getUserList(PagingVO pagination);
	
	// block 처리
	int blockUpdate(String userId);

	// 복원 처리
	int blockCancel(String userId);
	
}
