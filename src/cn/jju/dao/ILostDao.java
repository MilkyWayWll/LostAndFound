package cn.jju.dao;



import java.util.List;

import cn.jju.actionForm.LostForm;
import cn.jju.actionForm.UserForm;

public interface ILostDao {

	public  boolean insertLost(LostForm lost) throws Exception;
	public  boolean updateLost(LostForm lost)throws Exception;
	public  List	searchLost()throws Exception;
	public  List	searchLost(String lost_name)throws Exception;
	public  boolean updateResult(LostForm lost)throws Exception;
	public  boolean deleteLost(int lost_id) throws Exception;
	public  LostForm findid(int lost_id) throws Exception;
	public List searchlost(String lname,String lost_trait,String lost_place) throws Exception;
}
