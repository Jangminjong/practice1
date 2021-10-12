package com.idwith.mpweb.writer.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.writer.WriterClassOrderDAO;
import com.idwith.mpweb.writer.WriterClassOrderVO;


@Service("ClassOrderService")
public class ClassOrderServiceImpl implements ClassOrderService {
	
	@Autowired
	private WriterClassOrderDAO writerClassOrderDAO;

	@Override
	public List<WriterClassOrderVO> getClassOrderList(PagingVO pageVO) {
		System.out.println("클래스 목록 처리 service");
		return writerClassOrderDAO.getClassOrderList(pageVO);
	}

	@Override
	public WriterClassOrderVO classDetail(WriterClassOrderVO writerClassOrder) {
		System.out.println("클래스 상세보기 처리 service");
		return writerClassOrderDAO.classDetail(writerClassOrder);
	}

	@Override
	public int countClassOrder(int sellerCode) {
		return writerClassOrderDAO.countClassOrder(sellerCode);
	}

	@Override
	public List<WriterClassOrderVO> getClassOrderFive(int sellerCode) {
		return writerClassOrderDAO.getClassOrderListFive(sellerCode);
	}

}
