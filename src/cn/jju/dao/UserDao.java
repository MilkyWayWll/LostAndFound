package cn.jju.dao;

import java.sql.Connection;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import cn.jju.actionForm.UserForm;

import cn.jju.util.ConnDB;

public class UserDao implements IUserDao{
	private Connection conn;
	private UserForm user;
	
	public UserForm getUser(){
		return user;
	}
	
	public void setUser(UserForm user) {
		this.user = user;
	}
	

	public UserDao()  {
		try {
			this.conn= ConnDB.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 用户登录模块！
	 * 
	 */
	@Override
	public boolean login(UserForm user) throws Exception {
		String sqllogin="select * from user_info where Name=? and Password=?";
			PreparedStatement prep=conn.prepareStatement(sqllogin);
				prep.setString(1, user.getName());
				prep.setString(2, user.getPassword());
			ResultSet rs = prep.executeQuery();
			if (!rs.next()) {
				return false;
			}else {
				user.setUser_id(rs.getInt("User_id"));
				user.setName(rs.getString("Name"));
				user.setPassword(rs.getString("Password"));
				this.user=user;
				return true;
			}
	}
	/**
	 * 用户注册模块！
	 * 需要传入用户名，密码，QQ，E_mail,phone ！
	 * 这个模块没有对用户密码进行重复检测，也没有对用户名重复检测！
	 * 
	 */
	
	@Override
	public boolean addUser(UserForm user) throws Exception{
		String sqladd="insert into user_info(Name,Password,QQ,E_mail,Phone)values(?,?,?,?,?)";
			PreparedStatement prep = conn.prepareStatement(sqladd);
			prep.setString(1, user.getName());
			prep.setString(2, user.getPassword());
			prep.setString(3, user.getQQ());
			prep.setString(4, user.getE_mail());
			prep.setString(5, user.getPhone());
		int n = prep.executeUpdate();
		if (n<0) {
			return false;
		}else{
			return true;
		}
	}
	/**
	 * 修改密码！
	 * 通过传入的user对象，获取user的主键User_id，利用主键的唯一性对密码进行修改！
	 * @return boolean true 修改成功， false 修改失败
	 * @TODO可能出现错误就是主键没有获取成功，可以修改这个方法先利用传入的Name获取主键再利用主键修改
	 */

	@Override
	public boolean updatePassword(UserForm user) throws Exception{
		String sqlPassword="update user_info set Password=? where User_id=?";
		PreparedStatement prep=conn.prepareStatement(sqlPassword);
		prep.setString(1, user.getPassword());
		prep.setInt(2, user.getUser_id());
		int n = prep.executeUpdate();
		if (n<0) {
			return false;
		}else {
			return true;
		}
	}
	/**
	 * 修改User的QQ, E_mail， Phone
	 * 通过传入的user对象，获取user的主键User_id，利用主键的唯一性对User的各项属性进行修改！
	 * @return boolean true 修改成功， false 修改失败
	 * @TODO可能出现错误就是主键没有获取成功，可以修改这个方法先利用传入的Name获取主键再利用主键修改
	 */
	@Override
	public boolean updateUser(UserForm user) throws Exception {
		String sqlupdate="update user_info set QQ=? ,E_mail=? where User_id=?";
		PreparedStatement prep=conn.prepareStatement(sqlupdate);
		prep.setString(1, user.getQQ());
		prep.setString(2, user.getE_mail());
		prep.setInt(3, user.getUser_id());
		int n = prep.executeUpdate();
		if (n<0) {
			return false;
		} else {
			return true;
		}
		
	}
	/**
	 * 重名验证！有重名返回true，没有返回false
	 * @return bolean
	 */
	@Override
	public boolean findUser(String Name) throws Exception {
		String sql="select * from user_info where Name=?";
		PreparedStatement prep=conn.prepareStatement(sql);
		prep.setString(1, Name);
		ResultSet rs = prep.executeQuery();
		if (rs.next()) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	public UserForm findName(int User_id) throws Exception {
		String sql="select * from user_info where User_id=?";
		PreparedStatement prep=conn.prepareStatement(sql);
		prep.setInt(1, User_id);
		ResultSet rs = prep.executeQuery();
		if (rs.next()) {
			UserForm user=new UserForm();
			user.setUser_id(rs.getInt("User_id"));
			user.setName(rs.getString("Name"));
			user.setPassword(rs.getString("Password"));
			user.setQQ(rs.getString("QQ"));
			user.setE_mail(rs.getString("E_mail"));
			user.setPhone(rs.getString("Phone"));
			return user;
		} else {
			return null;
		}
		
	}

	@Override
	public String logintest(int User_id) throws Exception {
		String sql="select * from user_info where User_id=?";
		PreparedStatement prep=conn.prepareStatement(sql);
		prep.setInt(1, User_id);
		ResultSet rs = prep.executeQuery();
		if (rs.next()) {
		
			String User_Name=rs.getString("Name");
			return User_Name;
		} else {
			return null;
		}
	}

	@Override
	public UserForm findpassword(UserForm user) throws Exception {
		String sql="select * from user_info where Name=? and Phone=?";
		PreparedStatement prep=conn.prepareStatement(sql);
		prep.setString(1, user.getName());
		prep.setString(2, user.getPhone());
		ResultSet rs = prep.executeQuery();
		if (rs.next()) {
			UserForm user2=new UserForm();
			user2.setUser_id(rs.getInt("User_id"));
			user2.setName(rs.getString("Name"));
			user2.setPassword(rs.getString("Password"));
			user2.setQQ(rs.getString("QQ"));
			user2.setE_mail(rs.getString("E_mail"));
			user2.setPhone(rs.getString("Phone"));
			return user2;
		} else {
			return null;
		}
	}	
	
}
