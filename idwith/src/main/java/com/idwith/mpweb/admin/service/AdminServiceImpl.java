package com.idwith.mpweb.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.admin.AdminDAO;
import com.idwith.mpweb.admin.AdminVO;
import com.idwith.mpweb.common.PagingVO;

@Service("adminService")
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminDAO adminDAO;

	/**관리자 계정 등록*/
	@Override
	public void insertAdmin(AdminVO admin) {
		System.out.println("관리자 등록 service");
		System.out.println("ID : " + admin.getAdmin_id());
		adminDAO.insertAdmin(admin);
	}

	/**관리자 계정 목록*/
	@Override
	public List<AdminVO> getAdminList(PagingVO pagination) {
		System.out.println("관리자 목록 service");
		return adminDAO.getAdminList(pagination);
	}

	@Override
	public int countAdmin() {
		return adminDAO.countAdmin();
	}

	/**관리자 계정 수정*/
	@Override
	public void updateSuperAdmin(AdminVO admin) {
		System.out.println("관리자 수정 service");
		adminDAO.updateSuperAdmin(admin);
	}
	
	@Override
	public void updateAdmin(AdminVO admin) {
		adminDAO.updateAdmin(admin);
	}

	/**관리자 게정 상세보기*/
	@Override
	public AdminVO getAdminContent(String adminId) {
		System.out.println("관리자 상세보기 service");
		return adminDAO.getAdminContent(adminId);
	}

	/**관리자 계정 삭제*/
	@Override
	public void deleteAdmin(AdminVO admin) {
		System.out.println("관리자 삭제 service");
		adminDAO.deleteAdmin(admin);
	}

	
}
