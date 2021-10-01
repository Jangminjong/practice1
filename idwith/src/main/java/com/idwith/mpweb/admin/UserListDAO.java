package com.idwith.mpweb.admin;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.idwith.mpweb.common.PagingVO;

@Repository("userListDAO")
public class UserListDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	/**사용자 목록 페이지*/
	public List<UserListVO> getUserList(PagingVO pagination) {
		System.out.println("getUSerList() 기능 처리");
		return sqlSessionTemplate.selectList("UserListDAO.selectUserList", pagination);
	}

	/**사용자 목록 페이징처리*/
	public int countUserList() {
		System.out.println("countUserList() 기능 처리");
		return sqlSessionTemplate.selectOne("UserListDAO.countUserList");
	}

	/**사용자 블락 처리*/
	public int blockStatusUpdate(String userId) {
		int result = sqlSessionTemplate.update("UserListDAO.blockStatusUpdate", userId);
		return result;
	}
	
	/**사용자 복원 처리*/
	public int blockCancelUpdate(String userId) {
		int result = sqlSessionTemplate.update("UserListDAO.blockCancelUpdate", userId);
		return result;
	}
	
	/**사용자 상세내용 처리*/
	public UserListVO getUserContent(UserListVO userList) {
		System.out.println("getUserContent 기능 처리");
		UserListVO user = sqlSessionTemplate.selectOne("UserListDAO.getUserContent", userList);
		return user;
	}
	
}
