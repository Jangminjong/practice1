package com.idwith.mpweb.user.board.service;

import java.util.List;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.user.board.EventBoardVO;
import com.idwith.mpweb.user.board.QnABoardVO;

public interface UserBoardService {
	
	//1:1 문의 게시판 ----------------------------------
	void insertQnA(QnABoardVO qnaVO);
	
	List<QnABoardVO> getQnAList();
	
	QnABoardVO getQnA(QnABoardVO qnaVO);
	
	void updateQnA(QnABoardVO qnaVO);
	
	Integer qnaRightCheck(QnABoardVO qnaVO);
	
	void deleteQnA(QnABoardVO qnaVO);
	
	int countQnA();
	
	int countNotice();
	
	List<QnABoardVO> selectQnA(PagingVO pageVO);
	
	void addHit(QnABoardVO qnaVO);
	
	// 이벤트, 공지사항 게시판 -----------------------------
	
	int countEventNotice();
	
	List<EventBoardVO> getEventNoticeList(PagingVO pageVO);
	
	void addCnt(EventBoardVO eventVO);
	
	EventBoardVO getEventNotice(EventBoardVO eventVO);
	
	
}
