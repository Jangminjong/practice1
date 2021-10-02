package com.idwith.mpweb.user.service;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.admin.EmailDTO;

@Service
public class EmailUpdateServiceImpl implements EmailUpdateService {

	@Autowired
	private JavaMailSender mailSender; // root-context.xml�� ������ bean, �������� ����
	
	@Override
	public void sendMail(EmailDTO dto) {
		System.out.println("Service sendMail ����");
		try {
			String subject = dto.getSubject();
			String from = dto.getSenderMail();
			String to = dto.getReceiveMail();
			String content = null;
			
			// �̸��� ��ü
			MimeMessage mail = mailSender.createMimeMessage();

			MimeMessageHelper helper = new MimeMessageHelper(mail, "utf-8");
			
			content = "<h2>[IdWith]<br></h2>" + 
					"안녕하세요!" + to + "회원님.<br>"
							+ "이메일변경 인증메일 입니다.<br>"
							+ "<a href='http://localhost:8080/mpweb/emailUpdateSuccess.do'></a><br>"
							+ "위의 링크를 클릭하시면, 이메일 인증이 확인되어 변경된 이메일로 회원정보가 반영됩니다. <br>"
							+ "아이디어스를 이용해 주셔서 감사합니다.<br>"
							+ "http://localhost:8080/mpweb/index.do";
			
			
			helper.setSubject(subject); //����
			helper.setFrom(from); //������ ���
			helper.setTo(to); //�޴� ���
			helper.setText(content, true); //���� ����

			// �̸��� ������
			mailSender.send(mail);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
