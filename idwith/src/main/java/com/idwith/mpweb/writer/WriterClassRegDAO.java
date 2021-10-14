package com.idwith.mpweb.writer;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.idwith.mpweb.common.PagingVO;

@Repository("writerClassApplyDAO")
public class WriterClassRegDAO {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public void insertClassReg(WriterClassRegVO writerClassRegVO) {
		// 클래스 등록
		sqlSessionTemplate.insert("WriterClassRegDAO.insertClassReg" , writerClassRegVO);
	}

	public int getClassRegCount(int classSeller) {
		// 클래스 등록 개수
		return sqlSessionTemplate.selectOne("WriterClassRegDAO.classRegCount", classSeller);
	}
	
	public List<WriterClassRegVO> getClassRegList(PagingVO pagingVO){
		// 클래스 등록 페이징
		return sqlSessionTemplate.selectList("WriterClassRegDAO.classRegList", pagingVO);
	}

	public WriterClassRegVO getClassReg(int classRegSeq) {
		// 해당 작가의 클래스 등록 가져오기 
		return sqlSessionTemplate.selectOne("WriterClassRegDAO.classReg", classRegSeq);
	}

	public void deleteClassReg(int classRegSeq) {
		// 클래스 등록 삭제
		sqlSessionTemplate.update("WriterClassRegDAO.classRegDelete",classRegSeq);
	}

	public void updateClassReg(WriterClassRegVO writerClassRegVO) {
		// 클래스 등록 수정
		sqlSessionTemplate.update("WriterClassRegDAO.classRegUpdate", writerClassRegVO);
	}

	public List<WriterClassCategoryVO> getClassCategory() {
		// 클래스 카테고리 목록 가져오기
		return sqlSessionTemplate.selectList("WriterClassRegDAO.classCategoryList");
	}

	public List<WriterClassRegVO> getClassregListAll(int classSeller) {
		return sqlSessionTemplate.selectList("WriterClassRegDAO.classRegListAll", classSeller);
	}

	public String getSellerStoreName(int sellerCode) {
		return sqlSessionTemplate.selectOne("WriterClassRegDAO.sellerStoreName", sellerCode);
	}

	public String getClassRegClassName(String classCode) {
		return sqlSessionTemplate.selectOne("WriterClassRegDAO.className", classCode);
	}
}
