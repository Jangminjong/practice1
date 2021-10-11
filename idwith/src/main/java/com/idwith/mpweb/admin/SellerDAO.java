package com.idwith.mpweb.admin;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SellerDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public void insertSeller(SellerVO vo) {
		System.out.println("DAO insertSeller ����");
		System.out.println("코드 : " + vo.getSeller_code());
		System.out.println("상점이름 : " + vo.getStore_name());
		System.out.println("사업자번호 : " + vo.getSeller_sellno());
		System.out.println("이메일 : " + vo.getUser_id());
		sqlSessionTemplate.insert("SellerDAO.insertSeller", vo);
	}

	public SellerVO sellerEnCheck(String user_id) {
		return sqlSessionTemplate.selectOne("SellerDAO.sellerEnCheck", user_id);
	}

	public void updateSellerStatus(String user_id) {
		sqlSessionTemplate.update("SellerCheckDAO.updateSellerStatus" ,user_id);
	}
}
