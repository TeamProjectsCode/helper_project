package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import db.jobBoardBeans.*;

public class JobPostDAO {
	private static JobPostDAO instance = new JobPostDAO();
	private static int total_count;
	private static int count;
	
	public static JobPostDAO getInstance() {
		total_count = 0;
		count = 1;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "SELECT COUNT(*) AS \"TOTAL_COUNT\" FROM JOB_BOARD";
		
		try {
			con = DBConnection.getConnection();
			pstmt = con.prepareStatement(query);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				total_count = rs.getInt("TOTAL_COUNT");
			}
		} catch (Exception e) {
			System.out.println("JobPostDAO getInstance() ERROR: "+e);
		}
		
		return instance;
	}
	
	public ArrayList<JobPostSubBean> getList(String key, String value){
		
		if(total_count<count) {
			return null;
		}
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "SELECT *"
				+ " FROM (SELECT ROW_NUMBER() over (ORDER BY J.CREATED_AT DESC ) AS \"ROWNUM\","
				+ " J.NO AS \"JOB_NO\","
				+ " L.FIRST_NAME || ' ' || L.SECOND_NAME AS \"JOB_LOCATION\","
				+ " U.NO AS \"CREATOR_NO\","
				+ " U.NICK AS \"CREATOR_NICK\","
				+ " TITLE AS \"JOB_TITLE\","
				+ " PAY AS \"JOB_PAY\","
				+ " TO_CHAR(TIME_START, 'yy-MM-dd') AS \"JOB_DAY\","
				+ " TO_CHAR(TIME_START, 'hh:mm') AS \"JOB_TIME_START\","
				+ " TO_CHAR(TIME_END, 'hh:mm') AS \"JOB_TIME_END\","
				+ " TO_CHAR(J.CREATED_AT, 'yy-MM-dd') AS \"CREATED_AT\""
				+ " FROM JOB_BOARD J"
				+ " JOIN USERS U on J.CREATOR_NO = U.NO"
				+ " JOIN LOCATIONS L on J.LOCATION_NO = L.NO"
				+ " WHERE ? = ?)"
				+ " WHERE \"ROWNUM\" BETWEEN ? AND ?";
				
		ArrayList<JobPostSubBean> jpl = new ArrayList<JobPostSubBean>();;
		
		try {
			con = DBConnection.getConnection();
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, key);
			pstmt.setString(2, value);
			pstmt.setInt(3, count);
			pstmt.setInt(4, count+9);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				JobPostSubBean jp = new JobPostSubBean();
				
				jp.setNo(rs.getInt("JOB_NO"));
				
				jp.setJob_location(rs.getString("JOB_LOCATION"));
				
				jp.setCreator_no(rs.getInt("CREATOR_NO"));
				jp.setCreator_nick(rs.getString("CREATOR_NICK"));
				
				jp.setJob_titile(rs.getString("JOB_TITLE"));
				jp.setJob_pay(rs.getInt("JOB_PAY"));
				jp.setJob_day(rs.getString("JOB_DAY"));
				jp.setJob_time_start(rs.getString("JOB_TIME_START"));
				jp.setJob_time_end(rs.getString("JOB_TIME_END"));

				jp.setCreated_at(rs.getString("CREATED_AT"));
				
				jpl.add(jp);
			}
			count += 10;
			
		} catch (Exception e) {
			System.out.println("JobPostDAO getList() ERROR: "+e);
		}
		
		return jpl;
	}

	public JobPostBean getPost(String job_post_no){
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "SELECT TITLE AS \"JOB_TITLE\","
				+ " TO_CHAR(J.CREATED_AT, 'yy-MM-dd hh:mm') AS \"CREATED_AT\","
				+ " CREATOR_NO,"
				+ " U.NICK AS \"CREATOR_NICK\","
				+ " GRADE,"
				+ " TO_CHAR(TIME_START, 'yy-MM-dd') AS \"JOB_DAY\","
				+ " TO_CHAR(TIME_START, 'hh:mm') AS \"JOB_TIME_START\","
				+ " TO_CHAR(TIME_END, 'hh:mm') AS \"JOB_TIME_END\","
				+ " L.FIRST_NAME || ' ' || L.SECOND_NAME || ' ' || J.LOCATION_DETAIL AS \"JOB_LOCATION\","
				+ " NUM_OF_PEOPLE AS \"JOB_NUM_OF_PEOPLE\","
				+ " PAY AS \"JOB_PAY\","
				+ " DETAIL AS \"JOB_DETAIL\""
				+ " FROM JOB_BOARD J"
				+ " JOIN USERS U on J.CREATOR_NO = U.NO"
				+ " JOIN LOCATIONS L on J.LOCATION_NO = L.NO"
				+ " WHERE J.NO = ?";
		
		JobPostBean jp = null;
		
		try {
			con = DBConnection.getConnection();
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, Integer.valueOf(job_post_no));
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				jp = new JobPostBean();
				jp.setJob_titile(rs.getString("JOB_TITLE"));
				jp.setCreated_at(rs.getString("CREATED_AT"));

				jp.setCreator_no(rs.getInt("CREATOR_NO"));
				jp.setCreator_nick(rs.getString("CREATOR_NICK"));
				jp.setCreator_grade(rs.getInt("GRADE"));
				
//				jp.setCategory(rs.getInt("CATEGORY"));
				
				jp.setJob_day(rs.getString("JOB_DAY"));
				jp.setJob_time(rs.getString("JOB_TIME_START"), rs.getString("JOB_TIME_END"));
				jp.setJob_location(rs.getString("JOB_LOCATION"));
				jp.setJob_num_of_people(rs.getInt("JOB_NUM_OF_PEOPLE"));
				jp.setJob_pay(rs.getInt("JOB_PAY"));				
				jp.setJob_detail(rs.getString("JOB_DETAIL"));
				
//				String temp = rs.getString("JOB_PEOPLE");
//				if(temp != null) {
//					String[] people = rs.getString("JOB_PEOPLE").split(",");
//					int[] job_people = new int[jp.getJob_num_of_people()];
//					for(int index=0; index<people.length; index++) {
//						job_people[index] = Integer.valueOf(people[index]);
//					}
//					jp.setJob_people(job_people);
//				} else {
//					jp.setJob_people(null);
//				}
			}
			
		} catch (Exception e) {
			System.out.println("JobPostDAO getList() ERROR: "+e);
		}
		
		return jp;
	}
	
}
