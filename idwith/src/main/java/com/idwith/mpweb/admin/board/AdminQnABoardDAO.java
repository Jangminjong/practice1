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

	// 其捞隆 贸府
	public int countQnA() {
		System.out.println("DAO countQnA() 角青");
		return sqlSessionTemplate.selectOne("AdminQnABoardDAO.countQnA");
	}

	public List<AdminQnABoardVO> selectQnA(PagingVO pageVO) {
		System.out.println("DAO selectQnA() 角青");
		return sqlSessionTemplate.selectList("AdminQnABoardDAO.selectQnA", pageVO);
	}
	
	public AdminQnABoardVO getQnA(AdminQnABoardVO adminQnA) {
		System.out.println("DAO getQnA() 角青");
		return (AdminQnABoardVO) sqlSessionTemplate.selectOne("AdminQnABoardDAO.getQnA", adminQnA);
	}
	
	public void updateAnswer(AdminQnABoardVO adminQnA) {
		System.out.println("DAO updateAnswer() 角青");
		sqlSessionTemplate.update("AdminQnABoardDAO.updateAnswer", adminQnA);
	}
	
	public List<AdminQnABoardVO> getQnAList(PagingVO pageVO){
		System.out.println("DAO getQnAList() 角青");
		return sqlSessionTemplate.selectList("AdminQnABoardDAO.getQnAList", pageVO);
	}
	
	public int countNotice() {
		System.out.println("DAO countNotice() 角青");
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
