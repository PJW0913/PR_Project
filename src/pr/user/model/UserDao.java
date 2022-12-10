package pr.user.model;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDao {
	
	private static UserDao userDao = new UserDao();
			
	// 생성자는 외부에서 호출 못하게 private으로 지정
	private UserDao() {
	}
	
	// 싱글톤 (Singleton)		
	public static UserDao getInstance() {
		return userDao;
	}
	
	//데이터베이스 멤버변수
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String jdbc_driver = "oracle.jdbc.driver.OracleDriver";
	String jdbc_url = "jdbc:oracle:thin:@localhost:1521";
	
	//데이터베이스 연결 메소드
	void connect() {
		try {
			Class.forName(jdbc_driver);
			
			conn = DriverManager.getConnection(jdbc_url, "scott", "tiger");
			System.out.println("DB에 연결함.");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	//데이터베이스 연결 끊기 메소드
	void disconnect() {
		if(pstmt != null) {
			try {
				pstmt.close();
			}
			catch(SQLException e) {
				e.printStackTrace();
			}
		}
		if(conn != null) {
			try {
				conn.close();
			}
			catch(SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	//로그인 메소드
	public int loginDB(String userId, String userPassword) {
		connect();
		
		String sql = "SELECT USERPW from USERINFO where USERID=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(userPassword)) 
					return 1;  // 로그인 성공
				else
					return 0; //비밀번호 불일치
			}
			return -1;  //아이디가 없음
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return -2;  //데이터베이스 오류
	}
	
		
		

}
