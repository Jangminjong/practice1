package com.idwith.mpweb.user.board.service;

import java.util.List;

import com.idwith.mpweb.user.board.PagingVO;
import com.idwith.mpweb.user.board.QnABoardVO;

public interface BoardService {
	void insertQnA(QnABoardVO qnaVO);
	
	List<QnABoardVO> getQnAList();
	
	QnABoardVO getQnA(QnABoardVO qnaVO);
	
	void updateQnA(QnABoardVO qnaVO);
	
	Integer qnaRightCheck(QnABoardVO qnaVO);
	
	void deleteQnA(QnABoardVO qnaVO);
	
	int countQnA();
	
	int countNotice();
	
	List<QnABoardVO> selectQnA(PagingVO pageVO);
}
