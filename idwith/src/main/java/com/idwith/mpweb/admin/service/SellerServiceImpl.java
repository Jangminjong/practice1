package com.idwith.mpweb.admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.admin.SellerDAO;
import com.idwith.mpweb.admin.SellerVO;

@Service
public class SellerServiceImpl implements SellerService {

	@Autowired
	private SellerDAO sellerDAO;
	
	@Override
	public void insertSeller(SellerVO vo) {
		System.out.println("Service insertSeller ����");
		sellerDAO.insertSeller(vo);
	}

	@Override
	public SellerVO sellerEnCheck(String user_id) {
		return sellerDAO.sellerEnCheck(user_id);
	}

	@Override
	public void updateSellerStatus(String user_id) {
		sellerDAO.updateSellerStatus(user_id);
	}

	@Override
	public SellerVO getSeller(Integer order_detail_seller) {
		return sellerDAO.getSeller(order_detail_seller);
	}
}
