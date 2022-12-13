package pr.user.model;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDao {
	
	// 싱글톤 (Singleton)	
	private static UserDao userDao = new UserDao();
			
	// 생성자는 외부에서 호출 못하게 private으로 지정
	private UserDao() {
	}
		
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
			if(rs != null) {
				try {
					rs.close();
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
		finally {
			disconnect();
		}
		return -2;  //데이터베이스 오류
	}
	
	//회원가입 메소드
	public int joinDB(UserDto userDto) {
		connect();
		
		String sql = "Insert into userinfo values (?,?,?,?,?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,   userDto.getUserId());
			pstmt.setString(2,   userDto.getUserPassword());
			pstmt.setString(3,   userDto.getUserName());
			pstmt.setString(4,   userDto.getUserEmail());
			pstmt.setString(5,   userDto.getUserPhone());
			return pstmt.executeUpdate();    // 성공할시 반드시 0이상 숫자가 반환됨.
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return -1;  // 오류
	}
	
	//회원가입(manager) 메소드
	public int joinMDB(String userId) {
		connect();
		
		String sql = "Insert into usermanager(usernum,userid) values(userm_seq.nextval,?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,   userId);
			return pstmt.executeUpdate();  
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return -1; //오류
	}
		
	//회원 비밀번호 확인 메소드
	public int checkpwDB(String userId, String userPw) {
		connect();
		
		String sql = "select userpw from userinfo where userid=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,   userId);
			rs = pstmt.executeQuery();
			//데이터 하나
			if(rs.next()) {
				System.out.println(rs.getString("userpw"));
				if(userPw.equals(rs.getString("userpw"))) {
					return 1;
				}
			}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return 0;
	}
	
	//회원정보 메소드
	public UserDto getDB(String userId) {
		connect();
		
		String sql = "SELECT * from userinfo where userid=?";
		UserDto userDto = new UserDto();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			ResultSet rs = pstmt.executeQuery();
			
			//데이터 하나만
			rs.next();
			userDto.setUserId(rs.getString("userid"));
			userDto.setUserPassword(rs.getString("userpw"));
			userDto.setUserName(rs.getString("username"));
			userDto.setUserEmail(rs.getString("useremail"));
			userDto.setUserPhone(rs.getString("userphone"));
			rs.close();
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return userDto;
	}
	
	//회원(manager)정보 메소드
	public UserMDto getMDB(String userId) {
		connect();
		
		String sql = "SELECT * from usermanager where userid=?";
		UserMDto userMDto = new UserMDto();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			ResultSet rs = pstmt.executeQuery();
			
			//데이터 하나만
			rs.next();
			userMDto.setUserId(rs.getString("userid"));
			userMDto.setUserLevel(rs.getString("userlevel"));
			userMDto.setUserDate(rs.getString("userdate"));
			userMDto.setUserState(rs.getString("userstate"));
			rs.close();
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return userMDto;
	}
	
	//회원정보 수정 메소드 (비밀번호, 이메일)
	public int editDB(String userid, UserDto userDto) {
		connect();
		
		String sql = "update userinfo set userpw=?, useremail=? where userid=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userDto.getUserPassword());
			pstmt.setString(2, userDto.getUserEmail());
			pstmt.setString(3, userid);
			pstmt.executeUpdate(); 
			return 1;
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return 0;
	}
	
	   //비밀번호 찾기 정보 입력메소드 (이름, 아이디 확인)
	   public int checkIdNameDB(String userId, String userName) {
	      connect();
	      
	      String sql = "SELECT USERNAME from USERINFO where USERID=?";
	      
	      try {
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setString(1, userId);
	         rs = pstmt.executeQuery();
	         
	         if(rs.next()) {
	            if(rs.getString(1).equals(userName)) {
	               return 1; //입력정보 일치
	            } else {
	               return 0; //이름 불일치
	            }
	         }
	         return -1; //아이디 없음
	      }
	      catch(SQLException e) {
	         e.printStackTrace();
	      }
	      finally {
	         disconnect();
	      }
	      return -2; //데이터베이스 오류
	   }
	   
	   //비밀번호 재설정 메서드
	   public int changePw(String userNewPw1, String userId) {
	      connect();
	      
	      String sql = "UPDATE USERINFO SET USERPW=? WHERE USERID=?";
	      
	         try {
	            pstmt = conn.prepareStatement(sql);
	            pstmt.setString(1, userNewPw1);
	            pstmt.setString(2, userId);            
	            pstmt.executeUpdate();
	            return 1;
	         }
	         catch(SQLException e) {
	            e.printStackTrace();
	         }
	         finally {
	            disconnect();
	         }
	      return 0; //비밀번호 재입력 불일치
	   }
	
	

}
