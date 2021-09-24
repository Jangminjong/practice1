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
		System.out.println("Service insertSeller ½ÇÇà");
		sellerDAO.insertSeller(vo);
	}
}
