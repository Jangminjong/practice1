package com.idwith.mpweb.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.user.SellerCheckDAO;

@Service
public class SellerCheckServiceImpl implements SellerCheckService {
	@Autowired
	private SellerCheckDAO dao;
	
	@Override
	public int getSeller(String user_id) {
		System.out.println("Service ½ÇÇà");
		int result = dao.getSeller(user_id);
		return result;
	}
}
