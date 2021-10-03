package com.idwith.mpweb.admin;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.idwith.mpweb.admin.board.AdminNoticeBoardVO;

@Repository
public class MainViewDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public List<AdminNoticeBoardVO> getMainNoticeList() {
		return sqlSessionTemplate.selectList("AdminNoticeBoardDAO.getAdminViewNotice");
	}
	
	

}
