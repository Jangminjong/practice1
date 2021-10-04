package com.idwith.mpweb.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.user.WatingDAO;
import com.idwith.mpweb.user.GoodsApplyVO;

@Service
public class WatingServiceImpl implements WatingService {

	@Autowired
	private WatingDAO watingDAO;
	
	@Override
	public void insertWating(GoodsApplyVO goodsApplyVO) {
		System.out.println("작품 신청 서비스 실행");
		watingDAO.insertWating(goodsApplyVO);
	}
}
