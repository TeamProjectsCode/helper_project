package db;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import db.jobBoardBeans.JobPostBean;
import db.reviewBeans.ReviewPostBean;
import db.userBeans.UserBean;
import myUtil.HanConv;

public class ReviewPostDAO {
//	INSERT INTO REVIEW_BOARD(NO
//            , CREATED_AT
//            , CREATOR
//            , REVIEW_TITLE
//            , REVIEW_HITS
//            , REVIEW_SCORE
//            , REVIEW_DETAIL
//            , JOB_POST
//            ) 
//VALUES(1
//            , CURRENT_TIMESTAMP
//            , 1
//            , '府轰 力格'
//            , 0
//            , 5
//            , '府轰 叼抛老'
//            , 1
//             );	
	

	
	private static ReviewPostDAO instance=new ReviewPostDAO();
	
	public static ReviewPostDAO getInstance() {
		return instance;
	}
	
//	public Connection getConnection() throws Exception{
//		Context ctx=new InitialContext();
//		DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/oracle");
//		return ds.getConnection();
//	}
	public int insertReview(String title, String detail){
		UserBean ub = new UserBean();
		JobPostBean jpb = new JobPostBean();
//		ReviewPostBean rpb = new ReviewPostBean();
//		SimpleDateFormat sdf=new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
//		String ss=sdf.format(new java.util.Date());
//		Date createdAt= Date.valueOf(ss);
		Connection con=null;
		PreparedStatement pstmt=null;
		String sql="";
		int re = -1;

		
		try {
			con = DBConnection.getConnection();
			System.out.println(title);
			System.out.println(detail);

			sql="INSERT INTO REVIEW_BOARD(NO, CREATOR_NO, TITLE, DETAIL, JOB_POST_NO) VALUES(REVIEW_BOARD_NO_SEQ.nextval, ?, ?, ?, ?)";
			
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, 1);
			pstmt.setString(2, title);
			pstmt.setString(3, detail);
			pstmt.setInt(4, 1);
			
			pstmt.executeUpdate();
			re=1;
			pstmt.close();
			con.close();
			System.out.println("府轰累己 己傍");
		} catch (Exception e) {
			System.out.println("府轰累己 角菩");
			e.printStackTrace();
			re=-1;
		} 
		return re;
	}
}


























