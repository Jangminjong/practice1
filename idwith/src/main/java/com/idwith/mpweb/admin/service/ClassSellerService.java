package com.idwith.mpweb.admin.service;

import java.util.List;

import com.idwith.mpweb.admin.ClassSellerVO;
import com.idwith.mpweb.common.PagingVO;

public interface ClassSellerService {

	int countClassSeller();

	List<ClassSellerVO> getClassSellerList(PagingVO classPagination);

}
