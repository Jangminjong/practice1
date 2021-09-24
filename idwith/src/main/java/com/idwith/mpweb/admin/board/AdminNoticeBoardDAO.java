package com.idwith.mpweb.admin.board;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

public class AdminNoticeBoardDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	/** 관리자 공지사항 insert */
	public void insertNotice(AdminNoitceBoardVO adminNotice) {
		System.out.println("insertNotice() 기능 처리");
		sqlSessionTemplate.insert("AdminNoitceBoardDAO.insertNotice", adminNotice);
	}

}
