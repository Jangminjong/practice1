package com.idwith.mpweb.admin.service;

import java.util.List;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.writer.ClassCalcVO;
import com.idwith.mpweb.writer.WriterClassOrderVO;

public interface ClassOrderService {

	List<WriterClassOrderVO> getClassOrderList(PagingVO pageVO);

	WriterClassOrderVO classDetail(WriterClassOrderVO writerClassOrder);

	int countClassOrder(int sellerCode);

	List<WriterClassOrderVO> getClassOrderFive(int sellerCode);

	void updateStatus(Integer classCode);

	int countClassOrderAll();

	List<WriterClassOrderVO> getClassOrderListAll(PagingVO classPageVO);

	void updateStatusCalcRes(Integer classCode);

	WriterClassOrderVO getClassOrderOne(Integer classCode);

	void insertClassCalc(ClassCalcVO classCalcVO);

}
