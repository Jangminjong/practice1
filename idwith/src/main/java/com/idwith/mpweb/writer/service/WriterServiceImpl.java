package com.idwith.mpweb.writer.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.writer.FollowerDAO;
import com.idwith.mpweb.writer.WriterDAO;
import com.idwith.mpweb.writer.order.GoodsOrderDAO;

@Service
public class WriterServiceImpl implements WriterService{

	@Autowired
	private GoodsOrderDAO goodsOrderDAO;
	
	@Autowired
	private FollowerDAO followerDAO;
	
	@Autowired
	private WriterDAO writerDAO;
	
	@Override
	public int follower(int sellerCode) {
		
		return followerDAO.follower(sellerCode);
	}
	
	
	  @Override public int todayOrder(int sellerCode) {
		  return goodsOrderDAO.countTodayOrder(sellerCode);
	}


	@Override
	public void enrollmentCancle(int sellerCode) {
		writerDAO.writerEnrollmentCancle(sellerCode);
	}
	
	
	

}
