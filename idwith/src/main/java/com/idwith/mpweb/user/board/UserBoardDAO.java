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
		System.out.println("DAO insertQnA() 실행");
		sqlSessionTemplate.insert("BoardDAO.insertQnA", qnaVO);
	}
	
	// 공지(고정글) 조회
	public List<QnABoardVO> getQnAList(){
		System.out.println("DAO getQnAList() 실행");
		return sqlSessionTemplate.selectList("BoardDAO.getQnAList");
	}
	
	public QnABoardVO getQnA(QnABoardVO qnaVO) {
		System.out.println("DAO getQnA() 실행");
		return (QnABoardVO) sqlSessionTemplate.selectOne("BoardDAO.getQnA", qnaVO);
	}
	
	public void updateQnA(QnABoardVO qnaVO) {
		System.out.println("DAO updateQnA() 실행");
		sqlSessionTemplate.update("BoardDAO.updateQnA", qnaVO);
	}
	
	public Integer qnaRightCheck(QnABoardVO qnaVO) {
		System.out.println("DAO qnaRightCheck() 실행");
		return sqlSessionTemplate.selectOne("BoardDAO.rightCheck", qnaVO);
	}
	
	public void deleteQnA(QnABoardVO qnaVO) {
		System.out.println("DAO deleteQnA() 실행");
		sqlSessionTemplate.delete("BoardDAO.deleteQnA", qnaVO);
	}
	
	// 페이징 처리
	public int countQnA() {
		System.out.println("DAO countQnA() 실행");
		return sqlSessionTemplate.selectOne("BoardDAO.countQnA");
	}
	
	public int countNotice() {
		System.out.println("DAO countNotice() 실행");
		return sqlSessionTemplate.selectOne("BoardDAO.countNotice");
	}
	
	public List<QnABoardVO> selectQnA(PagingVO pageVO){
		System.out.println("DAO selectQnA() 실행");
		return sqlSessionTemplate.selectList("BoardDAO.selectQnA", pageVO);
	}
}
