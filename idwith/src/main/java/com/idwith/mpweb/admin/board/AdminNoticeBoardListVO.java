package com.idwith.mpweb.admin.board;

import java.util.List;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "adminNoticeList")
@XmlAccessorType(XmlAccessType.FIELD)
public class AdminNoticeBoardListVO {
	
	@XmlElement(name = "adminNotice")
	private List<AdminNoticeBoardVO> adminNoticeList;

	public List<AdminNoticeBoardVO> getAdminNoticeList() {
		return adminNoticeList;
	}

	public void setAdminNoticeList(List<AdminNoticeBoardVO> adminNoticeList) {
		this.adminNoticeList = adminNoticeList;
	}

}
