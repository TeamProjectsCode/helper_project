package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import db.userBeans.UserBean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import db.userBeans.UserBean;
import db.DBConnection;

public class UserDAO {
	private static UserDAO instance =new UserDAO();
	
	public static UserDAO getInstance() {
		return instance;
	}
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public UserDAO() {
		try {
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "scott";
			String password = "tiger";
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public int registerCheck(String id) {// 아이디 중복체크
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from users where id =?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return 0;// 이미 존재하는 회원
			} else {
				return 1;// 가입가능한 회원아이디
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}

			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return -1;// db오류
	}

	public int register(UserBean user) {//회원가입
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int number;
		String sql = "SELECT MAX(NO) FROM USERS";
		try {

			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				number = rs.getInt(1) + 1;
			} else {
				number = 1;
			}

			sql = "insert into users(no, name, nick, id, pw, gender, birth_yy, birth_mm, birth_dd, email" + ",location_no,location_detail) "
					+ "values(?,?,?,?,?,?,?,?,?,?,?)";

			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, number);
			pstmt.setString(2, user.getName());
			pstmt.setString(3, user.getNick());
			pstmt.setString(4, user.getId());
			pstmt.setString(5, user.getPw());
			pstmt.setInt(6, user.getGender());
			pstmt.setInt(7, user.getBirth_yy());
			pstmt.setInt(8, user.getBirth_mm());
			pstmt.setInt(9, user.getBirth_dd());
			pstmt.setString(10, user.getEmail());
			pstmt.setInt(11, user.getLocation_no());
			pstmt.setString(12, user.getLocation_detail());
			
			return pstmt.executeUpdate();//단순실행
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}

			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return -1;// db오류
	}

	public int login(String id, String pw) {//로그인
		String sql = "select pw from users where id=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if (rs.getString(1).equals(pw))
					return 1;// 로그인성공
				else
					return 0;// 비밀번호 불일치
			}
			return -1; // 아이디 없음
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2;// db오류

	}
	public UserBean getuser(String id) {//회원정보 불러오기
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="SELECT * FROM USERS WHERE ID=?";
		UserBean user =null;
		
		try {
			conn = DBConnection.getConnection();
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
				user.setBirth_yy(rs.getInt(7));
				user.setBirth_mm(rs.getInt(8));
				user.setBirth_dd(rs.getInt(9));
				user.setEmail(rs.getString(10));
				user.setPoint(rs.getInt(11));
				user.setGrade(rs.getString(12));
				user.setLocation_zip_code(rs.getInt(13));
				user.setLocation_no(rs.getInt(14));
				user.setLocation_detail(rs.getString(15));
				user.setCreated_at(rs.getTimestamp(16));
				user.setCountry_code(rs.getInt(17));
				
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
	public String findUserId(UserBean user) {//아이디 찾기
		Connection conn=null;
		PreparedStatement pstmt=null;
		String id= null;
		String sql ="select id from users where name=? and email=?";
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getName());
			pstmt.setString(2, user.getEmail());
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				id=rs.getString("id");
			}
			
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
		return id;
	}public String findUserPw(UserBean user) {//비밀번호 찾기
		Connection conn=null;
		PreparedStatement pstmt=null;
		String pw= null;
		String sql ="select pw from users where id=? and email=?";
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getId());
			pstmt.setString(2, user.getEmail());
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				pw=rs.getString("pw");
			}
			
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
		return pw;
	}
	public int updateUser(UserBean user) {//회원정보 수정
		Connection conn=null;
		PreparedStatement pstmt=null;
		String sql = "UPDATE USERS SET PW =?, EMAIL=? WHERE ID=? ";
		int re =-1;
		try {
			conn = DBConnection.getConnection();
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
	/*---------------관리자 로그인----------------------*/
	public boolean admin_login(String admin_id,String admin_pass){
		boolean b = false;
		try {
			String sql = "select * from admin where admin_id = ? and admin_pass = ?";
			conn =DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, admin_id);
			pstmt.setString(2, admin_pass);
			rs = pstmt.executeQuery();
			b=rs.next();
		} catch (Exception e) {
			System.out.println("admin_login err : " + e);
		} finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (Exception e2) {
				
			}
		}
		
		return b;
	}	
}
