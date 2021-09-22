package com.idwith.mpweb.admin.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.admin.board.AdminQnABoardDAO;
import com.idwith.mpweb.admin.board.AdminQnABoardVO;
import com.idwith.mpweb.common.PagingVO;

@Service("adminBoardService")
public class AdminBoardServiceImpl implements AdminBoardService {
	@Autowired
	private AdminQnABoardDAO adminBoardDAO;

	// ÆäÀÌÂ¡ Ã³¸®
	@Override
	public int countQnA() {
		return adminBoardDAO.countQnA(); // ÃÑ °Ô½Ã±Û ¼ö
	}

	@Override
	public List<AdminQnABoardVO> selectQnA(PagingVO pageVO) {
		return adminBoardDAO.selectQnA(pageVO);
	}

	@Override
	public AdminQnABoardVO getQnA(AdminQnABoardVO adminQnA) {
		return adminBoardDAO.getQnA(adminQnA);
	}

	@Override
	public void updateAnswer(AdminQnABoardVO adminQnA) {
		System.out.println("num: " + adminQnA.getSeq());
		System.out.println("answer: " + adminQnA.getBoard_answer());
		adminBoardDAO.updateAnswer(adminQnA);
	}

}
