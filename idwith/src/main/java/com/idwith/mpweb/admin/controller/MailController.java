package com.idwith.mpweb.admin.controller;


import org.springframework.stereotype.Controller;

@Controller
public class MailController {

//	@Autowired
//	private JavaMailSender mailSender;

	// mailSending �ڵ�
//	@RequestMapping(value = "mailSending.mdo")
//	public String mailSending(HttpServletRequest request) {
//
//		String setfrom = "";
//		String tomail = request.getParameter("tomail"); // �޴� ��� �̸���
//		String title = request.getParameter("title"); // ����
//		String content = request.getParameter("content"); // ����
//
//		try {
//			MimeMessage message = mailSender.createMimeMessage();
//			MimeMessageHelper messageHelper = new MimeMessageHelper(message,
//					true, "UTF-8");
//
//			messageHelper.setFrom(setfrom); // �����»�� �����ϸ� �����۵��� ����
//			messageHelper.setTo(tomail); // �޴»�� �̸���
//			messageHelper.setSubject(title); // ���������� ������ �����ϴ�
//			messageHelper.setText(content); // ���� ����
//
//			mailSender.send(message);
//		} catch (Exception e) {
//			System.out.println(e);
//		}
//
//		return "main/main.tiles";
//	}
}
