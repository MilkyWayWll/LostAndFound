package cn.jju.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CountDownLatch;

import cn.jju.actionForm.LostForm;
import cn.jju.actionForm.PickForm;
import cn.jju.actionForm.UserForm;
import cn.jju.util.ConnDB;

public class PickDao implements IPickDao{
	private PickForm pick;
	private Connection conn;

	public PickForm getPick() {
		return pick;
	}

	public void setPick(PickForm pick) {
		this.pick = pick;
	}
	
	public PickDao(){
	try {
		this.conn=ConnDB.getConnection();
	} catch (Exception e) {
		e.printStackTrace();
	}	
	}
	/**
	 * 通过传入的拾取物品对象pick将拾取物件信息保存到数据库中
	 * 返回true，表示保存成功，返回false，保存失败
	 * @return boolean
	 */
	@Override
	public boolean insertPick(PickForm pick) throws Exception {
		String sqlin="insert into pick(pick_Name,pname,pick_trait,pick_time,pick_place,pcontact_way)values(?,?,?,?,?,?)";
		PreparedStatement prep = conn.prepareStatement(sqlin);
		prep.setString(1,pick.getPick_Name());
		prep.setString(2, pick.getPname());
		prep.setString(3, pick.getPick_trait());
		prep.setString(4, pick.getPick_time());
		prep.setString(5, pick.getPick_place());
		prep.setString(6, pick.getPcontact_way());
		int count = prep.executeUpdate();
		if (count<0) {
			return false;
		}else{
			return true;
		}		
	}
	/**
	 * 通过传入的失去物品对象pick，获取主键pick_id,对物品的信息进行更新
	 * 返回true，表示更新成功，返回false，更新失败
	 * @return boolean
	 */
	@Override
	public boolean updatePick(PickForm pick) throws Exception {
		String sqluppick="update pick set pname=?,pick_trait=?,pick_time=?,pick_place=?,pcontact_way=? where pick_id=?";
		PreparedStatement prep = conn.prepareStatement(sqluppick);
		prep.setString(1, pick.getPname());
		prep.setString(2, pick.getPick_trait());
		prep.setString(3, pick.getPick_time());
		prep.setString(4, pick.getPick_place());
		prep.setString(5, pick.getPcontact_way());
		prep.setInt(6, pick.getPick_id());
		int count = prep.executeUpdate();
		if (count<0) {
			return false;
		}else{
			return true;
		}
	}
	/**
	 * 对拾取物品信息表pick，进行遍历，将检索结果按照拾取时间升序排列通过List返回。
	 * @return List
	 */
	@Override
	public List searchPick() throws Exception {
		List list =new ArrayList();
		String sqlsearch="select * from pick order by pick_time desc";
		PreparedStatement prep = conn.prepareStatement(sqlsearch);
		ResultSet rs = prep.executeQuery();
		while(rs.next()){
			PickForm pick=new PickForm();
			pick.setPick_id(rs.getInt("pick_id"));
			pick.setPick_Name(rs.getString("pick_Name"));
			pick.setPname(rs.getString("pname"));
			pick.setPick_trait(rs.getString("pick_trait"));
			pick.setPick_time(rs.getString("pick_time"));
			pick.setPick_place(rs.getString("pick_place"));
			pick.setPcontact_way(rs.getString("pcontact_way"));
			pick.setHandway(rs.getInt("hanway"));
			
			list.add(pick);
		}
		return list;
	}
	/**
	 * 通过传入的拾取人的姓名pick_name,检索出这个人所有拾取的物品，
	 * 检索结果按拾取时间升序,通过List返回
	 * @return List
	 */
	@Override
	public List searchPick(String pick_name) throws Exception {
		List list =new ArrayList();
		String sqlsp="select * from pick where pick_name=? order by pick_time desc";
		PreparedStatement prep = conn.prepareStatement(sqlsp);
		prep.setString(1,pick_name);
		ResultSet rs = prep.executeQuery();
		while(rs.next()){
			PickForm pick=new PickForm();
			pick.setPick_id(rs.getInt("pick_id"));
			pick.setPick_Name(rs.getString("pick_Name"));
			pick.setPname(rs.getString("pname"));
			pick.setPick_trait(rs.getString("pick_trait"));
			pick.setPick_time(rs.getString("pick_time"));
			pick.setPick_place(rs.getString("pick_place"));
			pick.setPcontact_way(rs.getString("pcontact_way"));
			pick.setHandway(rs.getInt("hanway"));
			
			list.add(pick);
		}
		return list;
	}
	/**
	 * 通过传入的pick对象，获取主键pick_id，对拾取物品领取状态进行修改
	  * 返回true，表示更新成功，返回false，更新失败
	 * @return boolean
	 */
	@Override
	public boolean updateHanway(PickForm pick) throws Exception {
		String sqluphan="update pick set hanway=? where pick_id=?";
		PreparedStatement prep = conn.prepareStatement(sqluphan);
		prep.setInt(1, pick.getHandway());
		prep.setInt(2, pick.getPick_id());
		int count = prep.executeUpdate();
		if(count<0){
			return false;
		}else{
			return true;
		}
	}
	/**
	 * 通过传入的主键pick_id，删除拾取物品信息
	 * 返回true，表示删除成功，返回false，删除失败
	 * @return boolean
	 */
	@Override
	public boolean deletePick(int pick_id) throws Exception {
		String sqldel="delete from pick where pick_id=?";
		PreparedStatement prep = conn.prepareStatement(sqldel);
		prep.setInt(1, pick_id);
		int count = prep.executeUpdate();
		if (count<0) {
			return false;
		}else{
			return true;
		}
	}

