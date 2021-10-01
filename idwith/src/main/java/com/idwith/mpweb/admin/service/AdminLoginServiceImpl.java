package com.idwith.mpweb.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.admin.AdminLoginDAO;
import com.idwith.mpweb.admin.AdminVO;

@Service
public class AdminLoginServiceImpl implements AdminLoginService {
	@Autowired
	private AdminLoginDAO adminLoginDAO;
	
	public List<AdminVO> getAdmin(AdminVO vo) {
		return adminLoginDAO.getAdmin(vo);
	}
	
	public int CheckID(String id, String pwd) {
		return adminLoginDAO.CheckID(id, pwd);
	}
}
