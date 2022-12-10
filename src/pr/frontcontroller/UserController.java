package pr.frontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pr.service.LoginService;
import pr.service.LoginServiceImpl;

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
		
		//login
		if(command.equals("/login.do")) {
			System.out.println("login.do 입니다.");
			
			String userid = request.getParameter("userid");
			String userpw = request.getParameter("userpw");
			
			request.setAttribute("userid", userid);
			request.setAttribute("userpw", userpw);
			
			LoginService loginService = new LoginServiceImpl();
			int ls = loginService.execute(request, response);
			
			//login 성공
			if(ls == 1) {
				System.out.println("로그인 성공1");
				HttpSession session = request.getSession();
				session.setAttribute("userid", userid);
				System.out.println("로그인 성공2");
				response.sendRedirect("/PR_Project/main.jsp");
			} 
			
			//login 실패
			else if(ls == 0 || ls == -1 || ls == -2) {
				System.out.println(ls);
				System.out.println("로그인 실패1");
				request.setAttribute("ls", ls);
				System.out.println("로그인 실패2");
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("/PR_Project/main.js");
				requestDispatcher.forward(request, response);
			}
		}
		
		
	}

}
