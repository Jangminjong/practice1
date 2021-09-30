package com.idwith.mpweb.writer.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.writer.WriterClassApplyDAO;
import com.idwith.mpweb.writer.WriterClassApplyVO;

@Service("classApplyService")
public class ClassApplyServiceImpl implements ClassApplyService{
	@Autowired
	private WriterClassApplyDAO writerClassApplyDAO;
	
	@Override
	public void classApplyInsert(WriterClassApplyVO writerClassApplyVO) {
		System.out.println(writerClassApplyVO.getClassApplyId());
		System.out.println(writerClassApplyVO.getClassApplySeller());
		System.out.println(writerClassApplyVO.getClassApplyName());
		System.out.println(writerClassApplyVO.getClassApplyPostAddress());
		System.out.println(writerClassApplyVO.getClassApplyAddress());
		System.out.println(writerClassApplyVO.getClassApplyDetailAddress());
		System.out.println(writerClassApplyVO.getClassApplyReference());
		System.out.println(writerClassApplyVO.getClassApplyDifficult());
		System.out.println(writerClassApplyVO.getClassApplyPerson());
		System.out.println(writerClassApplyVO.getClassApplyPhoto().length);
		writerClassApplyDAO.insertClassApply(writerClassApplyVO);
	}

	@Override
	public List<WriterClassApplyVO> getWriterClassApplyList(String sellerCheck) {
		writerClassApplyDAO.getClassApplyList(sellerCheck);
		return null;
	}
}
