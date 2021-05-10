package dbBeans;

import java.util.ArrayList;

public class NotifyBoardList {
	private ArrayList<NotifyPostBean> notify_board_list;
	
	public NotifyBoardList() {}
	public NotifyBoardList(ArrayList<NotifyPostBean> nbl) {
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
