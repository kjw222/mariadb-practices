package driver;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MyDriverTest {

	public static void main(String[] args) {
		String url =null;
		Connection conn = null;
		try {
			//1. jdbc driver 로딩
			Class.forName("driver.MyDriver");
			//2. 연결
			url = "jdbc:mydb://127.0.0.1:3307/webdb";
			conn = DriverManager.getConnection(url, "webdb", "webdb");
			//3. 연결 성공
			System.out.println("ok: +conn");
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 로딩 실패 : "+e);
		}catch(SQLException e) {
			System.out.println("");
		}finally{
			try {
				if(conn != null) {
				conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
				
			}
		}
		

	}

}
