package com.idwith.mpweb.admin.service;

import java.util.List;

import com.idwith.mpweb.admin.AdminVO;
import com.idwith.mpweb.common.PagingVO;

public interface AdminService {
	
	// 관리자 등록
	void insertAdmin(AdminVO admin);
	
	// 관리자 목록 조회
	List<AdminVO> getAdminList(PagingVO pagination);
	
	// 페이징 처리 
	int countAdmin();

	// 관리자 수정
	void updateSuperAdmin(AdminVO admin);
	
	// 일반 관리자 수정
	void updateAdmin(AdminVO admin);

	// 관리자 상세보기
	AdminVO getAdminContent(String adminId);

	// 관리자 삭제
	void deleteAdmin(AdminVO admin);

}
