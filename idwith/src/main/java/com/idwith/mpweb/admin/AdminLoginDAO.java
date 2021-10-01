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

	public int CheckID(String id, String pwd) {
		AdminVO dbResult = (AdminVO) sqlSessionTemplate.selectOne("AdminLoginDAO.InfoCheck", id);
		int result = 0;


		if(dbResult.getAdmin_id().equals("")) {
			result = -1;
		}else if(dbResult.getAdmin_id().equals(id) && dbResult.getAdmin_pwd().equals(pwd)) {
			result = 1;
		}else if(dbResult.getAdmin_id().equals(id) || dbResult.getAdmin_pwd().equals(pwd)) {
			result = 0;
		}
		return result;
	}
}
