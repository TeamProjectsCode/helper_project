package dbBeans;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class ReviewPostDBBean {
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
	

	
	private static MainDBBean instance=new MainDBBean();
	public static MainDBBean getInstance() {
		return instance;
	}
	
	public Connection getConnection() throws Exception{
		Context ctx=new InitialContext();
		DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/oracle");
		return ds.getConnection();
	}
	public int insertReview(String title, String review) {
		UserBean ub = new UserBean();
		JobPostBean jpb = new JobPostBean();
		ReviewPostBean rpb = new ReviewPostBean();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
		String ss=sdf.format(new java.util.Date());
		Date d= Date.valueOf(ss);
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="";

		int number, creator, job_post;
		creator = ub.getNo();
		job_post = jpb.getNo();
		
		try {
			con = getConnection();
			sql="SELECT MAX(NO) FROM REVIEW_BOARD";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				number=rs.getInt(1)+1;
			}else {
				number=1;
			}
			
			sql="INSERT INTO JOB_BOARD(NO, CREATED_AT, CREATOR, REVIEW_TITLE, REVIEW_DETAIL, JOB_POST)"
					+ " VALUES(?, ?, ?, ?, ?, ?)";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, number);
			pstmt.setDate(2, d);
			pstmt.setInt(3, creator);
			pstmt.setString(4, title);
			pstmt.setString(5, review);
			pstmt.setInt(6, job_post);
			
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return 1;
	}
}


























