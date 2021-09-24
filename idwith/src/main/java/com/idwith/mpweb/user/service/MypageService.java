package com.idwith.mpweb.user.service;

import java.util.List;
import java.util.Map;

public interface MypageService {
	List<Map<String, String>> getUser(String user_id);
}
