package com.idwith.mpweb.writer.service;

import java.util.List;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.writer.WriterClassOpenVO;

public interface ClassOpenService {

	String classTimeCheck(WriterClassOpenVO writerClassOpenVO);

	void classOpenInsert(WriterClassOpenVO writerClassOpenVO);

	int countClassOpen(int classOpenSeller);

	List<WriterClassOpenVO> getWriterClassOpenList(PagingVO pagingVO);

	WriterClassOpenVO getWriterClassOpen(int classOpenSeq);

	void classOpenUpdate(WriterClassOpenVO writerClassOpenVO);

	void classOpenDelete(WriterClassOpenVO writerClassOpenVO);

}
