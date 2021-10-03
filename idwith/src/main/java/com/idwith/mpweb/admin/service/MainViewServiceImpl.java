package com.idwith.mpweb.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.admin.MainViewDAO;
import com.idwith.mpweb.admin.board.AdminNoticeBoardVO;

@Service
public class MainViewServiceImpl implements MainViewService {

	@Autowired
	private MainViewDAO mainViewDAO;

	@Override
	public List<AdminNoticeBoardVO> getMainNoticeList() {
		System.out.println("MainView 공지사항 List() ");
		return mainViewDAO.getMainNoticeList();
	}

}
