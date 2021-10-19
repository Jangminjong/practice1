package com.idwith.mpweb.user.board;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.idwith.mpweb.admin.SellerVO;
import com.idwith.mpweb.common.PagingVO;

@Repository("boardDAO")
public class UserBoardDAO {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	// 1대1 문의 ----------------------------------------------------------------
	public void insertQnA(QnABoardVO qnaVO) {
	
		sqlSessionTemplate.insert("BoardDAO.insertQnA", qnaVO);
	}
	
	
	public List<QnABoardVO> getQnAList(){
		
		return sqlSessionTemplate.selectList("BoardDAO.getQnAList");
	}
	
	public QnABoardVO getQnA(QnABoardVO qnaVO) {
		
		return (QnABoardVO) sqlSessionTemplate.selectOne("BoardDAO.getQnA", qnaVO);
	}
	
	public void updateQnA(QnABoardVO qnaVO) {
		
		sqlSessionTemplate.update("BoardDAO.updateQnA", qnaVO);
	}
	
	public Integer qnaRightCheck(QnABoardVO qnaVO) {
		
		return sqlSessionTemplate.selectOne("BoardDAO.rightCheck", qnaVO);
	}
	
	public void deleteQnA(QnABoardVO qnaVO) {
		
		sqlSessionTemplate.delete("BoardDAO.deleteQnA", qnaVO);
	}
	
	
	public int countQnA() {
		
		return sqlSessionTemplate.selectOne("BoardDAO.countQnA");
	}
	
	public int countNotice() {
		
		return sqlSessionTemplate.selectOne("BoardDAO.countNotice");
	}
	
	public List<QnABoardVO> selectQnA(PagingVO pageVO){
		
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
	
	public List<SellerVO> getFollowSellerList(String email) {
		return sqlSessionTemplate.selectList("ChoiceDAO.getFollowSellerList", email);
	}
	
	// 알림 -------------------------------------------------------------------------
	
	public EventBoardVO getNewEvent() {
		return sqlSessionTemplate.selectOne("BoardDAO.getNewEvent");
	}
	
	public List<EventBoardVO> getEventList(){
		return sqlSessionTemplate.selectList("BoardDAO.getEventList");
	}
	
	public String dueDateCheck(String seq) {
		int result = sqlSessionTemplate.selectOne("BoardDAO.dueDateCheck", Integer.parseInt(seq));
		if(result>0) {
			return "0";
		}else {
			return "1";
		}
	}


}
