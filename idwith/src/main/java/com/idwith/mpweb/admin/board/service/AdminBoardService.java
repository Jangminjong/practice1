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
	
	// 공지글 조회
	int countNotice();
	
	List<AdminQnABoardVO> getQnAList(PagingVO pageVO);
	
	void updateFAQ(AdminQnABoardVO adminQnA);
	
	void deleteFAQ(AdminQnABoardVO adminQnA);
	
	void insertFAQ(AdminQnABoardVO adminQnA);
	
}
