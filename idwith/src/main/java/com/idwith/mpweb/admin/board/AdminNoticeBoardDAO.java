package com.idwith.mpweb.admin.board;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

public class AdminNoticeBoardDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	/** 愿�由ъ옄 怨듭��궗�빆 insert */
	public void insertNotice(AdminNoticeBoardVO adminNotice) {
		System.out.println("insertNotice() 湲곕뒫 泥섎━");
		sqlSessionTemplate.insert("AdminNoitceBoardDAO.insertNotice", adminNotice);
	}

}
