package cn.jju.test;

import java.sql.Connection;
import java.util.List;

import org.apache.catalina.User;

import cn.jju.actionForm.AdminForm;
import cn.jju.actionForm.LostForm;
import cn.jju.actionForm.PickForm;
import cn.jju.actionForm.UserForm;
import cn.jju.dao.AdminDao;
import cn.jju.dao.LostDao;
import cn.jju.dao.PickDao;
import cn.jju.dao.UserDao;
import cn.jju.util.ConnDB;


public class TestDB {

	public static void main(String[] args) throws Exception {
		//		数据库连接测试
//		ConnDB conndb=new ConnDB();
//		Connection conn = conndb.getConnection();
//		System.out.println(conn);
		/*********用户模块测试**************/
		//      登陆测试
		UserForm user=new UserForm();
		user.setName("老胡");
		user.setPassword("1234");
		UserDao userDao=new UserDao();
		try {
			System.out.println(userDao.login(user));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//注册测试
//		UserForm user=new UserForm();
//		user.setName("姜志豪");
//		user.setPassword("1234");
//		user.setQQ(123456);
//		user.setE_mail("123456@qq.com");
//		user.setPhone(654321);
//		UserDao userDao=new UserDao();
//		try {
//			System.out.println(userDao.addUser(user));
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
	
		//修改密码
//		UserForm user=new UserForm();
//		user.setUser_id(3);
//		user.setPassword("4321");
//		UserDao userDao=new UserDao();
//		try {
//			System.out.println(userDao.updatePassword(user));
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		
		//修改用户信息
//		UserForm user=new UserForm();
//		user.setUser_id(3);
//		user.setQQ(654321);
//		user.setE_mail("123456@qq.com");
//		user.setPhone(654321);
//		UserDao userDao=new UserDao();
//		try {
//			System.out.println(userDao.updateUser(user));
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		/************管理员模块测试*************/
		//登陆模块测试
//		AdminForm adminForm=new AdminForm();
//		adminForm.setAdminName("admin");
//		adminForm.setAdminPassword("123");
//		AdminDao adminDao=new AdminDao();
//		try {
//			System.out.println(adminDao.Adminlogin(adminForm));
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		//遍历注册用户
//			try {
//				AdminDao adminDao=new AdminDao();
//				List userlist = adminDao.checkUser();
//				for (int i=0;i<userlist.size();i++) {
//					UserForm user = (UserForm)userlist.get(i);
//					System.out.println(user.getName());
//				}
//			} catch (Exception e) {
//				e.printStackTrace();
//			}
		//模糊查找
//		AdminDao adminDao =new AdminDao();
//		try {
//			List searchUser = adminDao.searchUser("u", "5", "", "");
//			for (int i=0;i<searchUser.size();i++) {
//				UserForm user = (UserForm)searchUser.get(i);
//				System.out.println(user.getName());
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		//删除用户操作
//		AdminDao adminDao=new AdminDao();
//		UserForm user =new UserForm();
//		user.setUser_id(3);
//		try {
//			 System.out.println(adminDao.deleteUser(user.getUser_id()));
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		//更新用户信息
//		AdminDao adminDao=new AdminDao();
//		UserForm user =new UserForm();
//		user.setUser_id(2);
//		user.setQQ("1234567");
//		user.setE_mail("851313063@qq.com");
//		user.setPhone("15179242490");
//		try {
//			System.out.println(	adminDao.updateUser(user));
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		/***************************Lost模块测试************************/
		//添加Lost信息测试
//		LostForm lostForm=new LostForm();
//		LostDao lostDao=new LostDao();
//		lostForm.setLname("手机");
//		lostForm.setLost_name("huyuxin");
//		lostForm.setLost_trait("黑色");
//		lostForm.setLost_time("2015-01-05");
//		lostForm.setLost_placel("三食堂");
//		lostForm.setLcontact_way("15179242490");
//		lostForm.setLdata("2015-11-12");
//		try {
//			System.out.println(lostDao.insertLost(lostForm));
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		//更新Lost信息
//		LostForm lostForm=new LostForm();
//		LostDao lostDao=new LostDao();
//		lostForm.setLost_id(2);
//		lostForm.setLname("手机");
//		lostForm.setLost_name("huyuxin");
//		lostForm.setLost_trait("黑色");
//		lostForm.setLost_time("2015-01-05");
//		lostForm.setLost_placel("三食堂");
//		lostForm.setLcontact_way("901234667");
//		try {
//			System.out.println(lostDao.updateLost(lostForm));
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		//遍历Lost
//		LostDao lostDao=new LostDao();
//		try {
//			List searchLost = lostDao.searchLost();
//			for (int i=0;i<searchLost.size();i++) {
//				LostForm lost = (LostForm)searchLost.get(i);
//				System.out.println(lost.getLname());
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		//根据lost_name检索丢失人的所有丢失物件
//		LostDao lostDao =new LostDao();
//		UserForm userForm=new UserForm();
//		userForm.setName("huyuxin");
//		try {
//			List searchLost = lostDao.searchLost(userForm.getName());
//			for(int i=0;i<searchLost.size();i++){
//				LostForm lostForm = (LostForm)searchLost.get(i);
//				System.out.println(lostForm.getLname());
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		//更新丢失结果测试
//		LostForm lostForm=new LostForm();
//		lostForm.setLost_id(3);
//		lostForm.setResult(1);
//		LostDao lostDao=new LostDao();
//		try {
//			System.out.println(lostDao.updateResult(lostForm));
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		//删除丢失物品信息
//		LostForm lostForm=new LostForm();
//		lostForm.setLost_id(3);
//		LostDao lostDao=new LostDao();
//		try {
//			System.out.println(lostDao.deleteLost(lostForm.getLost_id()));
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		/****************拾取物品类测试********************/
		//添加拾取物品信息
//		PickForm pickForm=new PickForm();
//		pickForm.setPick_Name("huyuxin");
//		pickForm.setPname("手机");
//		pickForm.setPick_trait("黑色");
//		pickForm.setPick_time("2015-12-01");
//		pickForm.setPick_place("三食堂");
//		pickForm.setPcontact_way("QQ851313063");
//		PickDao pickDao=new PickDao();
//		try {
//			System.out.println(pickDao.insertPick(pickForm));
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		//更新拾取物品信息
//		PickForm pickForm=new PickForm();
//		pickForm.setPick_id(3);
//		pickForm.setPname("手机");
//		pickForm.setPick_trait("前黑后白");
//		pickForm.setPick_time("2015-12-01");
//		pickForm.setPick_place("三食堂");
//		pickForm.setPcontact_way("QQ851313063");
//		PickDao pickDao=new PickDao();
//		try {
//			System.out.println(pickDao.updatePick(pickForm));
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		//遍历拾取物品表
//		PickDao pickDao=new PickDao();
//		try {
//			List searchPick = pickDao.searchPick();
//			for(int i=0;i<searchPick.size();i++){
//				PickForm pickForm = (PickForm)searchPick.get(i);
//				System.out.println(pickForm.getPname());
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		//根据拾取物品人姓名检索所有拾取物品
//		UserForm userForm=new UserForm();
//		userForm.setName("yuxin");
//		PickDao pickDao=new PickDao();
//		try {
//			List searchPick = pickDao.searchPick(userForm.getName());
//			for(int i=0;i<searchPick.size();i++){
//				PickForm pickForm = (PickForm)searchPick.get(i);
//				System.out.println(pickForm.getPname());
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		//更新物品拾取状态
//		PickForm pickForm=new PickForm();
//		pickForm.setHandway(1);
//		pickForm.setPick_id(3);
//		PickDao pickDao=new PickDao();
//		try {
//			System.out.println(pickDao.updateHanway(pickForm));
//		} catch (Exception e) {
//			e.printStackTrace();
//		} 
//		PickForm pickForm=new PickForm();
//		pickForm.setPick_id(3);
//		PickDao pickDao=new PickDao();
//		try {
//			System.out.println(pickDao.deletePick(pickForm.getPick_id()));
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
	}

}
