package com.idwith.mpweb.admin.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.idwith.mpweb.admin.ClassSellerVO;
import com.idwith.mpweb.common.PagingVO;

@Service("classSellerService")
public class ClassSellerServiceImpl implements ClassSellerService {

	@Override
	public int countClassSeller() {
		return 0;
	}

	@Override
	public List<ClassSellerVO> getClassSellerList(PagingVO classPagination) {
		return null;
	}

}
