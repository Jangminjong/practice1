package com.idwith.mpweb.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.admin.WriterClassOrderDAO;
import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.writer.ClassCalcVO;
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

	@Override
	public void updateStatus(Integer classCode) {
		writerClassOrderDAO.updateStatus(classCode);
		
	}

	@Override
	public int countClassOrderAll() {
		return writerClassOrderDAO.countClassOrderAll();
	}

	@Override
	public List<WriterClassOrderVO> getClassOrderListAll(PagingVO classPageVO) {
		return writerClassOrderDAO.getClassOrderListAll(classPageVO);
	}

	@Override
	public void updateStatusCalcRes(Integer classCode) {
		writerClassOrderDAO.updateStatusCalcRes(classCode);
	}

	@Override
	public WriterClassOrderVO getClassOrderOne(Integer classCode) {		
		return writerClassOrderDAO.getClassOrderOne(classCode);
	}

	@Override
	public void insertClassCalc(ClassCalcVO classCalcVO) {
		writerClassOrderDAO.insertClassCalc(classCalcVO);
	}

}
