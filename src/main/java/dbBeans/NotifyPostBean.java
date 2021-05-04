package dbBeans;

import java.sql.Timestamp;

/*
 * CREATE TABLE NOTIFY_BOARD (
	    "NO" NUMBER PRIMARY KEY,
	    "CREATED_AT" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	    "CREATOR" NUMBER NOT NULL,
	    "NOTIFY_TITLE" VARCHAR2(200 BYTE) NOT NULL,
	    "NOTIFY_HITS" NUMBER(6) DEFAULT 0,
	    "NOTIFY_DETAIL" CLOB,

	    FOREIGN KEY (CREATOR) REFERENCES USERS(NO)
	);*/

public class NotifyPostBean {
	private int no;
	private Timestamp created_at;
	private String creator_nick; // UserBaen
	private String notify_title;
	private int notify_hits;
	private String notify_detail;
	
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
	public String getNotify_title() {
		return notify_title;
	}
	public void setNotify_title(String notify_title) {
		this.notify_title = notify_title;
	}
	public int getNotify_hits() {
		return notify_hits;
	}
	public void setNotify_hits(int notify_hits) {
		this.notify_hits = notify_hits;
	}
	public String getNotify_detail() {
		return notify_detail;
	}
	public void setNotify_detail(String notify_detail) {
		this.notify_detail = notify_detail;
	}
}
