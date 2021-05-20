package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import db.userBeans.UserBean;
import myUtil.HanConv;

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
	private static UserDAO instance = new UserDAO();

	public static UserDAO getInstance() {
		return instance;
	}

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public UserDAO() {
		try {
			conn = DBConnection.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int registerCheck(String id) {// 아이디 중복체크
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int x=-1;
		String sql = "select * from users where id =?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				x =1;// 이미 존재하는 회원
			} else {
				x = -1;// 해당아이디 없음 (가입가능한 회원아이디)
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
		return x;// db오류
	}

	public int register(UserBean user) {// 회원가입
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int number;
		String sql = "SELECT MAX(NO) FROM USERS";
		try {
			conn= DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				number = rs.getInt(1) + 1;
			} else {
				number = 1;
			}

			sql = "insert into users(no, name,nick,id, pw, gender, birth_yy, birth_mm, birth_dd, email"
					+ ",location_detail) " + "values(?,?,?,?,?,?,?,?,?,?,?)";
			conn=DBConnection.getConnection();
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
			//pstmt.setInt(11, user.getLocation_no());
			pstmt.setString(11, user.getLocation_detail());

			return pstmt.executeUpdate();// 단순실행

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
		return 1;
	}

	public int login(String id, String pw) {// 로그인
		String sql = "select pw,no from users where id=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if (rs.getString(1).equals(pw))
					return rs.getInt("no");// 로그인성공
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
		String sql="SELECT * FROM GET_USER_INFO WHERE ID = ?";
		UserBean user = null;
		
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				user = new UserBean();
				user.setNo(rs.getInt("NO"));
				user.setName(rs.getString("NAME"));
				user.setNick(rs.getString("NICK"));
				user.setId(rs.getString("ID"));
				user.setPw(rs.getString("PW"));
				user.setGender(rs.getInt("GENDER"));
				user.setBirth_yy(rs.getInt("BIRTH_YY"));
				user.setBirth_mm(rs.getInt("BIRTH_MM"));
				user.setBirth_dd(rs.getInt("BIRTH_DD"));
				user.setEmail(rs.getString("EMAIL"));
				user.setPoint(rs.getInt("POINT"));
				user.setGrade(rs.getString("GRADE"));
				user.setLocation_first_name(rs.getString("LOCATION_FRIST_NAME"));
				user.setLocation_second_name(rs.getString("LOCATION_SECOND_NAME"));
				user.setLocation_addr(rs.getString("LOCATION_ADDR"));
				user.setLocation_detail(rs.getString("LOCATION_DETAIL"));
				user.setCreated_at(rs.getTimestamp("CREATED_AT"));
				user.setCountry_code(rs.getInt("COUNTRY_CODE"));	
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return user;
	}

	public UserBean findId(String name, String email) throws Exception {// 아이디 찾기
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		UserBean id = null;

		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement("select id from users where name = ? " + "and email =?");
			pstmt.setString(1,name);
			pstmt.setString(2, email);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				id = new UserBean();
				id.setId(rs.getString("id"));
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}

		}
		return id;
	}

	public UserBean findPw(String id, String email) throws Exception {// 비밀번호 찾기
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		UserBean pw = null;

		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement("select pw from users where id = ? " + "and email =?");
			pstmt.setString(1, id);
			pstmt.setString(2, email);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				pw = new UserBean();
				pw.setPw(rs.getString("pw"));
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return pw;
	}
	public boolean updateUser(UserBean user) {//회원정보 수정
		Connection conn=null;
		PreparedStatement pstmt=null;
		String sql = "CALL MODIFY_USER(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		boolean isSuccess = false;
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, user.getNo());
			pstmt.setString(2, user.getPw());
			pstmt.setInt(3, user.getBirth_yy());
			pstmt.setInt(4, user.getBirth_mm());
			pstmt.setInt(5, user.getBirth_dd());
			pstmt.setString(6, user.getEmail());
			pstmt.setString(7, user.getLocation_first_name());
			pstmt.setString(8, user.getLocation_second_name());
			pstmt.setString(9, user.getLocation_addr());
			pstmt.setString(10, user.getLocation_detail());
			
			if(pstmt.executeUpdate() == 0) {
				isSuccess = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return isSuccess;
	}
	public boolean deleteUser(String no) {//회원탈퇴
		
		boolean isSuccess = false;
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		String sql = "CALL DELETE_USER(?)";
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, no);
			
			if(pstmt.executeUpdate() == 0) {
				isSuccess = true;
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
		return isSuccess;
	}
	/*---------------관리자 로그인----------------------*/
	public boolean admin_login(String admin_id, String admin_pass) {
		boolean b = false;
		try {
			String sql = "select * from admin where admin_id = ? and admin_pass = ?";
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, admin_id);
			pstmt.setString(2, admin_pass);
			rs = pstmt.executeQuery();
			b = rs.next();
		} catch (Exception e) {
			System.out.println("admin_login err : " + e);
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e2) {

			}
		}

		return b;
	}
}
