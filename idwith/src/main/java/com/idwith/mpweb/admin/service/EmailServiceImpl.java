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
				content = "<h1>ȯ���մϴ�.<br>" + to + "�۰���" + "</h1>" + 
						"<br>�ȳ��ϼ���!<br>Idwith �۰��� ����� �ּż� �����մϴ�.<br></p>";
			}else if(result == 0) {
				content = "<h1>�ȳ��ϼ���.<br>" + to + "ȸ����" + "</h1>" + 
						"<br>�˼��մϴ�.<br>Idwith ������û�� �����ϼ̽��ϴ�. �����Ϸ� �Ǽ���.<br></p>";
			}else if(result == 2) {
				content = "<h5>안내드립니다<br>" + to + "님 </h5>" + 
						  "<br><h6>귀하의 계정은 Idwith의 운영사항에 위반되어 Block 처리 되었음을 알려드립니다.<br>계정 문의가 있으시면 관리자 메일로 문의주시기 바랍니다.</h6>";
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
