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
			
			content = "<h2>���� �ּ� ���� ������ Ȯ���� �ּ���..<br></h2>" + 
					"�� ������" + to + "�� ��Ȯ�� �̸��� �ּ����� Ȯ���ϴ� �����Դϴ�.<br>"
							+ "�Ʒ��� ��ũ�� Ŭ���Ͻø�, �̸��� ������ Ȯ�εǾ� ����� �̸��Ϸ� ȸ�������� �ݿ��˴ϴ�.<br>"
							+ "<a href='http://localhost:8080/mpweb/emailUpdateSuccess.do'>�̸��� �ּ� ���� �Ϸ��Ϸ� ����</a><br>"
							+ "���̵����带 �̿��� �ּż� �����մϴ�.<br>"
							+ "���� �۰����� ���̵�� ����<br>"
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
