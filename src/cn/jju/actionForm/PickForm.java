package cn.jju.actionForm;

public class PickForm {
	private int pick_id;
	private String pick_Name;
	private String pname;
	private String pick_trait;
	private String pick_time;
	private String pick_place;
	private String pcontact_way;
	private int handway;
	
	
	public PickForm() {
		super();
	}


	public PickForm(int pick_id, String pick_Name, String pname, String pick_trait, String pick_time, String pick_place,
			String pcontact_way, int handway) {
		super();
		this.pick_id = pick_id;
		this.pick_Name = pick_Name;
		this.pname = pname;
		this.pick_trait = pick_trait;
		this.pick_time = pick_time;
		this.pick_place = pick_place;
		this.pcontact_way = pcontact_way;
		this.handway = handway;
	}


	public int getPick_id() {
		return pick_id;
	}


	public void setPick_id(int pick_id) {
		this.pick_id = pick_id;
	}


	public String getPick_Name() {
		return pick_Name;
	}


	public void setPick_Name(String pick_Name) {
		this.pick_Name = pick_Name;
	}


	public String getPname() {
		return pname;
	}


	public void setPname(String pname) {
		this.pname = pname;
	}


	public String getPick_trait() {
		return pick_trait;
	}


	public void setPick_trait(String pick_trait) {
		this.pick_trait = pick_trait;
	}


	public String getPick_time() {
		return pick_time;
	}


	public void setPick_time(String pick_time) {
		this.pick_time = pick_time;
	}


	public String getPick_place() {
		return pick_place;
	}


	public void setPick_place(String pick_place) {
		this.pick_place = pick_place;
	}


	public String getPcontact_way() {
		return pcontact_way;
	}


	public void setPcontact_way(String pcontact_way) {
		this.pcontact_way = pcontact_way;
	}


	public int getHandway() {
		return handway;
	}


	public void setHandway(int handway) {
		this.handway = handway;
	}
	
	
	
}
