package dbBeans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class JobBoardDBList {
	private static JobBoardDBList instance = new JobBoardDBList();
	private static int total_count;
	private static int count;
	
	public static JobBoardDBList getInstance() {
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
			System.out.println("JobBoardDBList getInstance() ERROR: "+e);
		}
		
		return instance;
	}	

	public ArrayList<JobPostBean> getList(String key, String value){
		
		if(total_count<count) {
			return null;
		}
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "SELECT *"
				+ " FROM (SELECT ROW_NUMBER() over (ORDER BY J.CREATED_AT DESC) AS \"ROWNUM\","
				+ " J.NO,"
				+ " J.CREATED_AT,"
				+ " CREATOR,"
				+ " U.NICK AS \"CREATOR_NICK\","
				+ " J.CATEGORY,"
				+ " JOB_TITLE,"
				+ " JOB_TIME_START,"
				+ " JOB_TIME_END,"
				+ " JOB_LOCATION_ZIP_CODE,"
				+ " JOB_LOCATION,"
				+ " JOB_LOCATION_DETAIL,"
				+ " JOB_PAY,"
				+ " JOB_NUM_OF_PEOPLE,"
				+ " JOB_DETAIL,"
				+ " JOB_PEOPLE"
				+ " FROM JOB_BOARD J"
				+ " JOIN USERS U on J.CREATOR = U.NO"
				+ " WHERE ? = ?)"
				+ " WHERE ROWNUM BETWEEN ? AND ?";
				
		ArrayList<JobPostBean> jpl = new ArrayList<JobPostBean>();
		try {
			con = DBConnection.getConnection();
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, key);
			pstmt.setString(2, value);
			pstmt.setInt(3, count);
			pstmt.setInt(4, count+9);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				JobPostBean jp = new JobPostBean();
				jp.setNo(rs.getInt("NO"));
				jp.setCreated_at(rs.getTimestamp("CREATED_AT"));
				jp.setCreator(rs.getInt("CREATOR"));
				jp.setCreator_nick(rs.getString("CREATOR_NICK"));
				jp.setCategory(rs.getInt("CATEGORY"));
				jp.setJob_titile(rs.getString("JOB_TITLE"));
				jp.setJob_time_start(rs.getTimestamp("JOB_TIME_START"));
				jp.setJob_time_end(rs.getTimestamp("JOB_TIME_END"));
				jp.setJob_location_zip_code(rs.getInt("JOB_LOCATION_ZIP_CODE"));
				jp.setJob_location(rs.getInt("JOB_LOCATION"));
				jp.setJob_location_detail(rs.getString("JOB_LOCATION_DETAIL"));
				jp.setJob_pay(rs.getInt("JOB_PAY"));
				jp.setJob_num_of_people(rs.getInt("JOB_NUM_OF_PEOPLE"));
				jp.setJob_detail(rs.getString("JOB_DETAIL"));
				
				String temp = rs.getString("JOB_PEOPLE");
				if(temp != null) {
					String[] people = rs.getString("JOB_PEOPLE").split(",");
					int[] job_people = new int[jp.getJob_num_of_people()];
					for(int index=0; index<people.length; index++) {
						job_people[index] = Integer.valueOf(people[index]);
					}
					jp.setJob_people(job_people);
				} else {
					jp.setJob_people(null);
				}
				jpl.add(jp);
			}
			count += 10;
			
		} catch (Exception e) {
			System.out.println("JobBoardDBList getList() ERROR: "+e);
		}
		
		return jpl;
	}
	
}
