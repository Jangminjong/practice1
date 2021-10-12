package com.idwith.mpweb.writer;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.idwith.mpweb.common.PagingVO;

@Repository
public class WriterClassOpenDAO {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public List<WriterClassOpenVO> classTimeCheck(WriterClassOpenVO writerClassOpenVO) {
		List<WriterClassOpenVO> timeList = sqlSessionTemplate.selectList("WriterClassOpenDAO.timeCheck", writerClassOpenVO);
		return timeList;
	}

	public void insertClassOpen(WriterClassOpenVO writerClassOpenVO) {
		sqlSessionTemplate.insert("WriterClassOpenDAO.insertClassOpen", writerClassOpenVO);
		sqlSessionTemplate.insert("WriterClassOpenDAO.insertClassName", writerClassOpenVO);
		
	}

	public int getClassOpenCount(int classOpenSeller) {
		return sqlSessionTemplate.selectOne("WriterClassOpenDAO.classOpenCount", classOpenSeller);
	}

	public List<WriterClassOpenVO> getClassOpenList(PagingVO pagingVO) {
		return sqlSessionTemplate.selectList("WriterClassOpenDAO.classOpenList", pagingVO);
	}

	public WriterClassOpenVO getClassOpen(int classOpenSeq) {
		return sqlSessionTemplate.selectOne("WriterClassOpenDAO.classOpen", classOpenSeq);
	}

	public void updateClassOpen(WriterClassOpenVO writerClassOpenVO) {
		sqlSessionTemplate.update("WriterClassOpenDAO.classOpenUpdate", writerClassOpenVO);
		
	}

	public void deleteClassOpen(WriterClassOpenVO classOpenVO) {
		sqlSessionTemplate.update("WriterClassOpenDAO.classOpenDelete", classOpenVO);
	}
}
