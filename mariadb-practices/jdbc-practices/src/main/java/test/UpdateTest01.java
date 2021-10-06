package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class UpdateTest01 {
	public static void main(String[] args) {
		DeptVo vo = new DeptVo();
		vo.setName("전략기획팀");
		vo.setNo(9L);
		
		Boolean result = update(vo);
		if(result) {
			System.out.println("성공!");
		}
	}
	private static boolean update(DeptVo vo) {
		boolean result = false;
		Connection conn = null;
		Statement stmt = null;
		try {
			// 1. jdbc driver 로딩
			Class.forName("org.mariadb.jdbc.Driver");
			// 2. 연결하기
			String url  = "jdbc:mysql://127.0.0.1:3307/employees?charset=utf8";
			conn = DriverManager.getConnection(url, "hr", "hr");
			System.out.println("연결성공");
			
			//3. statement 생성
			stmt = conn.createStatement();
			
			//4. SQL 실행
			String sql = "update dept" + 
				    "   set name='" + vo.getName() + "'" +
				    " where no=" + vo.getNo();
			int count = stmt.executeUpdate(sql);
			
			result = count ==1;
			
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 로딩 실패:"+ e);
		} catch (SQLException e) {
			System.out.println("err : "+e);
		}finally {
			//clean up
			try {
				if(stmt != null) {
				stmt.close();
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
