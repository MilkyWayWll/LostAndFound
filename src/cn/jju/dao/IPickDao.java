package cn.jju.dao;

import java.util.List;

import cn.jju.actionForm.LostForm;
import cn.jju.actionForm.PickForm;
import cn.jju.actionForm.UserForm;

public interface IPickDao {
	
	public  boolean insertPick(PickForm pick) throws Exception;
	public  boolean updatePick(PickForm pick)throws Exception;
	public  List	searchPick()throws Exception;
	public  List	searchPick(String pick_name)throws Exception;
	public  boolean updateHanway(PickForm pick)throws Exception;
	public  boolean deletePick(int pick_id) throws Exception;
	public  PickForm findpick(int pick_id)throws Exception;
	public List searchpick(String pname, String pick_trait, String pick_place) throws Exception;
}
