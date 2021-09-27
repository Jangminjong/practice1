package com.idwith.mpweb.user.board;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.idwith.mpweb.common.PagingVO;

@Repository("boardDAO")
public class UserBoardDAO {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	// 1대1 문의 ----------------------------------------------------------------
	public void insertQnA(QnABoardVO qnaVO) {
		System.out.println("DAO insertQnA() ����");
		sqlSessionTemplate.insert("BoardDAO.insertQnA", qnaVO);
	}
	
	
	public List<QnABoardVO> getQnAList(){
		System.out.println("DAO getQnAList() ����");
		return sqlSessionTemplate.selectList("BoardDAO.getQnAList");
	}
	
	public QnABoardVO getQnA(QnABoardVO qnaVO) {
		System.out.println("DAO getQnA() ����");
		return (QnABoardVO) sqlSessionTemplate.selectOne("BoardDAO.getQnA", qnaVO);
	}
	
	public void updateQnA(QnABoardVO qnaVO) {
		System.out.println("DAO updateQnA() ����");
		sqlSessionTemplate.update("BoardDAO.updateQnA", qnaVO);
	}
	
	public Integer qnaRightCheck(QnABoardVO qnaVO) {
		System.out.println("DAO qnaRightCheck() ����");
		return sqlSessionTemplate.selectOne("BoardDAO.rightCheck", qnaVO);
	}
	
	public void deleteQnA(QnABoardVO qnaVO) {
		System.out.println("DAO deleteQnA() ����");
		sqlSessionTemplate.delete("BoardDAO.deleteQnA", qnaVO);
	}
	
	
	public int countQnA() {
		System.out.println("DAO countQnA() ����");
		return sqlSessionTemplate.selectOne("BoardDAO.countQnA");
	}
	
	public int countNotice() {
		System.out.println("DAO countNotice() ����");
		return sqlSessionTemplate.selectOne("BoardDAO.countNotice");
	}
	
	public List<QnABoardVO> selectQnA(PagingVO pageVO){
		System.out.println("DAO selectQnA() ����");
		return sqlSessionTemplate.selectList("BoardDAO.selectQnA", pageVO);
	}
	
	public void addHit(QnABoardVO qnaVO) {
		sqlSessionTemplate.update("BoardDAO.addHit", qnaVO);
	}
	
	// 공지사항 -----------------------------------------------------------
	
	public int countEventNotice() {
		return sqlSessionTemplate.selectOne("BoardDAO.countEventNotice");
	}
	
	public List<EventBoardVO> getEventNoticeList(PagingVO pageVO){
		return sqlSessionTemplate.selectList("BoardDAO.getEventNoticeList", pageVO);
	}
	
	public void addCnt(EventBoardVO eventVO) {
		sqlSessionTemplate.update("BoardDAO.addCnt", eventVO);
	}
	
	public EventBoardVO getEventNotice(EventBoardVO eventVO) {
		return sqlSessionTemplate.selectOne("BoardDAO.getEventNotice", eventVO);
	}
	
	// 메시지--------------------------------------------------------------------------
	
	public List<UserMessageVO> getMessageList(String email){
		return sqlSessionTemplate.selectList("BoardDAO.getMessageList", email);
	}
	
	public List<UserMessageVO> getMsgContextList(UserMessageVO msgVO){
		return sqlSessionTemplate.selectList("BoardDAO.getMsgContextList", msgVO);
	}
	
	public void insertMessage(UserMessageVO msgVO) {
		sqlSessionTemplate.insert("BoardDAO.insertMessage", msgVO);
	}
	
	public void updateReadState(String msg_id) {
		sqlSessionTemplate.update("BoardDAO.updateReadState", msg_id);
	}
	
	public void updateNewState(UserMessageVO msgVO) {
		sqlSessionTemplate.update("BoardDAO.updateNewState", msgVO);
	}
}
