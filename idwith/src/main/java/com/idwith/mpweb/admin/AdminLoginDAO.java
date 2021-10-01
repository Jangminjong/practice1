package com.idwith.mpweb.admin;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminLoginDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<AdminVO> getAdmin(AdminVO vo) {
		System.out.println("ID : " + vo.getAdmin_id());
		System.out.println("PWD : " + vo.getAdmin_pwd());
		
		List<AdminVO> result = sqlSessionTemplate.selectList("AdminLoginDAO.getAdmin", vo);
		
		return result;
	}
}
