package com.idwith.mpweb.writer.service;

import java.util.List;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.writer.WriterClassCategoryVO;
import com.idwith.mpweb.writer.WriterClassRegVO;

public interface ClassRegService {
	void classRegInsert(WriterClassRegVO writerClassRegVO);
	int countClassReg(int classSeller);
	List<WriterClassRegVO> getWriterClassRegList(PagingVO pagingVO);
	WriterClassRegVO getWriterClassReg(int classRegSeq);
	void classRegDelete(int classRegSeq);
	void classRegUpdate(WriterClassRegVO writerClassRegVO);
	List<WriterClassCategoryVO> classCategoryFind();
	List<WriterClassRegVO> getWriterClassRegListAll(int classSeller);
}
