package com.idwith.mpweb.writer.service;

import java.util.List;

import com.idwith.mpweb.writer.WriterClassRegVO;

public interface ClassApplyService {
	void classApplyInsert(WriterClassRegVO writerClassApplyVO);
	List<WriterClassRegVO> getWriterClassApplyList(String sellerCheck);
}
