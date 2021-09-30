package com.idwith.mpweb.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.user.UserSellerVO;
import com.idwith.mpweb.user.User_SellerDAO;

@Service
public class SellerViewServiceImpl implements SellerViewService {
	@Autowired
	private User_SellerDAO dao;
	
	@Override
	public Long getSeller(String user_id) {
		System.out.println("Service ����");
		Long result = dao.getSeller(user_id);
		return result;
	}

	@Override
	public List<UserSellerVO> getSellerList() {
		return dao.getSellerList();
	}
}
