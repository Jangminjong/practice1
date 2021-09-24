package com.idwith.mpweb.admin.service;

import java.util.List;
import java.util.Map;

import com.idwith.mpweb.admin.ProposeVO;

public interface ProposeService {

	List<Map<String, String>> getWatingClient();
	
	int updateAgree(String user_id);
	
	int updateDisagree(String user_id);
}
