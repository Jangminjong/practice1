package com.idwith.mpweb.user.service;

import java.util.List;
import java.util.Map;

import com.idwith.mpweb.common.PagingVO;
import com.idwith.mpweb.user.SellerStoryVO;

public interface UserCategoryService {

	int countStory();

	List<SellerStoryVO> getStoryList(PagingVO pageVO);
}
