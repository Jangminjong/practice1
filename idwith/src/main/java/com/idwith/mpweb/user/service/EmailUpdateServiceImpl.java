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
	private JavaMailSender mailSender; // root-context.xml에 설정한 bean, 의존성을 주입
	
	@Override
	public void sendMail(EmailDTO dto) {
		System.out.println("Service sendMail 실행");
		try {
			String subject = dto.getSubject();
			String from = dto.getSenderMail();
			String to = dto.getReceiveMail();
			String content = null;
			
			// 이메일 객체
			MimeMessage mail = mailSender.createMimeMessage();

			MimeMessageHelper helper = new MimeMessageHelper(mail, "utf-8");
			
			content = "<h2>메일 주소 변경 사항을 확인해 주세요..<br></h2>" + 
					"이 메일은" + to + "가 정확한 이메일 주소인지 확인하는 메일입니다.<br>"
							+ "아래의 링크를 클릭하시면, 이메일 인증이 확인되어 변경된 이메일로 회원정보가 반영됩니다.<br>"
							+ "<a href='http://localhost:8080/mpweb/emailUpdateSuccess.do'>이메일 주소 변경 완료하러 가기</a><br>"
							+ "아이디위드를 이용해 주셔서 감사합니다.<br>"
							+ "젊은 작가들의 아이디어 마켓<br>"
							+ "http://localhost:8080/mpweb/index.do";
			
			
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
