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
				content = "<h1>환영합니다.<br>" + to + "작가님" + "</h1>" + 
						"<br>안녕하세요!<br>Idwith 작가에 등록해 주셔서 감사합니다.<br></p>";
			}else if(result == 0) {
				content = "<h1>안녕하세요.<br>" + to + "회원님" + "</h1>" + 
						"<br>죄송합니다.<br>Idwith 입점신청에 실패하셨습니다. 좋은하루 되세요.<br></p>";
			}
			
			
			helper.setSubject(subject); //제목
			helper.setFrom(from); //보내는 사람
			helper.setTo(to); //받는 사람
			helper.setText(content, true); //메일 내용

			// 이메일 보내기
			mailSender.send(mail);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
