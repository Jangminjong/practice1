package com.idwith.mpweb.user.board.service;

import java.util.List;

import com.idwith.mpweb.admin.SellerVO;
import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.user.board.EventBoardVO;
import com.idwith.mpweb.user.board.QnABoardVO;
import com.idwith.mpweb.user.board.UserMessageVO;

public interface UserBoardService {
	
	//1:1문의 ----------------------------------
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
	
	// 공지사항 -----------------------------
	
	int countEventNotice();
	
	List<EventBoardVO> getEventNoticeList(PagingVO pageVO);
	
	void addCnt(EventBoardVO eventVO);
	
	EventBoardVO getEventNotice(EventBoardVO eventVO);
	
	// 메시지 ----------------------------------------------
	
	List<UserMessageVO> getMessageList(String email);
	
	List<UserMessageVO> getMsgContextList(UserMessageVO msgVO);
	
	void insertMessage(UserMessageVO msgVO);
	
	void updateReadState(String msg_id);
	
	void updateNewState(UserMessageVO msgVO);
	
	// 알림 --------------------------------------------------
	
	EventBoardVO getNewEvent();
	
	List<EventBoardVO> getEventList();
	
	String dueDateCheck(String seq);

	List<SellerVO> getFollowSellerList(String email);
}
