package db;

import java.util.ArrayList;

import db.notifyBoardBeans.NotifyPostBean;

public class NotifyPostDAO {
	private ArrayList<NotifyPostBean> notify_board_list;
	
	public NotifyPostDAO() {}
	public NotifyPostDAO(ArrayList<NotifyPostBean> nbl) {
		this.notify_board_list = nbl;
	}
	
	public void add(NotifyPostBean np) {
		this.notify_board_list.add(np);
	}
	
	public ArrayList<NotifyPostBean> getList(){
		return this.notify_board_list;
	}
	
	public NotifyPostBean get(int index) {
		return this.notify_board_list.get(index);
	}
}
