package dbBeans;

import java.util.ArrayList;

public class VolunteersList {
	private ArrayList<VolunteerBean> volunteers_list;
	
	
	public VolunteersList() {}
	public VolunteersList(ArrayList<VolunteerBean> vl) {
		this.volunteers_list = vl;
	}
	
	public void add(VolunteerBean v) {
		this.volunteers_list.add(v);
	}
	
	public ArrayList<VolunteerBean> getList(){
		return this.volunteers_list;
	}
	
	public VolunteerBean get(int index) {
		return this.volunteers_list.get(index);
	}
}
