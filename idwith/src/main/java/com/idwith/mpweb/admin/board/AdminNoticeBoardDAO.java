package com.idwith.mpweb.admin.board;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.idwith.mpweb.common.Pagination;
import com.idwith.mpweb.common.PagingVO;

@Repository("adminNoticeBoardDAO")
public class AdminNoticeBoardDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	/** 관리자 공지사항 insert */
	public void insertNotice(AdminNoticeBoardVO adminNotice) {
		System.out.println("insertNotice() 기능 처리");
		sqlSessionTemplate.insert("AdminNoticeBoardDAO.insertAdminNotice", adminNotice);
	}
	
	/** 관리자 공지사항 수정*/
	public void updateNotice(AdminNoticeBoardVO adminNotice) {
		
	}

	/** 관리자 공지사항 삭제*/
	public void deleteNotice(AdminNoticeBoardVO adminNotice) {
		
	}
	
	/** 관리자 공지사항 상세페이지*/
	public AdminNoticeBoardDAO getAdminNotice(AdminNoticeBoardVO adminNotice) {
		return null;
	}
	
	/** 관리자 공지사항 목록 페이지 */
	public List<AdminNoticeBoardVO> getNoticeList(Pagination pagination) {
		System.out.println("getNoticeList() 기능 처리");
		return sqlSessionTemplate.selectList("AdminNoticeBoardDAO.getAdminNoticeList", pagination);
	}

	/** 관리자 공지사항 페이징처리 */
	public int countAdminNotice() {
		System.out.println("countAdminNotice() 기능 처리");
		return sqlSessionTemplate.selectOne("AdminNoticeBoardDAO.countAdminNotice");
	}

	public List<AdminNoticeBoardVO> getPageList(Pagination pagination) {
		return sqlSessionTemplate.selectList("AdminNoticeBoardDAO.pagingList", pagination);
	}
	
}
