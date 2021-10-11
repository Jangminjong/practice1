package com.idwith.mpweb.admin.service;

import java.util.List;
import java.util.Map;

import com.idwith.mpweb.admin.ClassProposeInfoVO;
import com.idwith.mpweb.admin.ProposeVO;
import com.idwith.mpweb.user.ClassRegVO;
import com.idwith.mpweb.user.GoodsApplyVO;

public interface ProposeService {

	List<GoodsApplyVO> getWatingClient();
	
	int updateAgree(String user_id);
	
	int updateDisagree(String user_id);

	List<ClassRegVO> getClassRegList();

	int updateAgreeStatus(String class_reg_seq);

	int updateDisagreeStatus(String class_reg_seq);

	void updateStatus(ClassRegVO classRegVO);

	ClassProposeInfoVO getClassProposeInfo(int classRegseq);

	GoodsApplyVO getproductPropose(int goodsApplySeq);
}
