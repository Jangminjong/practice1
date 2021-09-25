package com.idwith.mpweb.admin.board;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("adminNoticeBoardDAO")
public class AdminNoticeBoardDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	/** 관리자 공지사항 insert */
	public void insertNotice(AdminNoticeBoardVO adminNotice) {
		System.out.println("insertNotice() 기능 처리");
		sqlSessionTemplate.insert("AdminNoticeBoardDAO.insertAdminNotice", adminNotice);
	}
	
	/**관리자 공지사항 게시판 가져오기*/

}
