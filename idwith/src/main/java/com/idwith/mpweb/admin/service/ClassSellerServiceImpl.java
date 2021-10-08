package com.idwith.mpweb.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.admin.ClassSellerDAO;
import com.idwith.mpweb.admin.WriterVO;
import com.idwith.mpweb.common.PagingVO;

@Service("classSellerService")
public class ClassSellerServiceImpl implements ClassSellerService {
	
	@Autowired
	private ClassSellerDAO classSellerDAO;

	@Override
	public int countClassSeller() {
		return classSellerDAO.countClassSeller();
	}

	@Override
	public List<WriterVO> getClassSellerList(PagingVO classPagination) {
		return classSellerDAO.getClassSellerList(classPagination);
	}
	

}
