package dbBeans;

import java.util.ArrayList;

public class JobBoardList {
	private ArrayList<JobPostBean> job_board_list;
	
	public JobBoardList() {}
	public JobBoardList(ArrayList<JobPostBean> jbl) {
		this.job_board_list = jbl;
	}
	
	public void add(JobPostBean jp) {
		this.job_board_list.add(jp);
	}
	
	public ArrayList<JobPostBean> getList(){
		return this.job_board_list;
	}
	
	public JobPostBean get(int index) {
		return this.job_board_list.get(index);
	}
}
