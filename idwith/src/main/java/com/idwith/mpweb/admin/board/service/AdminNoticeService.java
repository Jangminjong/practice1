package com.idwith.mpweb.admin.board.service;

import java.util.List;

import com.idwith.mpweb.admin.board.AdminNoticeBoardVO;
import com.idwith.mpweb.common.Pagination;
import com.idwith.mpweb.common.PagingVO;


public interface AdminNoticeService {
	
	// 글 등록
	void insertAdminNotice(AdminNoticeBoardVO adminNotice);
	
	// 글 수정
	void updateAdminNotice(AdminNoticeBoardVO adminNotice);
	
	// 글 삭제
	void deleteADminNotice(AdminNoticeBoardVO adminNotice);
	
	// 글 상세보기
	AdminNoticeBoardVO getAdminNotice(AdminNoticeBoardVO adminNotice);
	
	// 글 목록 조회
	List<AdminNoticeBoardVO> getNoticeList(Pagination pagination);
	
	// 페이징 리스트
	List<AdminNoticeBoardVO> getPageList(Pagination pagination);
	
	//페이징처리 개수
	int countAdminNotice();
	
}
