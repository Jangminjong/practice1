package com.idwith.mpweb.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class noticeController {
	
	@GetMapping("/adminNotice.mdo")
	public String adminNotice() {
		return "adminNotice";
	}
	
	@GetMapping("/adminInsertNotice.mdo")
	public String adminInsertNotice() {
		return "adminInsertNotice";
	}
	
	@GetMapping("/adminNoticeContent.mdo")
	public String adminNoticeContent() {
		return "adminNoticeContent";
	}
	
	@GetMapping("/userNotice.mdo")
	public String userNotice() {
		return "userNotice";
	}
	
	@GetMapping("/userInsertNotice.mdo")
	public String userInsertNotice() {
		return "userInsertNotice";
	}
	
	@GetMapping("/userNoticeContent.mdo")
	public String userNoticeContent() {
		return "userNoticeContent";
	}
	
	@GetMapping("/qna.mdo")
	public String qna() {
		return "qna";
	}
	
	@GetMapping("/answer.mdo")
	public String answer() {
		return "answer";
	}

}
