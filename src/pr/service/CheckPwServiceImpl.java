package pr.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pr.user.model.UserDao;

public class CheckPwServiceImpl implements CheckPwService{
	
	private UserDao userDao;
	
	public CheckPwServiceImpl() {
		
		userDao = UserDao.getInstance();
	}
	
	public int execute(HttpServletRequest request, HttpServletResponse response) {
		return userDao.checkpwDB((String)request.getAttribute("userid"), (String)request.getAttribute("userpw"));
	} 

}
