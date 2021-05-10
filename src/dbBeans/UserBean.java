package dbBeans;

import java.sql.Timestamp;

/*
 * CREATE TABLE USERS (
	    "NO" NUMBER PRIMARY KEY,
	    -- auto-increment
	    "NAME" VARCHAR2(10 BYTE) NOT NULL,
	    "NICK" VARCHAR2(12 BYTE) UNIQUE NOT NULL,
	    "ID" VARCHAR2(20 BYTE) UNIQUE NOT NULL,
	    "PW" VARCHAR2(20 BYTE) NOT NULL,
	    "GENDER" NUMBER(1) DEFAULT 2 NOT NULL,
	    -- 0 : 남, 1 : 여, 2: 선택안함
	    "BIRTHDAY" TIMESTAMP NOT NULL,
	    "EMAIL" VARCHAR2(100 BYTE) NOT NULL,
	    "POINT" NUMBER(6) DEFAULT 0,
	    "GRADE" NUMBER(1) DEFAULT 0,
	    -- 0 : USER, 1 : ADMIN
	    "CREATED_AT" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	    "COUNTRY_CODE" NUMBER,
	
	    FOREIGN KEY (COUNTRY_CODE) REFERENCES COUNTRIES(CODE)
	);*/

public class UserBean {
	private int no;
	private String name;
	private String nick;
	private String id;
	private String pw;
	private int gender;
	private int birth_yy;
	private int birth_mm;
	private int birth_dd;
	private String email;
	private int point;
	private String grade;
	private int location_zip_code;
	private int location_no;
	private String location_detail;
	private Timestamp created_at;
	private int country_code;
	
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	
	public int getBirth_yy() {
		return birth_yy;
	}
	public void setBirth_yy(int birth_yy) {
		this.birth_yy = birth_yy;
	}
	public int getBirth_mm() {
		return birth_mm;
	}
	public void setBirth_mm(int birth_mm) {
		this.birth_mm = birth_mm;
	}
	public int getBirth_dd() {
		return birth_dd;
	}
	public void setBirth_dd(int birth_dd) {
		this.birth_dd = birth_dd;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public Timestamp getCreated_at() {
		return created_at;
	}
	public void setCreated_at(Timestamp created_at) {
		this.created_at = created_at;
	}
	public int getCountry_code() {
		return country_code;
	}
	public void setCountry_code(int country_code) {
		this.country_code = country_code;
	}
	public int getLocation_zip_code() {
		return location_zip_code;
	}
	public void setLocation_zip_code(int location_zip_code) {
		this.location_zip_code = location_zip_code;
	}
	public int getLocation_no() {
		return location_no;
	}
	public void setLocation_no(int location_no) {
		this.location_no = location_no;
	}
	public String getLocation_detail() {
		return location_detail;
	}
	public void setLocation_detail(String location_detail) {
		this.location_detail = location_detail;
	}
	
	
}