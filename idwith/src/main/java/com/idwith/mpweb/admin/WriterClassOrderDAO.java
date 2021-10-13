package com.idwith.mpweb.admin;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.writer.ClassCalcVO;
import com.idwith.mpweb.writer.WriterClassOrderVO;

@Repository("writerClassOrderDAO")
public class WriterClassOrderDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	
	public List<WriterClassOrderVO>getClassOrderList(PagingVO pageVO){
		System.out.println("getClassOrderList() 기능처리");
		return sqlSessionTemplate.selectList("writerClassOrderDAO.getClassOrderList", pageVO);
	}
	
	// 페이징 처리
	public int countClassOrder(int sellerCode) {
		System.out.println("countClassOrder() 기능처리");
		return sqlSessionTemplate.selectOne("writerClassOrderDAO.countClassOrder", sellerCode);
	}
	
	public WriterClassOrderVO classDetail(WriterClassOrderVO writerClassOrder) {
		System.out.println("classOrder() 기능처리");
		WriterClassOrderVO classOrder = sqlSessionTemplate.selectOne("writerClassOrderDAO.classDetail", writerClassOrder);
		System.out.println(classOrder.getClass_order_code());
		System.out.println(classOrder.getClass_order_seq());
		return classOrder;
		
	}

	public List<WriterClassOrderVO> getClassOrderListFive(int sellerCode) {
		return sqlSessionTemplate.selectList("writerClassOrderDAO.getClassOrderListFive", sellerCode);
	}

	public void updateStatus(Integer classCode) {
		sqlSessionTemplate.update("writerClassOrderDAO.classUpdateStatusCalcReq",classCode);		
	}

	public int countClassOrderAll() {
		return sqlSessionTemplate.selectOne("writerClassOrderDAO.countClassOrderAll");
	}

	public List<WriterClassOrderVO> getClassOrderListAll(PagingVO classPageVO) {
		return sqlSessionTemplate.selectList("writerClassOrderDAO.getClassOrderListAll", classPageVO);
	}

	public void updateStatusCalcRes(Integer classCode) {
		sqlSessionTemplate.update("writerClassOrderDAO.classUpdateStatusCalcRes",classCode);		
	}

	public WriterClassOrderVO getClassOrderOne(Integer classCode) {
		return sqlSessionTemplate.selectOne("writerClassOrderDAO.getClassOrderOne", classCode);
	}

	public void insertClassCalc(ClassCalcVO classCalcVO) {
		sqlSessionTemplate.insert("writerClassOrderDAO.insertClassCalc", classCalcVO);
	}
}
