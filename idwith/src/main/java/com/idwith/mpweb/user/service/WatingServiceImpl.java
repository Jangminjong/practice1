package com.idwith.mpweb.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.user.WatingDAO;
import com.idwith.mpweb.user.WatingVO;

@Service
public class WatingServiceImpl implements WatingService {

	@Autowired
	private WatingDAO watingDAO;
	
	@Override
	public void insertWating(WatingVO watingVO) {
		System.out.println("Service insertWating ½ÇÇà");
		watingDAO.insertWating(watingVO);
	}
}
