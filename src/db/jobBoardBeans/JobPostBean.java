package db.jobBoardBeans;

/*
 * CREATE TABLE JOB_BOARD (
	    "NO" NUMBER PRIMARY KEY ,
	    "CREATED_AT" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	    "CREATOR" NUMBER NOT NULL,
	    "CATEGORY" NUMBER,
	--     select just one category
	    "JOB_TITLE" VARCHAR2(200 BYTE) NOT NULL,
	    "JOB_TIME_START" TIMESTAMP NOT NULL,
	    "JOB_TIME_END" TIMESTAMP NOT NULL,
	    "JOB_LOCATION_ZIP_CODE" NUMBER NOT NULL,
	    "JOB_LOCATION" NUMBER NOT NULL,
	    "JOB_LOCATION_DETAIL" VARCHAR2(200 BYTE) NOT NULL,
	    "JOB_PAY" NUMBER(7) NOT NULL,
	    "JOB_NUM_OF_PEOPLE" NUMBER(1),
	--     maximum is five
	    "JOB_DETAIL" CLOB,
	    "JOB_PEOPLE" VARCHAR2(30),
	
	    FOREIGN KEY (CREATOR) REFERENCES USERS(NO),
	    FOREIGN KEY (CATEGORY) REFERENCES CATEGORIES(NO),
	    FOREIGN KEY (JOB_LOCATION) REFERENCES LOCATIONS(NO)
	);*/

public class JobPostBean {
	private String job_titile;
	private String created_at;
	private int creator_no;
	private String creator_nick;
	private String creator_grade;	
	/* category String으로 받아와야 할듯한대에ㅔㅔ */
	private int category;
	private String job_day;
	private String job_time;
	private String job_location;
	private int job_num_of_people;
	private int job_pay;
	private String job_detail;
//	private int[] job_people;
	
	public String getJob_titile() {
		return job_titile;
	}
	public String getCreated_at() {
		return created_at;
	}
	public int getCreator_no() {
		return creator_no;
	}
	public String getCreator_nick() {
		return creator_nick;
	}
	public String getCreator_grade() {
		return creator_grade;
	}
	public int getCategory() {
		return category;
	}
	public String getJob_day() {
		return job_day;
	}
	public String getJob_time() {
		return job_time;
	}
	public String getJob_location() {
		return job_location;
	}
	public int getJob_num_of_people() {
		return job_num_of_people;
	}
	public int getJob_pay() {
		return job_pay;
	}
	public String getJob_detail() {
		return job_detail;
	}
	public void setJob_titile(String job_titile) {
		this.job_titile = job_titile;
	}
	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}
	public void setCreator_no(int creator_no) {
		this.creator_no = creator_no;
	}
	public void setCreator_nick(String creator_nick) {
		this.creator_nick = creator_nick;
	}
	public void setCreator_grade(String creator_grade) {
		this.creator_grade = creator_grade;
	}
	public void setCategory(int category) {
		this.category = category;
	}
	public void setJob_day(String job_day) {
		this.job_day = job_day;
	}
	public void setJob_time(String job_time_start, String job_time_end) {
		this.job_time = job_time_start + " ~ " + job_time_end;
	}
	public void setJob_location(String job_location) {
		this.job_location = job_location;
	}
	public void setJob_num_of_people(int job_num_of_people) {
		this.job_num_of_people = job_num_of_people;
	}
	public void setJob_pay(int job_pay) {
		this.job_pay = job_pay;
	}
	public void setJob_detail(String job_detail) {
		this.job_detail = job_detail;
	}

}
