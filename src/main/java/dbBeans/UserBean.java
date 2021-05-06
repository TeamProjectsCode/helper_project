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
	private Timestamp birthday;
	private String email;
	private int point;
	private int grade;
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
	public Timestamp getBirthday() {
		return birthday;
	}
	public void setBirthday(Timestamp birthday) {
		this.birthday = birthday;
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
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
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
}