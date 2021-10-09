package com.idwith.mpweb.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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

	@Override
	public WriterVO getClassSellerContent(Integer sellerCode) {
		return classSellerDAO.getClassSellerContent(sellerCode);
	}

	@Override
	@Transactional
	public int getClassSearchCnt(String searchKeyword) {
		return classSellerDAO.getClassSearchCnt(searchKeyword);
	}

	@Override
	public List<WriterVO> getSearchClassWriter(PagingVO classSearchPagination) {
		return classSellerDAO.getSearchClassWriter(classSearchPagination);
	}
	

}
