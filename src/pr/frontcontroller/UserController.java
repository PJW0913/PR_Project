package pr.frontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pr.service.*;
import pr.user.model.UserDao;
import pr.user.model.UserDto;
import pr.user.model.UserMDto;

/**
 * Servlet implementation class UserController
 */
@WebServlet("*.do")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		actionDo(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		actionDo(request, response);
	}
	
	private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//설정
		System.out.println("actionDo");
		String uri = request.getRequestURI();       // 프로젝트 + 파일경로   => ex) /jspbook/list.jsp
		String conPath = request.getContextPath();  // 프로젝트 path만 가져옴  => ex) /jspbook
		String command = uri.substring(conPath.length());
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html:charset=utf-8");
		
		//로그인
		if(command.equals("/login.do")) {
			System.out.println("login 입니다.");
			
			String userid = request.getParameter("userid");
			String userpw = request.getParameter("userpw");
			
			request.setAttribute("userid", userid);
			request.setAttribute("userpw", userpw);
			
			LoginService loginService = new LoginServiceImpl();
			int ls = loginService.execute(request, response);
			
			//로그인 성공
			if(ls == 1) {
				System.out.println("로그인 성공");
				HttpSession session = request.getSession();
				session.setAttribute("userid", userid);
				response.sendRedirect("/PR_Project/main.jsp");
			} 
			
			//로그인 실패
			else if(ls == 0 || ls == -1 || ls == -2) {
				// 0 비밀번호 불일치 , -1 아이디 없음 , -2 데이터베이스 오류
				System.out.println(ls);
				request.setAttribute("ls", ls);
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("/loginAction.jsp");  
				requestDispatcher.forward(request, response);
			}
		}
		
		//회원가입
		if(command.equals("/join.do")) {
			System.out.println("join 입니다.");
			
			String userid = request.getParameter("userid");
			String userpw = request.getParameter("userpw");   
			String username = request.getParameter("username");
			String useremail = request.getParameter("useremail");
			String usernumber = request.getParameter("usernumber");
			
			UserDto userDto = new UserDto(userid, userpw, username, useremail, usernumber);
			
			request.setAttribute("userDto", userDto);
			
			JoinService joinService = new JoinServiceImpl();
			int js = joinService.execute(request, response);
			
			request.setAttribute("userID", userid);
			JoinMService joinMService = new JoinMServiceImpl();
			int jms = joinMService.execute(request, response);
			
			// 회원가입 실패 
			if(js == -1) {
				// -1 아이디 이미 존재 (primary key)
				System.out.println(js);
				System.out.println("회원가입 실패");
				// 아이디가 이미 존재했을때 alert로 할지 아님 미리 아이디 중복확인으로 끝낼지 
			}
			//회원 가입 성공
			else {
				System.out.println("회원가입 성공");
				HttpSession session = request.getSession();
				session.setAttribute("userid", userid);
				response.sendRedirect("/PR_Project/main.jsp");
			}
			//회원가입(manager)실패
			if(jms == -1) {
				System.out.println(jms);
				System.out.println("회원가입(manager) 실패");
			}
			//회원가입(manager)성공
			else {
				System.out.println("회원가입(manager) 성공");
			}
		}
		
		//개인정보  비밀번호 체크
		if(command.equals("/myPrivacy.do")) {
			System.out.println("myPrivacy 입니다.");
			HttpSession session = request.getSession();
			
			String userid = (String) session.getAttribute("userid");
			String userpw = request.getParameter("userpw");
			
			request.setAttribute("userid", userid);
			request.setAttribute("userpw", userpw);
			
			CheckPwService checkpwService = new CheckPwServiceImpl();
			int cps = checkpwService.execute(request, response);
			
			//비밀번호 일치
			if(cps == 1) {
				System.out.println("비밀번호 일치");
				//회원정보 
				UserDto userDto = new UserDto();
				UserDao userDao = UserDao.getInstance();
				userDto = userDao.getDB(userid);
				session.setAttribute("userDto", userDto);
				//회원(manager) 정보
				UserMDto userMDto = new UserMDto();
				userMDto = userDao.getMDB(userid);
				session.setAttribute("userMDto", userMDto);
				
				response.sendRedirect("/PR_Project/MyPagePersonalInfo.jsp");
			}
			//비밀번호 불일치
			else {
				System.out.println("비밀번호 불일치");
				System.out.println(cps);
				request.setAttribute("cps", cps);
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("/MyPage.jsp");  
				requestDispatcher.forward(request, response);
			}
		}
		
		
	}

}
