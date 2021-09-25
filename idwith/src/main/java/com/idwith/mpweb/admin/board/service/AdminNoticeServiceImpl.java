package com.idwith.mpweb.admin.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.admin.board.AdminNoticeBoardVO;
import com.idwith.mpweb.common.Pagination;
import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.admin.board.AdminNoticeBoardDAO;

@Service("adminNoticeService")
public class AdminNoticeServiceImpl implements AdminNoticeService {
	
	@Autowired
	private AdminNoticeBoardDAO adminNoticeBoardDAO;

	/**글 등록*/
	@Override
	public void insertAdminNotice(AdminNoticeBoardVO adminNotice) {
		System.out.println("글 등록 처리 service");
		System.out.println("title : " + adminNotice.getAdminBoardTitle());
		System.out.println("content : " + adminNotice.getAmdinBoardContent());
		adminNoticeBoardDAO.insertNotice(adminNotice);
	}

	/**글 수정*/
	@Override
	public void updateAdminNotice(AdminNoticeBoardVO adminNotice) {
		System.out.println("글 수정 처리 service");
		System.out.println("seq : " + adminNotice.getAdminBoardSeq());
		System.out.println("content : " + adminNotice.getAmdinBoardContent());
		adminNoticeBoardDAO.updateNotice(adminNotice);
	}

	/**글 삭제*/
	@Override
	public void deleteADminNotice(AdminNoticeBoardVO adminNotice) {
		System.out.println("글 삭제 처리 service");
		System.out.println("Delete Seq : " + adminNotice.getAdminBoardSeq());
		adminNoticeBoardDAO.deleteNotice(adminNotice);
	}

	/**글 상세보기*/
	@Override
	public AdminNoticeBoardVO getAdminNotice(AdminNoticeBoardVO adminNotice) {
		System.out.println("글 상세보기 service");
		return null;
	}

	/**글 목록*/
	@Override
	public List<AdminNoticeBoardVO> getNoticeList(Pagination pagination) {
		System.out.println("글 목록 처리 service");
		return adminNoticeBoardDAO.getNoticeList(pagination);
	}

	@Override
	public int countAdminNotice() {
		return adminNoticeBoardDAO.countAdminNotice();
	}

	@Override
	public List<AdminNoticeBoardVO> getPageList(Pagination pagination) {
		System.out.println("글 페이징 리스트 처리 service");
		return adminNoticeBoardDAO.getPageList(pagination);
	}

}
     