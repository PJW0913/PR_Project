package pr.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pr.board.model.BbsDao;

public class BoardWriteServiceImpl implements BoardWriteService{
	
	private BbsDao bbsDao;
	
	public BoardWriteServiceImpl() {
		
		bbsDao = BbsDao.getInstance();
	}
	
	public int execute(HttpServletRequest request, HttpServletResponse response) {
		return bbsDao.bbsWrite((String)request.getAttribute("bbsTitle"), (String)request.getAttribute("userid"), (String)request.getAttribute("bbsContent"));
		
	}

}
