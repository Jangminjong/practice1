package com.idwith.mpweb.writer.service;

import java.util.List;

import com.idwith.mpweb.writer.WriterClassApplyVO;

public interface ClassApplyService {
	void classApplyInsert(WriterClassApplyVO writerClassApplyVO);
	List<WriterClassApplyVO> getWriterClassApplyList(String sellerCheck);
}
