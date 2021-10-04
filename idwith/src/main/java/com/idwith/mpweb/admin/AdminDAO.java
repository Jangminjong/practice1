package com.idwith.mpweb.admin;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.idwith.mpweb.admin.AdminVO;
import com.idwith.mpweb.common.PagingVO;

@Repository("adminDAO")
public class AdminDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	/** 관리자 등록 */
	public void insertAdmin(AdminVO admin) {
		System.out.println("adminDAO insertAdmin() 처리");
		sqlSessionTemplate.insert("AdminDAO.insertAdmin", admin);
	}
	
	/** 관리자 목록 페이지*/
	public List<AdminVO> getAdminList(PagingVO pagination) {
		System.out.println("adminDAO getAdminList() 처리");
		return sqlSessionTemplate.selectList("AdminDAO.getAdminList", pagination);
	}
	
	public int countAdmin() {
		System.out.println("adminDAO countAdmin() 처리");
		return sqlSessionTemplate.selectOne("AdminDAO.countAdmin");
	}

	/**관리자 수정 */
	public void updateSuperAdmin(AdminVO admin) {
		System.out.println("adminDAO updateSuperAdmin() 처리");
		System.out.println("정보1 : " + admin.getAdmin_id());
		System.out.println("정보1 : " + admin.getAdmin_phone());
		System.out.println("정보1 : " + admin.getAdmin_pwd());
		System.out.println("정보1 : " + admin.getAdmin_role());
		int result = sqlSessionTemplate.update("AdminDAO.updateSuperAdmin", admin);
		System.out.println("결과 비교 : " + result);
	}
	
	public void updateAdmin(AdminVO admin) {
		sqlSessionTemplate.update("AdminDAO.updateAdminService", admin);
	}

	/**관리자 상세보기*/
	public AdminVO getAdminContent(String adminId) {
		System.out.println("adminDAO getAdminConent() 처리");
		AdminVO adminContent = sqlSessionTemplate.selectOne("AdminDAO.getAdminContent", adminId);
		return adminContent;
	}

	/**관리자 삭제*/
	public void deleteAdmin(AdminVO admin) {
		System.out.println("adminDAO deleteAdmin()처리");
		sqlSessionTemplate.delete("AdminDAO.deleteAdmin", admin);
	}

}
