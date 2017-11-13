package cn.jju.actionForm;

public class UserForm {
	private  int User_id;
	private String Name;
	private String Password;
	private String  QQ;
	private String E_mail;
	private String  Phone;
	
	public UserForm() {
		super();
	}
	
	public UserForm(int user_id, String name, String password, String qQ, String e_mail, String phone) {
		super();
		User_id = user_id;
		Name = name;
		Password = password;
		QQ = qQ;
		E_mail = e_mail;
		Phone = phone;
	}
	
	public int getUser_id() {
		return User_id;
	}
	public void setUser_id(int user_id) {
		User_id = user_id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getQQ() {
		return QQ;
	}
	public void setQQ(String qQ) {
		QQ = qQ;
	}
	public String getE_mail() {
		return E_mail;
	}
	public void setE_mail(String e_mail) {
		E_mail = e_mail;
	}
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	
	
}
