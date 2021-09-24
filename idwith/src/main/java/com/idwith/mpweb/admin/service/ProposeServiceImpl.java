package com.idwith.mpweb.admin.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.admin.ProposeDAO;
import com.idwith.mpweb.admin.ProposeVO;

@Service
public class ProposeServiceImpl implements ProposeService {
	@Autowired
	private ProposeDAO proposeDAO;
	
	@Override
	public List<Map<String, String>> getWatingClient() {
		System.out.println("Servie getWatingClient 실행");
		return proposeDAO.getWatingClient();
	}

	@Override
	public int updateAgree(String user_id) {
		System.out.println("Service updateAgree 실행");
		int result = proposeDAO.updateAgree(user_id);
		System.out.println("Service result : " + result);
		
		return result;
	}

	@Override
	public int updateDisagree(String user_id) {
		System.out.println("Service updateDisagree 실행");
		int result = proposeDAO.updateDisagree(user_id);
		System.out.println("Service result : " + result);
		return result;
	}
}
