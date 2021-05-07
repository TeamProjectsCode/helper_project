package db.jobBoardBeans;

import java.sql.Timestamp;

public class JobPostSubBean {
	
	private int no;
	private Timestamp created_at;
	private String creator_nick;
	private int category;
	private String job_titile;
	private Timestamp job_time_start;
	private Timestamp job_time_end;
	private String job_location;
	// location 부산광역시 해운대구 (까지 나오게 설정)
	private int job_pay;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public Timestamp getCreated_at() {
		return created_at;
	}
	public void setCreated_at(Timestamp created_at) {
		this.created_at = created_at;
	}
	public String getCreator_nick() {
		return creator_nick;
	}
	public void setCreator_nick(String creator_nick) {
		this.creator_nick = creator_nick;
	}
	public int getCategory() {
		return category;
	}
	public void setCategory(int category) {
		this.category = category;
	}
	public String getJob_titile() {
		return job_titile;
	}
	public void setJob_titile(String job_titile) {
		this.job_titile = job_titile;
	}
	public Timestamp getJob_time_start() {
		return job_time_start;
	}
	public void setJob_time_start(Timestamp job_time_start) {
		this.job_time_start = job_time_start;
	}
	public Timestamp getJob_time_end() {
		return job_time_end;
	}
	public void setJob_time_end(Timestamp job_time_end) {
		this.job_time_end = job_time_end;
	}

	public String getJob_location() {
		return job_location;
	}
	public void setJob_location(String job_location) {
		this.job_location = job_location;
	}

	public int getJob_pay() {
		return job_pay;
	}
	public void setJob_pay(int job_pay) {
		this.job_pay = job_pay;
	}
}
