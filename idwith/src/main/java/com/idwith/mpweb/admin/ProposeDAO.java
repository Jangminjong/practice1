package com.idwith.mpweb.admin;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.idwith.mpweb.user.ClassRegVO;
import com.idwith.mpweb.user.GoodsApplyVO;

@Repository
public class ProposeDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public List<GoodsApplyVO> getWatingClient(){
		List<GoodsApplyVO> goodsApplyList = sqlSessionTemplate.selectList("ProposeDAO.getGoodsApplyList");
		return goodsApplyList;
	}
	
	//���� ����
	public int updateAgree(String goods_apply_seq) {
		int result = sqlSessionTemplate.update("ProposeDAO.updateAgree", Integer.parseInt(goods_apply_seq));
		return result;
	}

	//���� ����
	public int updateDisagree(String goods_apply_seq) {
		int result = sqlSessionTemplate.update("ProposeDAO.updateDisagree", Integer.parseInt(goods_apply_seq));
		return result;
	}

	public List<ClassRegVO> getClassRegList() {
		return sqlSessionTemplate.selectList("ProposeDAO.getClassRegList");
	}

	public int updateAgreeStatus(String class_reg_seq) {
		int result = sqlSessionTemplate.update("ProposeDAO.updateAgreeStatus", Integer.parseInt(class_reg_seq));
		return result;
	}

	public int updateDisagreeStatus(String class_reg_seq) {
		return sqlSessionTemplate.update("ProposeDAO.updateDisagreeStatus", Integer.parseInt(class_reg_seq));
	}

	public void updateStatus(ClassRegVO classRegVO) {
		sqlSessionTemplate.update("ProposeDAO.updateStatus", classRegVO);
	}
}
