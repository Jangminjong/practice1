package com.idwith.mpweb.user.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.idwith.mpweb.user.UserAddressVO;
import com.idwith.mpweb.user.UserVO;
import com.idwith.mpweb.user.service.UserService;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Controller
public class SignController {
	@Autowired
	private UserService userService;

	@GetMapping("/sign.do")
	public String sign(UserVO vo) {
		return "sign";
	}

	@GetMapping("/sign_choice.do")
	public String signChoice() {
		return "sign_choice";
	}
	

	/* ȸ������ - sms ����*/
	@RequestMapping(value = "/sendSms.do", method = RequestMethod.POST)
	@ResponseBody
	public HashMap<String, String> sendSms(HttpServletRequest request) throws Exception {
		System.out.println("SMS ���� ��Ʈ�ѷ� ����");
		String api_key = "NCSE2QVWOHHJKJLS";
		String api_secret = "ZPPUAJDBF60J9SU9MIE74YWWNG3YXLUJ";
		Message coolsms = new Message(api_key, api_secret);
		
		//���� ���� ��
		int randomPIN = (int)(Math.random()*9000)+1000;
		String cell_phone = request.getParameter("cell_phone");
		System.out.println("���� ��ȭ��ȣ : " + cell_phone);

		// 4 params(to, from, type, text) are mandatory. must be filled
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("to", cell_phone);
		params.put("from", "01091592149");
		params.put("type", "SMS");
		params.put("text", "본인인증 번호입니다.(" +  randomPIN +") 인증 부탁드립니다.");
		params.put("app_version", "test app 1.2"); // application name and version
		params.put("randomPIN", String.valueOf(randomPIN));

		System.out.println("������ȣ : " + randomPIN);
		try {
			JSONObject obj = (JSONObject) coolsms.send(params);
			System.out.println(obj.toString());
		} catch (CoolsmsException e) {
			System.out.println(e.getMessage());
			System.out.println("����");
			System.out.println(e.getCode());
		}

		return params;
	}

	/* ID 찾기 */
	@RequestMapping(value = "/account_check.do", method = RequestMethod.POST)
	public String accountCheck(HttpServletRequest request, Model model) {
		String user_phone = request.getParameter("user_phone");
		int result = userService.userCheck(user_phone);
		
		if(result == 1) {
			model.addAttribute("user_phone", user_phone);
		}
		
		System.out.println("ID ã�� ��� : " + result);
		return "account_check";
	}
	
	@RequestMapping(value = "/account_step1.do", method = RequestMethod.POST)
	public String accountStepOne(HttpServletRequest request, Model model) {
		String user_phone = request.getParameter("user_phone");
		System.out.println("����1 : " + user_phone);
		
		List<Map<String, String>> userList = userService.getUserList(user_phone);
		model.addAttribute("userList", userList);
		return "account_step1";
	}
	
	@RequestMapping(value = "/account_step2.do", method = RequestMethod.POST)
	public String accountStepTwo(HttpServletRequest request, Model model) {
		String user_id = request.getParameter("user_id");
		System.out.println("����2 : " + user_id);
		
		List<Map<String, String>> userList = userService.getUserNameList(user_id);
		
		model.addAttribute("userList", userList);
		
		return "account_step2";
	}
	
	@RequestMapping(value = "/account_success.do", method = RequestMethod.POST)
	public String accountSuccess(HttpServletRequest request, Model model) {
		String user_name = request.getParameter("user_name");
		
		List<Map<String, String>> userInfo = userService.getUserInfo(user_name);
		System.out.println("��� �� : " +userInfo);
		
		model.addAttribute("userInfo", user_name);
		
		return "account_success";
	}
	
	@RequestMapping(value = "/signupSuccess.do", method = RequestMethod.POST)
	public String signupSuccess(UserVO vo) {
		System.out.println("회원가입 시 성공 컨트롤러 실행");
		userService.insertUser(vo);

		UserAddressVO userAddressVO = new UserAddressVO();
		userAddressVO.setUser_order(1);
		userAddressVO.setUser_id(vo.getUser_id());
		userAddressVO.setUser_name(vo.getUser_name());
		userAddressVO.setUser_phone(vo.getUser_phone());
		
		userService.insertAddress(userAddressVO);
		return "signupSuccess";
	}
	
}
