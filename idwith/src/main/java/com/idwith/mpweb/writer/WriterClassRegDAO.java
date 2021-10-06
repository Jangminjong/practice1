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
		System.out.println("DAO insertClassApply() 실행");
		sqlSessionTemplate.insert("WriterClassRegDAO.insertClassReg" , writerClassRegVO);
	}

	public int getClassRegCount(int classSeller) {
		return sqlSessionTemplate.selectOne("WriterClassRegDAO.classRegCount", classSeller);
	}
	
	public List<WriterClassRegVO> getClassRegList(PagingVO pagingVO){
		return sqlSessionTemplate.selectList("WriterClassRegDAO.classRegList", pagingVO);
	}

	public WriterClassRegVO getClassReg(int classRegSeq) {
		return sqlSessionTemplate.selectOne("WriterClassRegDAO.classReg", classRegSeq);
	}

	public void deleteClassReg(int classRegSeq) {
		sqlSessionTemplate.update("WriterClassRegDAO.classRegDelete",classRegSeq);
		
	}

	public void updateClassReg(WriterClassRegVO writerClassRegVO) {
		sqlSessionTemplate.update("WriterClassRegDAO.classRegUpdate", writerClassRegVO);
		
	}
}
