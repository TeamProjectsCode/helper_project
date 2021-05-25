package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import db.volunteerBeans.MyVolunteerBean;
import db.volunteerBeans.VolunteerBean;

public class VolunteerDAO {
	
	private static VolunteerDAO instance = new VolunteerDAO();
	public static VolunteerDAO getInstance() {
		return instance;
	}
	
	public ArrayList<VolunteerBean> getList(String post_no) {
		
		ArrayList<VolunteerBean> vList = new ArrayList<VolunteerBean>();
		String query = "SELECT * FROM VOLUNTEERS WHERE POST_NO = ?";
		
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, post_no);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				VolunteerBean vPerson = new VolunteerBean(rs.getInt("USER_NO"), rs.getInt("POST_NO"), rs.getInt("STATE"));
				vList.add(vPerson);
			}
			
		} catch (Exception e) {
			System.out.println("VolunteerDAO/getList()/try: "+e);
			
		} finally {
			try {
				if (!conn.isClosed()) conn.close();
				if (!pstmt.isClosed()) pstmt.close();
				if (!rs.isClosed()) rs.close();
			} catch (Exception e) {
				System.out.println("VolunteerDAO/getList()/finally: "+e);
			}
		}
		
		return vList;
	}
	
	public boolean addVolunteer(String user_no, String post_no) {
		
		boolean isSuccess = false;
		
		String query = "INSERT INTO VOLUNTEERS VALUES (?, ?, ?)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, user_no);
			pstmt.setString(2, post_no);
			pstmt.setInt(3, 0);
			
			if(pstmt.executeUpdate() != 0) {
				isSuccess = true;
			}

		} catch (Exception e) {
			System.out.println("VolunteerDAO/addVolunteer()/try: "+e);
			
		} finally {
			try {
				if (!conn.isClosed()) conn.close();
				if (!pstmt.isClosed()) pstmt.close();
			} catch (Exception e) {
				System.out.println("VolunteerDAO/addVolunteer()/finally: "+e);
			}
		}
		
		return isSuccess;
	}
	
	public ArrayList<MyVolunteerBean> getMyList(String user_no){
		
		ArrayList<MyVolunteerBean> mvList = new ArrayList<MyVolunteerBean>();
		String query = "";
		
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, user_no);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				MyVolunteerBean low = ??;
				mvList.add(low);
			}
			
		} catch (Exception e) {
			System.out.println("VolunteerDAO/getMyList()/try: "+e);
			
		} finally {
			try {
				if (!conn.isClosed()) conn.close();
				if (!pstmt.isClosed()) pstmt.close();
				if (!rs.isClosed()) rs.close();
			} catch (Exception e) {
				System.out.println("VolunteerDAO/getMyList()/finally: "+e);
			}
		}
		
		return mvList;
	}
	
	/*
	 * public boolean setState() { // what format is the volunteer's status
	 * information obtained from the page?
	 * 
	 * }
	 */

}
