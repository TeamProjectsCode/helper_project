package dbBeans;

import java.util.ArrayList;

public class ReviewBoardList {
	private ArrayList<ReviewPostBean> review_board_list;
	
	public ReviewBoardList() {}
	public ReviewBoardList(ArrayList<ReviewPostBean> rbl) {
		this.review_board_list = rbl;
	}
	
	public void add(ReviewPostBean rp) {
		this.review_board_list.add(rp);
	}
	
	public ArrayList<ReviewPostBean> getList(){
		return this.review_board_list;
	}
	
	public ReviewPostBean get(int index) {
		return this.review_board_list.get(index);
	}
}
