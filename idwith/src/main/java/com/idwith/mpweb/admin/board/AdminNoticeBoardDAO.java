package com.idwith.mpweb.admin.board;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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

	/** 관리자 공지사항 목록 페이지 */
	public List<AdminNoticeBoardVO> getNoticeList(PagingVO pagination) {
		System.out.println("getNoticeList() 기능 처리");
		return sqlSessionTemplate.selectList("AdminNoticeBoardDAO.selectAdminNotice", pagination);
	}

	/** 관리자 공지사항 페이징처리 */
	public int countAdminNotice() {
		System.out.println("countAdminNotice() 기능 처리");
		return sqlSessionTemplate.selectOne("AdminNoticeBoardDAO.countAdminNotice");
	}
	
	/** 관리자 공지사항 상세페이지 */
	public AdminNoticeBoardVO getAdminNotice(AdminNoticeBoardVO adminNotice) {
		System.out.println("getAdminNotice() 기능 처리");
		AdminNoticeBoardVO notice = sqlSessionTemplate.selectOne("AdminNoticeBoardDAO.getAdminNotice", adminNotice);
		System.out.println("title : " + notice.getAdminBoardTitle());
		return notice;
	}
	
	/** 관리자 공지사항 update */
	public void updateAdminNotice(AdminNoticeBoardVO adminNotice) {
		System.out.println("updateAdminNotice() 기능 처리");
		sqlSessionTemplate.update("AdminNoticeBoardDAO.updateAdminNotice", adminNotice);
	}
	
	/** 관리자 공지사항 delete */
	public void deleteAdminNoitce(AdminNoticeBoardVO adminNotice) {
		System.out.println("deleteAdminNotice() 기능 처리");
		sqlSessionTemplate.delete("AdminNoticeBoardDAO.deleteAdminNotice", adminNotice);
	}
	
	
}
