package cn.jju.dao;




import java.util.List;

import cn.jju.actionForm.UserForm;

public interface IUserDao {
	
	public	boolean login(UserForm user)throws Exception;
	public  boolean addUser(UserForm user) throws Exception;
	public  boolean updatePassword(UserForm user)throws Exception;
	public  boolean updateUser(UserForm user)throws Exception;
	public boolean findUser(String Name) throws Exception;
	public UserForm findName(int User_id)throws Exception;
	public String logintest(int User_id) throws Exception;
	public UserForm findpassword(UserForm user)throws Exception;
	
}
