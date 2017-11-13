package cn.jju.dao;


import java.util.List;

import cn.jju.actionForm.AdminForm;

import cn.jju.actionForm.UserForm;

public interface IAdminDao {
	
	public boolean Adminlogin(AdminForm admin) throws Exception;
	
	public  List checkUser() throws Exception;
	public  List searchUser(String Name,String QQ,String E_mail,String Phone) throws Exception;
	public  boolean deleteUser(int User_id) throws Exception;
	public 	boolean updateUser(UserForm user) throws Exception;
		
}
