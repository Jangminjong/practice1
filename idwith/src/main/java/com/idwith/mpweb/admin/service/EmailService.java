package com.idwith.mpweb.admin.service;

import com.idwith.mpweb.admin.EmailDTO;

public interface EmailService {
	public void sendMail(EmailDTO dto, int result);
}
