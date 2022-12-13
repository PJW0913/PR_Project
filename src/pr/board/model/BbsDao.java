package pr.board.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BbsDao {
	
	// 싱글톤 (Singleton)	
	private static BbsDao bbsDao = new BbsDao();
				
	// 생성자는 외부에서 호출 못하게 private으로 지정
	private BbsDao() {
	}
			
	public static BbsDao getInstance() {
		return bbsDao;
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
	
	// 작성일 등록 메소드
	public String getDate() {
		connect();
		
		String sql = "select sysdate from dual";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				String s = rs.getDate(1).toString(); //date형식을 String으로 변환
				return s;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return ""; //오류
	}
	
	// 다음 게시판 번호 등록 메소드
		public int getNext() {
			connect();
			
			String sql = "select bbsid from bbs order by bbsid desc";
			
			try {
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					return rs.getInt(1) + 1; //나온 게시글 번호에 +1
				}
				return 1; //첫 번째 게시물
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			finally {
				disconnect();
			}
			return -1; //오류
		}
		
	// 커뮤니티 글쓰기 메소드
		public int bbsWrite(String bbsTitle, String userid, String bbsContent) {
			int bbsnum = getNext();
			if(userid == null) {   //id가 null 일때
				return -1;
			}
			String bbsdate = getDate();   //순서 중요... 
			connect();
			
			String sql = "Insert into bbs(bbsid, bbstitle, userid, bbsdate, bbscontent, viewcnt, bbsavailable) values (? ,? ,? ,? ,? ,? ,?)";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, bbsnum);                		//게시판 번호
				pstmt.setString(2, bbsTitle);              //게시판 제목
				pstmt.setString(3, userid);                 //게시판 작성자
				pstmt.setString(4, bbsdate);            	//게시판 작성일
				pstmt.setString(5, bbsContent);          //게시판 내용
				pstmt.setInt(6, 0);                             //게시판 조회수
				pstmt.setInt(7, 1);                              //게시판 존재유무
				pstmt.executeUpdate();
				return 1;
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			finally {
				disconnect();
			}
			return -1;
		}
		
	//커뮤니티 글 리스트 메소드
	public ArrayList<BbsDto> getList(int pageNumber) {
		int bbsnum = getNext();
		connect();
		
		String sql = "Select * from bbs where bbsid < ? and rownum<=10 and bbsavailable = 1 order by bbsid desc";
		ArrayList<BbsDto> list = new ArrayList<BbsDto>();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bbsnum - (pageNumber -1) * 10);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				BbsDto bbsDto = new BbsDto();
				bbsDto.setBbsId(rs.getInt(1));
				bbsDto.setBbsTitle(rs.getString(2));
				bbsDto.setUserId(rs.getString(3));
				bbsDto.setBbsDate(rs.getString(4).toString());    
 				bbsDto.setBbsContent(rs.getString(5));
				bbsDto.setViewcnt(rs.getInt(6));
				bbsDto.setBbsAvailable(rs.getInt(7));
				list.add(bbsDto);
			}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return list;
	}
	
	//커뮤니티 페이징 처리 메소드
	public boolean nextPage(int pageNumber) {
		int bbsnum = getNext();
		connect();
		
		String sql = "Select * from bbs where bbsid < ? and bbsavailable = 1";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bbsnum - (pageNumber -1) * 10);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {         //하나라도 존재하면
				return true;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	

}
