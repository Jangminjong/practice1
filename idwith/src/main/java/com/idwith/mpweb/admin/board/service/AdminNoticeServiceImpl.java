package com.idwith.mpweb.admin.board.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.admin.board.AdminNoticeBoardVO;
import com.idwith.mpweb.admin.board.AdminNoticeBoardDAO;

@Service("adminNoticeService")
public class AdminNoticeServiceImpl implements AdminNoticeService {
	
	@Autowired
	private AdminNoticeBoardDAO adminNoticeBoardDAO;

	@Override
	public void insertAdminNotice(AdminNoticeBoardVO adminNotice) {
		System.out.println("title : " + adminNotice.getAdminBoardTitle());
		System.out.println("content : " + adminNotice.getAmdinBoardContent());
		adminNoticeBoardDAO.insertNotice(adminNotice);
	}

}
     