	@Override
	public PickForm findpick(int pick_id) throws Exception {
		String sql="select * from pick where pick_id=?";
		PreparedStatement prep = conn.prepareStatement(sql);
		prep.setInt(1, pick_id);
		ResultSet rs = prep.executeQuery();
		if(rs.next()){
			PickForm pick=new PickForm();
			pick.setPick_id(rs.getInt("pick_id"));
			pick.setPick_Name(rs.getString("pick_Name"));
			pick.setPname(rs.getString("pname"));
			pick.setPick_trait(rs.getString("pick_trait"));
			pick.setPick_time(rs.getString("pick_time"));
			pick.setPick_place(rs.getString("pick_place"));
			pick.setPcontact_way(rs.getString("pcontact_way"));
			pick.setHandway(rs.getInt("hanway"));
			
			return pick;
		}else{
			return null;
		}
	}

	@Override
	public List searchpick(String pname, String pick_trait, String pick_place) throws Exception {
		List list=new ArrayList();
		StringBuffer sqlb=new StringBuffer("select * from pick where 1=1");
		if (pname!=null && !"".equals(pname)) {
			sqlb.append(" and pname like '%"+pname+"%'");
		}
		if (pick_trait!=null && !"".equals(pick_trait)) {
			sqlb.append(" and pick_trait like '%"+pick_trait+"%'");
		}
		if (pick_place!=null && !"".equals(pick_place)) {
			sqlb.append(" and pick_place like '%"+pick_place+"%'");
		}
		sqlb.append("order by pick_time desc");
		String sql=sqlb.toString();
		PreparedStatement prep = conn.prepareStatement(sql);
		ResultSet rs = prep.executeQuery();
		while(rs.next()){
			PickForm pick=new PickForm();
			pick.setPick_id(rs.getInt("pick_id"));
			pick.setPick_Name(rs.getString("pick_Name"));
			pick.setPname(rs.getString("pname"));
			pick.setPick_trait(rs.getString("pick_trait"));
			pick.setPick_time(rs.getString("pick_time"));
			pick.setPick_place(rs.getString("pick_place"));
			pick.setPcontact_way(rs.getString("pcontact_way"));
			pick.setHandway(rs.getInt("hanway"));
			
			list.add(pick);
		}
		
		return list;
	}

}
