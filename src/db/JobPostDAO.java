package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import db.jobBoardBeans.*;

public class JobPostDAO {
	private static JobPostDAO instance = new JobPostDAO();
	private static int total_count;
	private static int count;
	
	public static JobPostDAO getInstance() {
		return instance;
	}
	
	public void setCount(String location) {
		
		total_count = 0;
		count = 1;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String query;
		if(location == null) {
			query = "SELECT COUNT(*) AS \"TOTAL_COUNT\" FROM JOB_BOARD";
		}
		else {
			query = "SELECT COUNT(*) AS \"TOTAL_COUNT\" FROM JOB_BOARD WHERE LOCATION_NO="+location;
		}
		
		try {
			con = DBConnection.getConnection();
			pstmt = con.prepareStatement(query);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				total_count = rs.getInt("TOTAL_COUNT");
			}
			
		} catch (Exception e) {
			System.out.println("JobPostDAO setCount() ERROR: "+e);
		} finally {
			try {
				if(con != null) con.close();
				if(pstmt != null) pstmt.close();
				if(rs != null) rs.close();
			} catch (Exception e) {
				System.out.println("JobPostDAO setCount() CLOSE ERROR: "+e);
			}
		}
		
	}
	
	public ArrayList<JobPostSubBean> getList(String key, String value){
		
		String where;
		if(value == null) {
			where= " WHERE 1 = ?)";
			value = "1";
		}
		else {
			where = " WHERE J.LOCATION_NO = ?)";
		}

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
				+ where
				+ " WHERE \"ROWNUM\" BETWEEN ? AND ?";
				
		ArrayList<JobPostSubBean> jpl = new ArrayList<JobPostSubBean>();
		
		try {
			con = DBConnection.getConnection();
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, value);
			pstmt.setInt(2, count);
			pstmt.setInt(3, count+9);
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
		} finally {
			try {
				if(con != null) con.close();
				if(pstmt != null) pstmt.close();
				if(rs != null) rs.close();
			} catch (Exception e) {
				System.out.println("JobPostDAO getList() CLOSE ERROR: "+e);
			}
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
				+ " CATEGORY,"
				+ " GRADE,"
				+ " TO_CHAR(TIME_START, 'yy-MM-dd') AS \"JOB_DAY\","
				+ " TO_CHAR(TIME_START, 'hh:mm') AS \"JOB_TIME_START\","
				+ " TO_CHAR(TIME_END, 'hh:mm') AS \"JOB_TIME_END\","
				+ " L.FIRST_NAME AS \"JOB_LOCATION_FIRST_NAME\","
				+ " L.SECOND_NAME AS \"JOB_LOCATION_SECOND_NAME\","
				+ " J.LOCATION_DETAIL AS \"JOB_LOCATION_DETAIL\","
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
				jp.setJob_title(rs.getString("JOB_TITLE"));
				jp.setCreated_at(rs.getString("CREATED_AT"));

				jp.setCreator_no(rs.getInt("CREATOR_NO"));
				jp.setCreator_nick(rs.getString("CREATOR_NICK"));
				jp.setCreator_grade(rs.getString("GRADE"));
				
//				jp.setCategory(rs.getInt("CATEGORY"));
				
				jp.setJob_day(rs.getString("JOB_DAY"));
				
				jp.setJob_time_start(rs.getString("JOB_TIME_START"));
				jp.setJob_time_end(rs.getString("JOB_TIME_END"));
				jp.setJob_location_first_name(rs.getString("JOB_LOCATION_FIRST_NAME"));
				jp.setJob_location_second_name(rs.getString("JOB_LOCATION_SECOND_NAME"));
				jp.setJob_location_detail(rs.getString("JOB_LOCATION_DETAIL"));

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
			System.out.println("JobPostDAO getPost() ERROR: "+e);
		} finally {
			try {
				if(con != null) con.close();
				if(pstmt != null) pstmt.close();
				if(rs != null) rs.close();
			} catch (Exception e) {
				System.out.println("JobPostDAO getPost() CLOSE ERROR: "+e);
			}
		}
		
		return jp;
	}
	
	public boolean addPost(JobPostBean jp) {
		
		boolean isSuccess = false;
		
		Connection con = null;
		PreparedStatement pstmt = null;

		String query="INSERT INTO JOB_BOARD (NO, CREATOR_NO, CATEGORY, TITLE, TIME_START, TIME_END, LOCATION_NO,"
				+ " LOCATION_DETAIL, PAY, NUM_OF_PEOPLE, DETAIL)"
				+ " VALUES (JOB_BOARD_NO_SEQ.nextval, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		try {
			con = DBConnection.getConnection();
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, jp.getCreator_no());
			/* pstmt.setInt(2, jp.getCategory()); */
			/* ★ leni ★ 카테고리 테이블이랑 동일하게 만들어야함 */
			pstmt.setString(2, null); 
			pstmt.setString(3, jp.getJob_title());
			/*
			 * pstmt.setTimestamp(4, Timestamp.valueOf(jp.getJob_time_start()));
			 * pstmt.setTimestamp(5, Timestamp.valueOf(jp.getJob_time_end()));
			 */
			pstmt.setString(4, jp.getJob_time_start());
			pstmt.setString(5, jp.getJob_time_end());
			pstmt.setInt(6, 1);
			/* ★ leni ★ 수정해야함, 함수로해서!! */
			pstmt.setString(7, jp.getJob_location_detail());
			pstmt.setInt(8, jp.getJob_pay());
			pstmt.setInt(9, jp.getJob_num_of_people());
			pstmt.setString(10, jp.getJob_detail());
			
			if(pstmt.executeUpdate() != 0) {
				isSuccess = true;
			}
			
		} catch (Exception e) {
			System.out.println("JobPostDAO addPost() ERROR: "+e);
		} finally {
			try {
				if(con != null) con.close();
				if(pstmt != null) pstmt.close();
			} catch (Exception e) {
				System.out.println("JobPostDAO addPost() CLOSE ERROR: "+e);
			}
		}
		
		return isSuccess;
	}

	public boolean deletePost(String job_post_no) {
		
		boolean isSuccess = false;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		String query = "DELETE FROM JOB_BOARD"
				+ " WHERE NO = ?";
		
		try {
			con = DBConnection.getConnection();
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, job_post_no);
			
			if(pstmt.executeUpdate() != 0) {
				isSuccess = true;
			}
			
		} catch (Exception e) {
			System.out.println("JobPostDAO deletePost() ERROR: "+e);
		} finally {
			try {
				if(con != null) con.close();
				if(pstmt != null) pstmt.close();
			} catch (Exception e) {
				System.out.println("JobPostDAO deletePost() CLOSE ERROR: "+e);
			}
		}
		System.out.println(isSuccess);
		return isSuccess;
	}

	public boolean modifyPost(JobPostBean jp, String job_post_no) {
		boolean isSuccess = false;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		String query = "UPDATE JOB_BOARD"
				+ " SET CATEGORY = ?,"
				+ " TITLE = ?,"
				+ " TIME_START = TO_TIMESTAMP(?, 'HH24-MI'),"
				+ " TIME_END = TO_TIMESTAMP(?, 'HH24-MI'),"
				+ " LOCATION_NO = ?,"
				+ " LOCATION_DETAIL = ?,"
				+ " PAY = ?,"
				+ " NUM_OF_PEOPLE = ?,"
				+ " DETAIL = ?,"
				+ " PART_TIMER_LIST = ?"
				+ " WHERE NO = ?";
		
		try {
			con = DBConnection.getConnection();
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, null);
			/* pstmt.setInt(1, jp.getCategory()); */
			/* ★ leni ★ 카테고리 테이블이랑 동일하게 만들어야함 */
			pstmt.setString(2, jp.getJob_title());
			/*
			 * pstmt.setTimestamp(4, Timestamp.valueOf(jp.getJob_time_start()));
			 * pstmt.setTimestamp(5, Timestamp.valueOf(jp.getJob_time_end()));
			 */
			pstmt.setString(3, jp.getJob_time_start());
			pstmt.setString(4, jp.getJob_time_end());
			pstmt.setInt(5, 1);
			/* ★ leni ★ 수정해야함, 함수로해서!! */
			pstmt.setString(6, jp.getJob_location_detail());
			pstmt.setInt(7, jp.getJob_pay());
			pstmt.setInt(8, jp.getJob_num_of_people());
			pstmt.setString(9, jp.getJob_detail());
			pstmt.setString(10, null);
			pstmt.setString(11, job_post_no);
			
			if(pstmt.executeUpdate() != 0) {
				isSuccess = true;
			}
			
			if(con != null) con.close();
			if(pstmt != null) pstmt.close();
			
		} catch (Exception e) {
			System.out.println("JobPostDAO modifyPost() ERROR: "+e);
		} finally {
			try {
				if(con != null) con.close();
				if(pstmt != null) pstmt.close();
			} catch (Exception e) {
				System.out.println("JobPostDAO modifyPost() CLOSE ERROR: "+e);
			}
		}
		System.out.println(isSuccess);
		return isSuccess;
	}
}
