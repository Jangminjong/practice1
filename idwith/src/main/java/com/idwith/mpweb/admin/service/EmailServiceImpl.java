package com.idwith.mpweb.admin.service;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.admin.EmailDTO;

@Service
public class EmailServiceImpl implements EmailService {

	@Autowired
	private JavaMailSender mailSender; // root-context.xml에 설정한 bean, 의존성을 주입
	
	@Override
	public void sendMail(EmailDTO dto, int result) {
		System.out.println("Service sendMail 실행");
		try {
			String subject = dto.getSubject();
			String from = dto.getSenderMail();
			String to = dto.getReceiveMail();
			String content = null;
			
			// 이메일 객체
			MimeMessage mail = mailSender.createMimeMessage();

			MimeMessageHelper helper = new MimeMessageHelper(mail, "utf-8");
			
			if(result == 1) {
				content = "<h1>안녕하세요.<br>" + to + "작가님" + "</h1>" + 
						"<br>입점 신청이 승인되셨습니다. 감사합니다.<br></p>";
			}else if(result == 0) {
				content = "<h1>안녕하세요.<br>" + to + "작가님" + "</h1>" + 
						"<br>입점 신청이 거부되셨습니다. 좋은하루 되세요.<br></p>";
			}
			
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
