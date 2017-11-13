package cn.jju.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import cn.jju.actionForm.LostForm;
import cn.jju.actionForm.UserForm;
import cn.jju.util.ConnDB;

public class LostDao implements ILostDao{
	private LostForm lost;
	private Connection conn;
		
	public LostForm getLost() {
		return lost;
	}

	public void setLost(LostForm lost) {
		this.lost = lost;
	}
	
	public LostDao(){
		try {
			this.conn=ConnDB.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	/**
	 * 添加物品丢失信息，添加的信息为lname 丢失物品名称,lost_trait丢失物品特征,lost_time物品丢失时间,
	 * lost_placel物品丢失地点,lcontact_way丢失人联系方式，
	 * 返回true为添加成功，返回false为添加失败
	 * @return boolean
	 */
	@Override
	public boolean insertLost(LostForm lost) throws Exception {
		String sqlinsert="insert into lost (lname,lost_trait,lost_time,lost_placel,lost_name,lcontact_way,ldata) values (?,?,?,?,?,?,?)";
		PreparedStatement prep = conn.prepareStatement(sqlinsert);
		prep.setString(1, lost.getLname());
		prep.setString(2, lost.getLost_trait());
		prep.setString(3, lost.getLost_time());
		prep.setString(4, lost.getLost_placel());
		prep.setString(5, lost.getLost_name());
		prep.setString(6, lost.getLcontact_way());
		prep.setString(7, lost.getLdata());
		int count = prep.executeUpdate();
		if (count<0) {
			return false;
		}else {
			return true;
		}
	}
     /**
      * 根据主键lost_id，更新丢失物品信息，lname 丢失物品名称,lost_trait丢失物品特征,lost_time物品丢失时间,
	  * lost_placel物品丢失地点,lcontact_way丢失人联系方式，
      * 返回true为更新成功，返回false为更新失败
      * @return boolean
      */
	@Override
	public boolean updateLost(LostForm lost) throws Exception {
		String sqlupdate="update lost set lname=?,lost_trait=?,lost_time=?,lost_placel=?,lcontact_way=? where lost_id=?";
		PreparedStatement prep = conn.prepareStatement(sqlupdate);
		prep.setString(1, lost.getLname());
		prep.setString(2, lost.getLost_trait());
		prep.setString(3, lost.getLost_time());
		prep.setString(4, lost.getLost_placel());
		prep.setString(5, lost.getLcontact_way());
		prep.setInt(6, lost.getLost_id());
		int count = prep.executeUpdate();
		if (count<0) {
			return false;
		}else{
			return true;
		}
	}
	/**
	 * 对丢失物品表进行遍历，将遍历结果lost按丢失上报时间ldata升序排列放置到List中，返回List可获取到以下信息
	 *  lname 丢失物品名称,lost_trait丢失物品特征,lost_time物品丢失时间,
	 * lost_placel物品丢失地点,lcontact_way丢失人联系方式，ldata上报时间，result丢失物品是否找回
	 * @return List
	 */
	@Override
	public List searchLost() throws Exception {
		List list =new ArrayList();
		String sqlsearch="select * from lost order by ldata desc";
		PreparedStatement prep = conn.prepareStatement(sqlsearch);
		ResultSet rs = prep.executeQuery();
		while(rs.next()){
			LostForm lost=new LostForm();
			lost.setLost_id(rs.getInt("lost_id"));
			lost.setLname(rs.getString("lname"));
			lost.setLost_trait(rs.getString("lost_trait"));
			lost.setLost_time(rs.getString("lost_time"));
			lost.setLost_placel(rs.getString("lost_placel"));
			lost.setLost_name(rs.getString("lost_name"));
			lost.setLcontact_way(rs.getString("lcontact_way"));
			lost.setLdata(rs.getString("ldata"));
			lost.setResult(rs.getInt("result"));	
			
			list.add(lost);
		}
		return list;
	}
	/**
	 * 通过传入丢失人姓名检索当前，丢失人已经发布的丢失信息，
	 * 将检索的信息按上报日期升序,保存在List中
	 * @return List
	 */
	
	@Override
	public List searchLost(String lost_name) throws Exception {
		List list=new ArrayList();
		String sqlsl="select * from lost where lost_name=? order by ldata desc";
		PreparedStatement prep = conn.prepareStatement(sqlsl);
		prep.setString(1, lost_name);
		ResultSet rs = prep.executeQuery();
		while(rs.next()){
			LostForm lost=new LostForm();
			lost.setLost_id(rs.getInt("lost_id"));
			lost.setLname(rs.getString("lname"));
			lost.setLost_trait(rs.getString("lost_trait"));
			lost.setLost_time(rs.getString("lost_time"));
			lost.setLost_placel(rs.getString("lost_placel"));
			lost.setLost_name(rs.getString("lost_name"));
			lost.setLcontact_way(rs.getString("lcontact_way"));
			lost.setLdata(rs.getString("ldata"));
			lost.setResult(rs.getInt("result"));
			
			list.add(lost);
		}
		return list;
	}
	/**
	 * 通过传入物品丢失对象Lost，获取丢失物品的id和result,对物品丢失状态进行修改！
	 * 返回true,则修改信息成功，false修改信息失败
	 * @return boolean
	 */
	@Override
	public boolean updateResult(LostForm lost) throws Exception {
		String sqlupdate="update lost set result=? where lost_id=?";
		PreparedStatement prep = conn.prepareStatement(sqlupdate);
		prep.setInt(1, lost.getResult());
		prep.setInt(2, lost.getLost_id());
		int count = prep.executeUpdate();
		if (count<0) {
			return false;
		}else{
			return true;
		}
	}
	/**
	 *通过传入的丢失物品的主键lost_id,将丢失物品信息删除。
	 *返回true 删除成功，返回false，删除失败
	 *@return boolean
	 */
	@Override
	public boolean deleteLost(int lost_id) throws Exception {
		String sqldel="delete from lost where lost_id=?";
		PreparedStatement prep = conn.prepareStatement(sqldel);
		prep.setInt(1,lost_id);
		int count = prep.executeUpdate();
		if (count<0) {
			return false;
		}else{
			return true;
		}
	}

	@Override
	public LostForm findid(int lost_id) throws Exception {
		String sql="select * from lost where lost_id=?";
		PreparedStatement prep=conn.prepareStatement(sql);
		prep.setInt(1, lost_id);
		ResultSet rs = prep.executeQuery();
		if (rs.next()) {
			LostForm lost=new LostForm();
			lost.setLost_id(rs.getInt("lost_id"));
			lost.setLname(rs.getString("lname"));
			lost.setLost_trait(rs.getString("lost_trait"));
			lost.setLost_time(rs.getString("lost_time"));
			lost.setLost_placel(rs.getString("lost_placel"));
			lost.setLost_name(rs.getString("lost_name"));
			lost.setLcontact_way(rs.getString("lcontact_way"));
			lost.setLdata(rs.getString("ldata"));
			lost.setResult(rs.getInt("result"));
			
			return lost;
		} else {
			return null;
		}
	}

	
	@Override
	public List searchlost(String lname, String lost_trait, String lost_place) throws Exception {
		List list=new ArrayList();
		StringBuffer sqlb=new StringBuffer("select * from lost where 1=1");
		if (lname!=null && !"".equals(lname)) {
			sqlb.append(" and lname like '%"+lname+"%'");
		}
		if (lost_trait!=null && !"".equals(lost_trait)) {
			sqlb.append(" and lost_trait like '%"+lost_trait+"%'");
		}
		if (lost_place!=null && !"".equals(lost_place)) {
			sqlb.append(" and lost_placel like '%"+lost_place+"%'");
		}
		sqlb.append(" order by ldata desc");
		String sql=sqlb.toString();
		PreparedStatement prep = conn.prepareStatement(sql);
		ResultSet rs = prep.executeQuery();
		while(rs.next()){
			LostForm lost=new LostForm();
			lost.setLost_id(rs.getInt("lost_id"));
			lost.setLname(rs.getString("lname"));
			lost.setLost_trait(rs.getString("lost_trait"));
			lost.setLost_time(rs.getString("lost_time"));
			lost.setLost_placel(rs.getString("lost_placel"));
			lost.setLost_name(rs.getString("lost_name"));
			lost.setLcontact_way(rs.getString("lcontact_way"));
			lost.setLdata(rs.getString("ldata"));
			lost.setResult(rs.getInt("result"));
			
			list.add(lost);
		}
		
		return list;
	}
	
	
}
