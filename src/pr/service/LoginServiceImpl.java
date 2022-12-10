package pr.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pr.user.model.UserDao;
import pr.user.model.UserDto;

public class LoginServiceImpl implements LoginService{
	
	private UserDao userDao;
	
	public LoginServiceImpl() {
		
		userDao = UserDao.getInstance();
	}
	
	public int execute(HttpServletRequest request, HttpServletResponse response) {
		return userDao.loginDB((String)request.getAttribute("userid"),(String)request.getAttribute("userpw"));
	} 
}
