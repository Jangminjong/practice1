package com.idwith.mpweb.writer.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.writer.WriterClassRegDAO;
import com.idwith.mpweb.writer.WriterClassRegVO;

@Service("classApplyService")
public class ClassApplyServiceImpl implements ClassApplyService{
	@Autowired
	private WriterClassRegDAO writerClassApplyDAO;
	
	@Override
	public void classApplyInsert(WriterClassRegVO writerClassRegVO) {
		
		writerClassApplyDAO.insertClassApply(writerClassRegVO);
	}

	@Override
	public List<WriterClassRegVO> getWriterClassApplyList(String sellerCheck) {
		writerClassApplyDAO.getClassApplyList(sellerCheck);
		return null;
	}
}
