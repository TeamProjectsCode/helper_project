package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import db.userBeans.UserBean;

public class UserDAO {
	private static UserDAO instance = new UserDAO();

	public static UserDAO getInstance() {
		return instance;
	}

	public Connection getConnection() throws Exception {
		Context ctx = new InitialContext();
		DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/oracle");
		return ds.getConnection();
	}

	public int insertUser(UserBean user) {//회원가입
		Connection conn=null;
		PreparedStatement pstmt=null;
		int re=-1;
		String sql = "INSERT INTO USER VALUES(?,?,?,?,?,?,?,?,?,?,?,?)";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, user.getNo());
			pstmt.setString(2, user.getName());
			pstmt.setString(3, user.getNick());
			pstmt.setString(4, user.getId());
			pstmt.setString(5, user.getPw());
			pstmt.setInt(6, user.getGender());
			pstmt.setTimestamp(7, user.getBirthday());
			pstmt.setString(8, user.getEmail());
			pstmt.setInt(9, user.getPoint());
			pstmt.setInt(10, user.getGrade());
			pstmt.setTimestamp(11, user.getCreated_at());
			pstmt.setInt(12, user.getCountry_code());

		 pstmt.executeUpdate();
		 re=1;

		} catch (Exception e) {
			e.printStackTrace();
		} 
		return re;// db오류
	}

	public int confirmID(String id) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql = "SELECT ID FROM USERS WHERE ID=?";
		int re = -1;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				re = 1;
			} else {
				re = -1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return re;
	}

	public int userCheck(String id, String pw) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String db_pwd;
		int re=-1;
		String sql = "SELECT PW FROM USERS WHERE ID=?";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				db_pwd = rs.getString("pw");
				if (db_pwd.equals(pw)) {
					re=1;
				}else {
					re=0;
				}
			}else {
				re=-1;
			}
			rs.close();
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return re;
	}
	public UserBean getuser(String id) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="SELECT * FROM USERS WHERE ID=?";
		UserBean user =null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				user = new UserBean();
				user.setNo(rs.getInt(1));
				user.setName(rs.getString(2));
				user.setNick(rs.getString(3));
				user.setId(rs.getString(4));
				user.setPw(rs.getString(5));
				user.setGender(rs.getInt(6));
				user.setBirthday(rs.getTimestamp(7));
				user.setEmail(rs.getString(8));
				user.setPoint(rs.getInt(9));
				user.setGrade(rs.getInt(10));
				user.setCreated_at(rs.getTimestamp(11));
				user.setCountry_code(rs.getInt(12));
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return user;
	}
	public int updateUser(UserBean user) {//회원정보 수정
		Connection conn=null;
		PreparedStatement pstmt=null;
		String sql = "UPDATE USERS SET PW =?, EMAIL=? WHERE ID=? ";
		int re =-1;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getPw());
			pstmt.setString(2, user.getEmail());
			pstmt.setString(3, user.getId());
			re = pstmt.executeUpdate();
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return re;
	}
	

}
