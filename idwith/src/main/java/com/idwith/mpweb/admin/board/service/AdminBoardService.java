package com.idwith.mpweb.admin.board.service;

import java.util.List;

import com.idwith.mpweb.admin.board.AdminQnABoardVO;
import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.user.board.QnABoardVO;

public interface AdminBoardService {
	int countQnA();
	
	List<AdminQnABoardVO> selectQnA(PagingVO pageVO);
	
	AdminQnABoardVO getQnA(AdminQnABoardVO adminQnA);
	
	void updateAnswer(AdminQnABoardVO adminQnA);
	
}
