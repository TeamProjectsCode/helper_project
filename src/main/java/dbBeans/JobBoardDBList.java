package dbBeans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class JobBoardDBList {
	private static JobBoardDBList instance = new JobBoardDBList();
	
	public static JobBoardDBList getInstance() {
		return instance;
	}
	
	public ArrayList<JobPostBean> getList(){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "SELECT J.NO,"
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
				+ " JOIN USERS U on J.CREATOR = U.NO";
				
		ArrayList<JobPostBean> jpl = new ArrayList<JobPostBean>();

		try {
			con = DBConnection.getConnection();
			pstmt = con.prepareStatement(query);
//			pstmt.setString(1, query);
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
			
		} catch (Exception e) {
			System.out.println("JobBoardDBList ERROR: "+e);
		}
		
		return jpl;
	}
	
	
	
//	private ArrayList<JobPostBean> job_board_list;
//	
//	public JobBoardDBList() {}
//	public JobBoardDBList(ArrayList<JobPostBean> jbl) {
//		this.job_board_list = jbl;
//	}
//	
//	public void add(JobPostBean jp) {
//		this.job_board_list.add(jp);
//	}
//	
//	public ArrayList<JobPostBean> getList(){
//		return this.job_board_list;
//	}
//	
//	public JobPostBean get(int index) {
//		return this.job_board_list.get(index);
//	}
}
