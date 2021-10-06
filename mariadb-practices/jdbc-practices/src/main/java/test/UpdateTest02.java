package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class UpdateTest02 {
	public static void main(String[] args) {
		DeptVo vo = new DeptVo();
		vo.setName("전략기획팀");
		vo.setNo(12L);
		
		Boolean result = update(vo);
		if(result) {
			System.out.println("성공!");
		}
	}
	private static boolean update(DeptVo vo) {
		boolean result = false;
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			// 1. jdbc driver 로딩
			Class.forName("org.mariadb.jdbc.Driver");
			// 2. 연결하기
			String url  = "jdbc:mysql://127.0.0.1:3307/employees?charset=utf8";
			conn = DriverManager.getConnection(url, "hr", "hr");
			System.out.println("연결성공");
			
			//3. sql 준비
			String sql = "update dept set name=? where no=?";
			pstmt = conn.prepareStatement(sql);
			//4. binding
			pstmt.setString(1, vo.getName());
			pstmt.setLong(2, vo.getNo());
			
			//5. SQL 실행
			int count = pstmt.executeUpdate();
			
			result = count ==1;
			
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 로딩 실패:"+ e);
		} catch (SQLException e) {
			System.out.println("err : "+e);
		}finally {
			//clean up
			try {
				if(pstmt != null) {
				pstmt.close();
				}
				if(conn != null) {
				conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
				
			}
		}
		return result;
	}

}
