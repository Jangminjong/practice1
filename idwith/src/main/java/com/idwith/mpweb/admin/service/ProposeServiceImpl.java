package com.idwith.mpweb.admin.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.admin.ProposeDAO;
import com.idwith.mpweb.admin.ProposeVO;
import com.idwith.mpweb.user.ClassRegVO;
import com.idwith.mpweb.user.GoodsApplyVO;

@Service
public class ProposeServiceImpl implements ProposeService {
	@Autowired
	private ProposeDAO proposeDAO;
	
	@Override
	public List<GoodsApplyVO> getWatingClient() {
		System.out.println("Servie getWatingClient ����");
		return proposeDAO.getWatingClient();
	}

	@Override
	public int updateAgree(String user_id) {
		System.out.println("Service updateAgree 실행");
		int result = proposeDAO.updateAgree(user_id);
		
		return result;
	}

	@Override
	public int updateDisagree(String user_id) {
		System.out.println("Service updateDisagree 실행");
		int result = proposeDAO.updateDisagree(user_id);
		return result;
	}

	@Override
	public List<ClassRegVO> getClassRegList() {
		return proposeDAO.getClassRegList();
	}

	@Override
	public int updateAgreeStatus(String class_reg_seq) {
		return proposeDAO.updateAgreeStatus(class_reg_seq);
	}

	@Override
	public int updateDisagreeStatus(String class_reg_seq) {
		return proposeDAO.updateDisagreeStatus(class_reg_seq);
	}

	@Override
	public void updateStatus(ClassRegVO classRegVO) {
		proposeDAO.updateStatus(classRegVO);
	}
}
