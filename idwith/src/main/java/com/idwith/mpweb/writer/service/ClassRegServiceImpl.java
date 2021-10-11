package com.idwith.mpweb.writer.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.writer.WriterClassCategoryVO;
import com.idwith.mpweb.writer.WriterClassRegDAO;
import com.idwith.mpweb.writer.WriterClassRegVO;

@Service("classRegService")
public class ClassRegServiceImpl implements ClassRegService{
	@Autowired
	private WriterClassRegDAO writerClassRegDAO;
	
	@Override
	public void classRegInsert(WriterClassRegVO writerClassRegVO) {
		
		writerClassRegDAO.insertClassReg(writerClassRegVO);
	}

	@Override
	public int countClassReg(int classSeller) {
		return writerClassRegDAO.getClassRegCount(classSeller);
	}

	@Override
	public List<WriterClassRegVO> getWriterClassRegList(PagingVO pagingVO) {
		return writerClassRegDAO.getClassRegList(pagingVO);		
	}

	@Override
	public WriterClassRegVO getWriterClassReg(int classRegSeq) {
		return writerClassRegDAO.getClassReg(classRegSeq);
	}

	@Override
	public void classRegDelete(int classRegSeq) {
		writerClassRegDAO.deleteClassReg(classRegSeq);	
	}

	@Override
	public void classRegUpdate(WriterClassRegVO writerClassRegVO) {
		writerClassRegDAO.updateClassReg(writerClassRegVO);
		
	}

	@Override
	public List<WriterClassCategoryVO> classCategoryFind() {
		List<WriterClassCategoryVO> classCategory = writerClassRegDAO.getClassCategory();
		System.out.println("클래스 카테고리 개수 : "+classCategory.size());
		return classCategory;
	}

	@Override
	public List<WriterClassRegVO> getWriterClassRegListAll(int classSeller) {
		List<WriterClassRegVO> writerClassRegList = writerClassRegDAO.getClassregListAll(classSeller);
		return writerClassRegList;
	}
}
