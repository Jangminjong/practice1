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
	private JavaMailSender mailSender; // root-context.xml�� ������ bean, �������� ����
	
	@Override
	public void sendMail(EmailDTO dto, int result) {
		System.out.println("Service sendMail ����");
		try {
			String subject = dto.getSubject();
			String from = dto.getSenderMail();
			String to = dto.getReceiveMail();
			String content = null;
			
			// �̸��� ��ü
			MimeMessage mail = mailSender.createMimeMessage();

			MimeMessageHelper helper = new MimeMessageHelper(mail, "utf-8");
			
			if(result == 1) {
				content = "<h1>ȯ���մϴ�.<br>" + to + "�۰���" + "</h1>" + 
						"<br>�ȳ��ϼ���!<br>Idwith �۰��� ����� �ּż� �����մϴ�.<br></p>";
			}else if(result == 0) {
				content = "<h1>�ȳ��ϼ���.<br>" + to + "ȸ����" + "</h1>" + 
						"<br>�˼��մϴ�.<br>Idwith ������û�� �����ϼ̽��ϴ�. �����Ϸ� �Ǽ���.<br></p>";
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
