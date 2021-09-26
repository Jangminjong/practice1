package com.idwith.mpweb.admin;

/*
 * manager
 * admin_id
 * admin_name
 * admin_pwd
 * admin_phone
 * admin_role
 */

public class AdminVO {
	
	private String adminId;
	private String adminName;
	private String adminPwd;
	private String adminPhone;
	private String adminRole;
	
	
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public String getAdminPwd() {
		return adminPwd;
	}
	public void setAdminPwd(String adminPwd) {
		this.adminPwd = adminPwd;
	}
	public String getAdminPhone() {
		return adminPhone;
	}
	public void setAdminPhone(String adminPhone) {
		this.adminPhone = adminPhone;
	}
	public String getAdminRole() {
		return adminRole;
	}
	public void setAdminRole(String adminRole) {
		this.adminRole = adminRole;
	}
	
	
	@Override
	public String toString() {
		return "AdminVO [adminId=" + adminId + ", adminName=" + adminName + ", adminPwd=" + adminPwd + ", adminPhone="
				+ adminPhone + ", adminRole=" + adminRole + "]";
	}

}
