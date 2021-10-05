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
			}else if(result == 2) {
				content = "<h3>안내드립니다<br>" + to + "님 </h3>" + 
						  "<br><h6>귀하의 계정은 Idwith의 운영사항에 위반되어 Block 처리 되었음을 알려드립니다.<br>계정 문의가 있으시면 관리자 메일로 문의주시기 바랍니다.</h6>";
			}else if(result == 3) {
				content = "<h3>안내드립니다<br>" + to + "님 </h3>" + 
						  "<br><h6>귀하의 계정은 복원처리 되었습니다.<br>계정 문의가 있으시면 관리자 메일로 문의주시기 바랍니다.</h6>";
			}
			
			helper.setSubject(subject); //����
			helper.setFrom(from); //������ ���ㅁ
			helper.setTo(to); //�޴� ���
			helper.setText(content, true); //���� ����

			// �̸��� ������
			mailSender.send(mail);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
