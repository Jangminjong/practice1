package com.idwith.mpweb.user;

public class EmailDTO {
    private String senderMail; //발신자 이메일 주소
    private String receiveMail; //수신자 이메일 주소
    private String subject; //제목
    private String message; //본문
    
	public String getSenderMail() {
		return senderMail;
	}
	public void setSenderMail(String senderMail) {
		this.senderMail = senderMail;
	}
	public String getReceiveMail() {
		return receiveMail;
	}
	public void setReceiveMail(String receiveMail) {
		this.receiveMail = receiveMail;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
    
    
}
