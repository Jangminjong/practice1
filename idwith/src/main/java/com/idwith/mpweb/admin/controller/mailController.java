package com.idwith.mpweb.admin.controller;


import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class mailController {

	@Autowired
	private JavaMailSender mailSender;

	// mailSending 코드
	@RequestMapping(value = "mailSending.mdo")
	public String mailSending(HttpServletRequest request, MultipartHttpServletRequest multi) {

		String setfrom = "";
		String tomail = request.getParameter("tomail"); //받는 사람 이메일
		String title = request.getParameter("title"); // 제목
		String content = request.getParameter("content"); // 내용

		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message,
					true, "UTF-8");

			messageHelper.setFrom(setfrom); //보내는사람을 생략하면 정상작동을 하지 않음
			messageHelper.setTo(tomail); // 받는 사람 이메일
			messageHelper.setSubject(title); // 메일 제목은 생략이 가능
			messageHelper.setText(content); // 메일 내용
			
			mailSender.send(message);
		} catch (Exception e) {
			System.out.println(e);
		}

		return "main/main.tiles";
	}
}
