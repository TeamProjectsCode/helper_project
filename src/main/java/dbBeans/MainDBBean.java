package dbBeans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class MainDBBean {
	private static MainDBBean instance=new MainDBBean();
	public static MainDBBean getInstance() {
		return instance;
	}
	
	public Connection getConnection() throws Exception{
		Context ctx=new InitialContext();
		DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/oracle");
		return ds.getConnection();
	}
	
	public int JobBoardCount(int i){
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		String sql = "";
		int re = 0;
		
		try {
			con = getConnection();
			stmt = con.createStatement();
			sql = "SELECT COUNT(NO) FROM JOB_BOARD WHERE (TO_CHAR(CREATED_AT, 'YYYY/MM/DD')) = (TO_CHAR(SYSTIMESTAMP, 'YYYY/MM/DD'))";
			rs = stmt.executeQuery(sql);
			MainBean main = new MainBean();
			main.setJBCount(1);
			//re = rs.getInt(1);
			
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		try {
			if (rs != null) rs.close();
			if (stmt != null) stmt.close();
			if (con != null) con.close();
		} catch (Exception e2) {
			e2.printStackTrace();
		}
	}
		return re;
		
	
}
}
	
