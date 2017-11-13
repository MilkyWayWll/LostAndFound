package cn.jju.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import cn.jju.actionForm.AdminForm;
import cn.jju.actionForm.UserForm;
import cn.jju.util.ConnDB;

public class AdminDao implements IAdminDao{
	private Connection conn;
	private AdminForm admin;
	
	public AdminForm getAdmin() {
		return admin;
	}

	public void setAdmin(AdminForm admin) {
		this.admin = admin;
	}
	
	
	public AdminDao()  {
		try {
			this.conn=ConnDB.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 管理员登陆模块  登陆失败 返回false，登陆成功返回true
	 * @return boolean
	 */
	@Override
	public boolean Adminlogin(AdminForm admin) throws Exception {
		ResultSet rs;
	
			String sqllogin="select * from admin where adminName=? and adminPassword=?";
				PreparedStatement prep=conn.prepareStatement(sqllogin);
					prep.setString(1, admin.getAdminName());
					prep.setString(2, admin.getAdminPassword());
				rs = prep.executeQuery();
	
			if (!rs.next()) {
				return false;
			}else {
				admin.setAdmin_id(rs.getInt("admin_id"));
				admin.setAdminName(rs.getString("adminName"));
				admin.setAdminPassword(rs.getString("adminPassword"));
				this.admin=admin;
				return true;
			}
	}
	
	/**
	 * 管理员对当前所有用户进行遍历，将遍历结果user放按User_id升序排列到List中，通过List返回，
	 * 可以获取到用户的Name,QQ,E_mail,Phone;
	 * @return List
	 * 
	 */
	@Override
	public List checkUser() throws Exception {
		List list=new ArrayList();
		String sqlcheck="select * from user_info order by User_id ASC";
		PreparedStatement prep = conn.prepareStatement(sqlcheck);
		ResultSet rs = prep.executeQuery();
		while(rs.next()){
			UserForm user=new UserForm();
			user.setName(rs.getString("Name"));
			user.setQQ(rs.getString("QQ"));
			user.setE_mail(rs.getString("E_mail"));
			user.setPhone(rs.getString("Phone"));
		
			list.add(user);
		}
		return list;
	}	
	/**
	 * 利用SQL语句中的like对user_info进行模糊查找，查找关键词可以是Name，QQ，E_mail,Phone
	 * 将遍历结果user放按User_id升序排列到List中，通过List返回
	 * @return List
	 */
	@Override
	public List searchUser(String Name,String QQ,String E_mail,String Phone) throws Exception {
		List list=new ArrayList();
		StringBuffer sqlb=new StringBuffer("select * from user_info where 1=1");
		if (Name!=null && !"".equals(Name)) {
			sqlb.append(" and Name like '%"+Name+"%'");
		}
		if (QQ!=null && !"".equals(QQ)) {
			sqlb.append(" and QQ like '%"+QQ+"%'");
		}
		if (E_mail!=null && !"".equals(E_mail)) {
			sqlb.append(" and E_mail like '%"+E_mail+"%'");
		}
		if (Phone!=null && !"".equals(Phone)) {
			sqlb.append(" and Phone like '%"+Phone+"%'");
		}
		sqlb.append(" order by User_id");
		String sql=sqlb.toString();
		PreparedStatement prep = conn.prepareStatement(sql);
		ResultSet rs = prep.executeQuery();
		while(rs.next()){
			UserForm user =new UserForm();
			user.setName(rs.getString("Name"));
			user.setQQ(rs.getString("QQ"));
			user.setE_mail(rs.getString("E_mail"));
			user.setPhone(rs.getString("Phone"));
			
			list.add(user);
		}
		return list;
	}
	/**
	 * 删除用户操作，通过传入的user主键User_id，将数据库中的对应用户数据删除
	 * 删除成功返回true,删除失败返回false
	 * @return boolean
	 */
	@Override
	public boolean deleteUser(int User_id) throws Exception {
		String sqldel="delete from user_info where User_id=?";
		PreparedStatement prep = conn.prepareStatement(sqldel);
		prep.setInt(1, User_id);
		int count = prep.executeUpdate();
		if (count<0) {
			return false;
		}else {
			return true;
		}
		
	}
	/**
	 * 管理员更新用户数据操作，通过传入的user对象中的user主键User_id搜索出对应user对象并更新它的数据
	 * 更新的数据为QQ，E_mail,Phone.返回值为true 更新成功，返回flase更新失败
	 * @return boolean
	 */
	@Override
	public boolean updateUser(UserForm user) throws Exception {
		String sqlupdate="update user_info set QQ=? ,E_mail=?,Phone=? where User_id=?";
		PreparedStatement prep=conn.prepareStatement(sqlupdate);
		prep.setString(1, user.getQQ());
		prep.setString(2, user.getE_mail());
		prep.setString(3, user.getPhone());
		prep.setInt(4, user.getUser_id());
		int n = prep.executeUpdate();
		if (n<0) {
			return false;
		} else {
			return true;
		}
	}

}
