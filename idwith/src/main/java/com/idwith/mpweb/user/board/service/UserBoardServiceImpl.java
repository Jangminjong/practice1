package com.idwith.mpweb.user.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.user.board.UserBoardDAO;
import com.idwith.mpweb.user.board.EventBoardVO;
import com.idwith.mpweb.user.board.QnABoardVO;

@Service("userBoardService")
public class UserBoardServiceImpl implements UserBoardService {
	@Autowired
	private UserBoardDAO boardDAO;
	
	// 1:1 ���� �Խ���----------------------------------------------------

	@Override
	public void insertQnA(QnABoardVO qnaVO) {
		System.out.println("id: "+ qnaVO.getUser_id());
		System.out.println("category: "+qnaVO.getBoard_category());
		System.out.println("title: "+qnaVO.getBoard_title());
		System.out.println("content: "+qnaVO.getBoard_content());
		System.out.println("fix: "+qnaVO.isBoard_fix());
		boardDAO.insertQnA(qnaVO);
	}

	@Override
	public List<QnABoardVO> getQnAList() {
		return boardDAO.getQnAList();
	}

	@Override
	public QnABoardVO getQnA(QnABoardVO qnaVO) {
		System.out.println("id: "+ qnaVO.getUser_id());
		System.out.println("category: "+qnaVO.getBoard_category());
		System.out.println("title: "+qnaVO.getBoard_title());
		System.out.println("content: "+qnaVO.getBoard_content());
		System.out.println("fix: "+qnaVO.isBoard_fix());
		System.out.println("num: "+qnaVO.getSeq());
		return boardDAO.getQnA(qnaVO);
	}

	@Override
	public void updateQnA(QnABoardVO qnaVO) {
		System.out.println("num: "+qnaVO.getSeq());
		System.out.println("id: "+ qnaVO.getUser_id());
		System.out.println("content: "+qnaVO.getBoard_content());
		boardDAO.updateQnA(qnaVO);
	}

	@Override
	public Integer qnaRightCheck(QnABoardVO qnaVO) {
		System.out.println("BoardServiceImpl() ����, email: "+qnaVO.getUser_id()+", seq: "+qnaVO.getSeq());
		return boardDAO.qnaRightCheck(qnaVO);
	}

	@Override
	public void deleteQnA(QnABoardVO qnaVO) {
		System.err.println("seq:"+ qnaVO.getSeq());
		boardDAO.deleteQnA(qnaVO);
	}
	
	// ����¡ ó��
	@Override
	public int countQnA() {
		return boardDAO.countQnA(); // �� �Խñ� ��
	}
	
	// ����¡ ó�� �Խñ� ��ȸ
	@Override
	public List<QnABoardVO> selectQnA(PagingVO pageVO) {
		return boardDAO.selectQnA(pageVO);
	}
	
	// ������ ��
	@Override
	public int countNotice() {
		return boardDAO.countNotice();
	}

	@Override
	public void addHit(QnABoardVO qnaVO) {
		boardDAO.addHit(qnaVO);
		
	}
	
	// �̺�Ʈ, ���� �Խ��� --------------------------------------------------------

	@Override
	public int countEventNotice() {
		return boardDAO.countEventNotice();
	}

	@Override
	public List<EventBoardVO> getEventNoticeList(PagingVO pageVO) {
		return boardDAO.getEventNoticeList(pageVO);
	}

	@Override
	public void addCnt(EventBoardVO eventVO) {
		boardDAO.addCnt(eventVO);
	}

	@Override
	public EventBoardVO getEventNotice(EventBoardVO eventVO) {
		return boardDAO.getEventNotice(eventVO);
	}
	
	
}