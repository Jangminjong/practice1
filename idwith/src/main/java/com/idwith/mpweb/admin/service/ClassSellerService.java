package com.idwith.mpweb.admin.service;

import java.util.List;

import com.idwith.mpweb.admin.WriterVO;
import com.idwith.mpweb.common.PagingVO;

public interface ClassSellerService {

	int countClassSeller();

	List<WriterVO> getClassSellerList(PagingVO classPagination);

}
