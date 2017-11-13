package cn.jju.actionForm;

public class AdminForm {
	private String  adminName;
	private String  adminPassword;
	private int admin_id;
	

	public AdminForm() {
		super();
	}
	

	public AdminForm(String adminName, String adminPassword, int admin_id) {
		super();
		this.adminName = adminName;
		this.adminPassword = adminPassword;
		this.admin_id = admin_id;
	}
	public int getAdmin_id() {
		return admin_id;
	}
	
	public void setAdmin_id(int admin_id) {
		this.admin_id = admin_id;
	}

	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public String getAdminPassword() {
		return adminPassword;
	}
	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}
	
	
	
}
