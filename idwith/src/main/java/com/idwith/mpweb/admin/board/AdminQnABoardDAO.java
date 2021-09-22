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
		return sqlSessionTemplate.selectList("AdminQnABoardDAO.selectQnA", pageVO);
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
	
	public void updateNotice(AdminQnABoardVO adminQnA) {
		sqlSessionTemplate.update("AdminQnABoardDAO.updateNotice", adminQnA);
	}
	
	public void deleteNotice(AdminQnABoardVO adminQnA) {
		sqlSessionTemplate.update("AdminQnABoardDAO.deleteNotice", adminQnA);
	}
	
	public void userInsertNotice(AdminQnABoardVO adminQnA) {
		sqlSessionTemplate.update("AdminQnABoardDAO.userInsertNotice", adminQnA);
	}
}
