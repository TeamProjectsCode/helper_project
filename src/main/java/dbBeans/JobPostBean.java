package dbBeans;

import java.sql.Timestamp;

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
	private int no;
	private Timestamp created_at;
	private String creator_nick;
	private int category;
	private String job_titile;
	private Timestamp job_time_start;
	private Timestamp job_time_end;
	private int job_location_zip_code;
	private int job_location;
	private String job_location_detail;
	private int job_pay;
	private int job_num_of_people;
	private String job_detail;
	private int[] job_people;
	
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
	public int getJob_location_zip_code() {
		return job_location_zip_code;
	}
	public void setJob_location_zip_code(int job_location_zip_code) {
		this.job_location_zip_code = job_location_zip_code;
	}
	public int getJob_location() {
		return job_location;
	}
	public void setJob_location(int job_location) {
		this.job_location = job_location;
	}
	public String getJob_location_detail() {
		return job_location_detail;
	}
	public void setJob_location_detail(String job_location_detail) {
		this.job_location_detail = job_location_detail;
	}
	public int getJob_pay() {
		return job_pay;
	}
	public void setJob_pay(int job_pay) {
		this.job_pay = job_pay;
	}
	public int getJob_num_of_people() {
		return job_num_of_people;
	}
	public void setJob_num_of_people(int job_num_of_people) {
		this.job_num_of_people = job_num_of_people;
	}
	public String getJob_detail() {
		return job_detail;
	}
	public void setJob_detail(String job_detail) {
		this.job_detail = job_detail;
	}
	public int[] getJob_people() {
		return job_people;
	}
	public void setJob_people(int[] job_people) {
		this.job_people = job_people;
	} 
	
	
}
