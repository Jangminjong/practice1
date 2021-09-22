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
	
	public void insertQnA(QnABoardVO qnaVO) {
		System.out.println("DAO insertQnA() ����");
		sqlSessionTemplate.insert("BoardDAO.insertQnA", qnaVO);
	}
	
	// ����(������) ��ȸ
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
	
	// ����¡ ó��
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
}
