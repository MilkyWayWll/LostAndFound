package cn.jju.actionForm;

public class LostForm {
	private int lost_id;
	private String lname;
	private String lost_trait;
	private String lost_time;        
	private String lost_placel;
	private String lost_name;
	private String lcontact_way;
	private String ldata;          
	private int result;
	
	public LostForm() {
		super();
	}

	public LostForm(int lost_id, String lname, String lost_trait, String lost_time, String lost_placel,
			String lost_name, String lcontact_way, String ldate, int result) {
		super();
		this.lost_id = lost_id;
		this.lname = lname;
		this.lost_trait = lost_trait;
		this.lost_time = lost_time;
		this.lost_placel = lost_placel;
		this.lost_name = lost_name;
		this.lcontact_way = lcontact_way;
		this.ldata = ldata;
		this.result = result;
	}

	public int getLost_id() {
		return lost_id;
	}

	public void setLost_id(int lost_id) {
		this.lost_id = lost_id;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getLost_trait() {
		return lost_trait;
	}

	public void setLost_trait(String lost_trait) {
		this.lost_trait = lost_trait;
	}

	public String getLost_time() {
		return lost_time;
	}

	public void setLost_time(String lost_time) {
		this.lost_time = lost_time;
	}

	public String getLost_placel() {
		return lost_placel;
	}

	public void setLost_placel(String lost_placel) {
		this.lost_placel = lost_placel;
	}

	public String getLost_name() {
		return lost_name;
	}

	public void setLost_name(String lost_name) {
		this.lost_name = lost_name;
	}

	public String getLcontact_way() {
		return lcontact_way;
	}

	public void setLcontact_way(String lcontact_way) {
		this.lcontact_way = lcontact_way;
	}

	public String getLdata() {
		return ldata;
	}

	public void setLdata(String ldata) {
		this.ldata = ldata;
	}

	public int getResult() {
		return result;
	}

	public void setResult(int result) {
		this.result = result;
	}
	
	
	

	
	
	
}
