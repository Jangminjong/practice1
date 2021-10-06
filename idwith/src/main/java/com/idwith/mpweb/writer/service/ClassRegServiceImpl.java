package com.idwith.mpweb.writer.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.writer.WriterClassRegDAO;
import com.idwith.mpweb.writer.WriterClassRegVO;

@Service("classRegService")
public class ClassRegServiceImpl implements ClassRegService{
	@Autowired
	private WriterClassRegDAO writerClassApplyDAO;
	
	@Override
	public void classRegInsert(WriterClassRegVO writerClassRegVO) {
		
		writerClassApplyDAO.insertClassReg(writerClassRegVO);
	}

	@Override
	public int countClassReg(int classSeller) {
		return writerClassApplyDAO.getClassRegCount(classSeller);
	}

	@Override
	public List<WriterClassRegVO> getWriterClassRegList(PagingVO pagingVO) {
		return writerClassApplyDAO.getClassRegList(pagingVO);		
	}

	@Override
	public WriterClassRegVO getWriterClassReg(int classRegSeq) {
		return writerClassApplyDAO.getClassReg(classRegSeq);
	}

	@Override
	public void classRegDelete(int classRegSeq) {
		writerClassApplyDAO.deleteClassReg(classRegSeq);	
	}

	@Override
	public void classRegUpdate(WriterClassRegVO writerClassRegVO) {
		writerClassApplyDAO.updateClassReg(writerClassRegVO);
		
	}
}
