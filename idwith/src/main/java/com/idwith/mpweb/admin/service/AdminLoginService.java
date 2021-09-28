package com.idwith.mpweb.admin.service;

import java.util.List;

import com.idwith.mpweb.admin.AdminVO;

public interface AdminLoginService {
	List<AdminVO> getAdmin(AdminVO vo);
	
	int CheckID(String id, String pwd);
}
