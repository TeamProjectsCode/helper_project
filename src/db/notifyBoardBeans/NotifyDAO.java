package db.notifyBoardBeans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import db.notifyBoardBeans.NotifyBean;

	import java.sql.Connection;

	import java.sql.PreparedStatement;

	import java.sql.ResultSet;

	import java.util.ArrayList;



	import javax.naming.Context;

	import javax.naming.InitialContext;

	import javax.sql.DataSource;

public class NotifyDAO{

		//데이터베이스 객체변수
		private Connection conn;
		private PreparedStatement pstmt;
		private ResultSet rs;
		private DataSource ds;
		
		//paging 처리용 변수
		private int tot; // 전체 레코드수
		private int pList = 10; //페이지당 레코드 수
		private int pageSu; //전체 페이지 수

		//생성자에서 데이터베이스 연결
		public NotifyDAO(){
			try {
				Context context = new InitialContext();
				ds = (DataSource)context.lookup("java:comp/env/jdbc/oracle");
			} catch (Exception e) {
				System.out.println("db connection err:" + e);
			}
		}
		//가장 최근 게시글 번호 구하기
		public int getCurrentNum() {
			String sql = "select max(no) from notify_board";
			int cnt = 0;
			try {
				conn = ds.getConnection();
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					cnt = rs.getInt(1);
				}
			} catch (Exception e) {
				System.out.println("getCurrentNum err : + " + e);
			} finally {
				try {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				} catch (Exception e2) {
					// TODO: handle exception
				}
			}
			return cnt;
		}
		
		//게시글 작성
		public void insertData(NotifyBean bean){
			String sql = "insert into notify_board values( NOTIFY_BOARD_NO_SEQ.nextval,?,?,?,?)";
			try {
				conn = ds.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, bean.getCategory());
				pstmt.setString(2, bean.getNotify_title());
				pstmt.setString(3, bean.getNotify_detail());
				pstmt.setInt(4, 0);	// hit
				
				pstmt.executeUpdate();
			} catch (Exception e) {	
				System.out.println("insertData err:" + e);
			} finally {
				try {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				} catch (Exception e2) {
					// TODO: handle exception
				}
			}
		}
		
		//전체 목록 출력
		public ArrayList<NotifyDTO> getDataAll(){
			ArrayList<NotifyDTO> list = new ArrayList<NotifyDTO>();
			try {
				conn = ds.getConnection();
				String sql = "select * from notify_board";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()){
					NotifyDTO dto = new NotifyDTO();
					dto.setNo(rs.getInt("no"));
					dto.setCreated_at(rs.getTimestamp("created_at"));
					dto.setCategory(rs.getInt("category"));
					dto.setCreator(rs.getString("creator"));
					dto.setNotify_title(rs.getString("notify_title"));
					dto.setNotify_hits(rs.getInt("notify_hits"));
					list.add(dto);
				}
			} catch (Exception e) {
				System.out.println("getDataAll err:" + e);
			} finally {
				try {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				} catch (Exception e2) {
					// TODO: handle exception
				}
			}
			return list;
		}
		public NotifyDTO getData(int num){
			NotifyDTO dto = null;
			try {
				conn = ds.getConnection();
				String sql = "select * from notify_board where no=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, num);
				rs = pstmt.executeQuery();
				if(rs.next()){
					dto = new NotifyDTO();
					dto.setNo(rs.getInt("no"));
					dto.setCreated_at(rs.getTimestamp("created_at"));
					dto.setCategory(rs.getInt("category"));
					dto.setCreator(rs.getString("creator"));
					dto.setNotify_title(rs.getString("notify_title"));
					dto.setNotify_hits(rs.getInt("notify_hits"));
					dto.setNotify_detail(rs.getString("notify_detail"));
				
				}
			} catch (Exception e) {
				System.out.println("getData err : " + e);
			} finally {
				try {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				} catch (Exception e2) {
					// TODO: handle exception
				}
			}
			return dto;
		}
		
		public void updateData(NotifyBean bean){//수정
			try {
				String sql = "update notify_board set notify_title=?, notify_detail=? where no=?";
				conn = ds.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, bean.getNotify_title());
				pstmt.setString(2, bean.getNotify_detail());
				pstmt.setInt(3, bean.getNo());
				
				pstmt.executeUpdate();
			
			} catch (Exception e) {
				System.out.println("updateData err : " + e);
			} finally {
				try {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				} catch (Exception e2) {
					// TODO: handle exception
				}
			}
		}
		
		public void deleteData(int no){//삭제
			try {
				String sql = "delete from notify_board where no=?";
				conn = ds.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, no);
				pstmt.executeQuery();
			} catch (Exception e) {
				System.out.println("deleteData err : " + e);
			} finally {
				try {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				} catch (Exception e2) {
					// TODO: handle exception
				}
			}
		}
		public void updateNotify_hits(int no){//조회수처리
			try {
				String sql = "update notify_board set notify_hits=notify_hits+1 where no=?";
				conn = ds.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, no);
				pstmt.executeQuery();
			} catch (Exception e) {
				System.out.println("updateNotify_hits err : " + e);
			} finally {
				try {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				} catch (Exception e2) {
					// TODO: handle exception
				}
			}
		}
}
	

	