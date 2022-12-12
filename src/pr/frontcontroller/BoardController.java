package pr.frontcontroller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BoardController
 */
@WebServlet("/Board.do")
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
		
		//공지사항 리스트
		
	}

}
