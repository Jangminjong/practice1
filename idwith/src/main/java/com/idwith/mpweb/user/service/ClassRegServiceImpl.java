package com.idwith.mpweb.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.user.ClassRegDAO;
import com.idwith.mpweb.user.ClassRegVO;

@Service
public class ClassRegServiceImpl implements ClassRegService {
	@Autowired
	private ClassRegDAO classRegDAO;

	@Override
	public void insertClassReg(ClassRegVO regVO) {
		classRegDAO.insertClassReg(regVO);
	}
}
