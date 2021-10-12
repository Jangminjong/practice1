package com.idwith.mpweb.writer;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("followerDAO")
public class FollowerDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public int follower(int sellerCode) {
		return sqlSessionTemplate.selectOne("followerDAO.follower", sellerCode);
		
	}
}
