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
		System.out.println("DAO countQnA() ����");
		return sqlSessionTemplate.selectOne("AdminQnABoardDAO.countQnA");
	}

	public List<AdminQnABoardVO> selectQnA(PagingVO pageVO) {
		System.out.println("DAO selectQnA() ����");
		if(pageVO.getSet().equals("����")) {
			return sqlSessionTemplate.selectList("AdminQnABoardDAO.selectQnA", pageVO);
		} else {
			return sqlSessionTemplate.selectList("AdminQnABoardDAO.selectQnAWithCategory", pageVO);
		}
	}
	
	public AdminQnABoardVO getQnA(AdminQnABoardVO adminQnA) {
		System.out.println("DAO getQnA() ����");
		return (AdminQnABoardVO) sqlSessionTemplate.selectOne("AdminQnABoardDAO.getQnA", adminQnA);
	}
	
	public void updateAnswer(AdminQnABoardVO adminQnA) {
		System.out.println("DAO updateAnswer() ����");
		sqlSessionTemplate.update("AdminQnABoardDAO.updateAnswer", adminQnA);
	}
	
	public List<AdminQnABoardVO> getQnAList(PagingVO pageVO){
		System.out.println("DAO getQnAList() ����");
		return sqlSessionTemplate.selectList("AdminQnABoardDAO.getQnAList", pageVO);
	}
	
	public int countNotice() {
		System.out.println("DAO countNotice() ����");
		return sqlSessionTemplate.selectOne("AdminQnABoardDAO.countNotice");
	}
	
	public void updateFAQ(AdminQnABoardVO adminQnA) {
		sqlSessionTemplate.update("AdminQnABoardDAO.updateFAQ", adminQnA);
	}
	
	public void deleteFAQ(AdminQnABoardVO adminQnA) {
		sqlSessionTemplate.delete("AdminQnABoardDAO.deleteFAQ", adminQnA);
	}
	
	public void insertFAQ(AdminQnABoardVO adminQnA) {
		sqlSessionTemplate.update("AdminQnABoardDAO.insertFAQ", adminQnA);
	}
}
