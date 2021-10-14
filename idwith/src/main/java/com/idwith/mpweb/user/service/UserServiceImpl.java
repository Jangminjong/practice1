package com.idwith.mpweb.user.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;


import com.idwith.mpweb.user.UserAddressVO;

import com.idwith.mpweb.user.ChoiceVO;
import com.idwith.mpweb.user.CouponHaveVO;
import com.idwith.mpweb.user.CouponUseVO;
import com.idwith.mpweb.user.FollowVO;
import com.idwith.mpweb.user.SaveVO;
import com.idwith.mpweb.user.UserDAO;
import com.idwith.mpweb.user.UserVO;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO dao;

	@Override
	public void insertUser(UserVO vo) {
		System.out.println("Service : ȸ������ ó��");

		BCryptPasswordEncoder scpwd = new BCryptPasswordEncoder();
		// ��ȣȭ �ϱ���
		String password = scpwd.encode(vo.getUser_pwd());
		// ��ȣȭ �Ͽ� password�� ����
		vo.setUser_pwd(password);

		dao.insertUser(vo);
	}

	@Override
	public int getUser(UserVO vo) {
		int result = 0;

		String email = vo.getUser_id();
		String password = vo.getUser_pwd();

		UserVO dbResult = dao.getUser(email);
		
		if(dbResult != null) {
			String dbEmail = dbResult.getUser_id();
			String dbPassword = dbResult.getUser_pwd();

			BCryptPasswordEncoder scpwd = new BCryptPasswordEncoder();
			boolean match = scpwd.matches(password, dbPassword);
			if(match == false) {
				result = 1;
			}else if (email.equals(dbEmail) && match) {
				result = 2;
			}
		}

		return result;
	}

	@Override
	public String kakaoLogin(UserVO vo) {
		String result = "";
		int emailCheck = dao.emailCheck(vo.getUser_id()); // īī�� �̸��ϰ� ������ ���� DB�� �ִ��� Ȯ��
		if (emailCheck == 0) {
			dao.insertKakao(vo);
			result = "success";
		} else if (emailCheck == 1) {
			result = "success";
		} else {
			result = "fail";
		}

		return result;
	}

	@Override
	public String naverLogin(UserVO vo) {
		String result = "";
		int emailCheck = dao.emailCheck(vo.getUser_id());
		if (emailCheck == 0) {
			dao.insertUser(vo);
			result = "success";
		} else if (emailCheck == 1) {
			result = "success";
		} else {
			result = "fail";
		}
		return result;
	}

	@Override
	public void updateUser(UserVO vo) {
		dao.updateUser(vo);
	}

	@Override
	public void deleteUser(UserVO vo) {
		dao.deleteUser(vo);
	}

	@Override
	public Integer emailCheck(String email) {
		int result = dao.emailCheck(email);
		return result;
	}

	@Override
	public Integer cellPhoneCheck(String cell_phone) {
		int result = dao.cellPhoneCheck(cell_phone);
		return result;
	}

	@Override
	public Integer userCheck(String user_phone) {
		int result = dao.userCheck(user_phone);
		return result;
	}

	@Override
	public List<Map<String, String>> getUserList(String user_phone) {
		return dao.getUserList(user_phone);
	}

	@Override
	public List<Map<String, String>> getUserNameList(String user_id) {
		return dao.getUserNameList(user_id);
	}

	@Override
	public List<Map<String, String>> getUserInfo(String user_name) {
		return dao.getUserInfo(user_name);
	}

	@Override

	public void insertAddress(UserAddressVO userAddressVO) {
		dao.insertAddress(userAddressVO);
	}
	public int changeChoice(ChoiceVO choice) {
		return dao.changeChoice(choice);
	}

	@Override
	public List<ChoiceVO> setChoice(String email) {
		return dao.setChoice(email);
	}

	@Override
	public List<FollowVO> setFollow(String email) {
		return dao.setFollow(email);
	}

	@Override
	public int changeFollow(FollowVO follow) {
		return dao.changeFollow(follow);
	}

	@Override
	public UserVO getOrderUser(String user_id) {
		return dao.getOrderUser(user_id);
	}

	@Override
	public UserVO loginUser(String email) {
		return dao.loginUser(email);
	}
	
	public int setCart(String email) {
		return dao.setCart(email);
	}

	@Override
	public void updateUserInfoAtPayment(UserVO user) {
		dao.updateUserInfoAtPayment(user);
		
	}

	@Override
	public void updateOrderSave(SaveVO point) {
		dao.updateOrderSave( point);
		
	}

	@Override
	public void insertNewOrderSave(SaveVO point) {
		dao.insertNewOrderSave(point);
	}

	@Override
	public void updateAddressAtPayment(UserAddressVO address) {
		dao.updateAddressAtPayment(address);
		
	}

	@Override
	public void deleteHaveCoupon(CouponHaveVO have) {
		dao.deleteHaveCoupon(have);
	}

	@Override
	public void insertUseCoupon(CouponUseVO use) {
		dao.insertUseCoupon(use);
	}
}
