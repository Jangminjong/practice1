package com.idwith.mpweb.admin.board;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.idwith.mpweb.common.PagingVO;

@Repository("adminBoardDAO")
public class AdminQnABoardDAO {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	// ����¡ ó��
	public int countQnA() {
		return sqlSessionTemplate.selectOne("AdminQnABoardDAO.countQnA");
	}

	public List<AdminQnABoardVO> selectQnA(PagingVO pageVO) {
		if(pageVO.getSet().equals("구분")) {
			return sqlSessionTemplate.selectList("AdminQnABoardDAO.selectQnA", pageVO);
		} else {
			return sqlSessionTemplate.selectList("AdminQnABoardDAO.selectQnAWithCategory", pageVO);
		}
	}
	
	public AdminQnABoardVO getQnA(AdminQnABoardVO adminQnA) {
		return (AdminQnABoardVO) sqlSessionTemplate.selectOne("AdminQnABoardDAO.getQnA", adminQnA);
	}
	
	public void updateAnswer(AdminQnABoardVO adminQnA) {
		sqlSessionTemplate.update("AdminQnABoardDAO.updateAnswer", adminQnA);
	}
	
	public List<AdminQnABoardVO> getQnAList(PagingVO pageVO){
		return sqlSessionTemplate.selectList("AdminQnABoardDAO.getQnAList", pageVO);
	}
	
	public int countNotice() {
		return sqlSessionTemplate.selectOne("AdminQnABoardDAO.countNotice");
	}
	
	public void updateFAQ(AdminQnABoardVO adminQnA) {
		sqlSessionTemplate.update("AdminQnABoardDAO.updateFAQ", adminQnA);
	}
	
	public void deleteFAQ(AdminQnABoardVO adminQnA) {
		sqlSessionTemplate.delete("AdminQnABoardDAO.deleteFAQ", adminQnA);
	}
	
	public void insertFAQ(AdminQnABoardVO adminQnA) {
		sqlSessionTemplate.insert("AdminQnABoardDAO.insertFAQ", adminQnA);
	}
	
	// ����� �������� --------------------------------------------------------------------------------
	
	public void userInsertNotice(AdminEventBoardVO adminEventVO) {
		sqlSessionTemplate.insert("AdminEventBoardDAO.insertEvent", adminEventVO);
	}
	
	public int countEventNotice() {
		return sqlSessionTemplate.selectOne("AdminEventBoardDAO.countEventNotice");
	}
	
	public List<AdminEventBoardVO> getEventNoticeList(PagingVO pageVO){
		if(pageVO.getSet().equals("����")) {
			return sqlSessionTemplate.selectList("AdminEventBoardDAO.getEventNoticeList", pageVO);
		}else {
			return sqlSessionTemplate.selectList("AdminEventBoardDAO.getEventNoticeListWithCategory", pageVO);
		}
	}
	
	public AdminEventBoardVO getEventNotice(AdminEventBoardVO adminEventVO) {
		return sqlSessionTemplate.selectOne("AdminEventBoardDAO.getEventNotice", adminEventVO);
	}
	
	public void updateEventNotice(AdminEventBoardVO adminEventVO) {
		sqlSessionTemplate.update("AdminEventBoardDAO.updateEventNotice", adminEventVO);
	}
	
	public void deleteEventNotice(AdminEventBoardVO adminEventVO) {
		sqlSessionTemplate.update("AdminEventBoardDAO.deleteEventNotice", adminEventVO);
	}
}
