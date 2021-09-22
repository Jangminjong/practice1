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
	
	// ������ ��ȸ
	int countNotice();
	
	List<AdminQnABoardVO> getQnAList(PagingVO pageVO);
	
	void updateNotice(AdminQnABoardVO adminQnA);
	
	void deleteNotice(AdminQnABoardVO adminQnA);
	
	void userInsertNotice(AdminQnABoardVO adminQnA);
	
}
