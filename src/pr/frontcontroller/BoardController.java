package pr.frontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pr.service.BoardWriteService;
import pr.service.BoardWriteServiceImpl;

/**
 * Servlet implementation class BoardController
 */
@WebServlet("*.board")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BoardController() {
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
		System.out.println("board actionDo");
		String uri = request.getRequestURI();       // 프로젝트 + 파일경로   => ex) /jspbook/list.jsp
		String conPath = request.getContextPath();  // 프로젝트 path만 가져옴  => ex) /jspbook
		String command = uri.substring(conPath.length());
				
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html:charset=utf-8");
		
		//공지사항 글쓰기
		if(command.equals("/write.board")) {
			System.out.println("write입니다.");
			HttpSession session = request.getSession();
			
			String userid = (String) session.getAttribute("userid");
			String bbsTitle = request.getParameter("bbsTitle");
			String bbsContent = request.getParameter("bbsContent");
			
			request.setAttribute("userid", userid);
			request.setAttribute("bbsTitle", bbsTitle);
			request.setAttribute("bbsContent", bbsContent);
			
			BoardWriteService boardWriteService = new BoardWriteServiceImpl();
			int bws = boardWriteService.execute(request, response);
			System.out.println(bws);
			request.setAttribute("bws", bws);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("/boardWriteAction.jsp");  
			requestDispatcher.forward(request, response);
			}
		
	}

}
