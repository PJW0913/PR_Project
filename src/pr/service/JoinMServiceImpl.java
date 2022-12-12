package pr.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pr.user.model.UserDao;
import pr.user.model.UserDto;
import pr.user.model.UserMDto;

public class JoinMServiceImpl implements JoinMService{
	
	private UserDao userDao;
	
	public JoinMServiceImpl() {
		
		userDao = UserDao.getInstance();
	}
	
	public int execute(HttpServletRequest request, HttpServletResponse response) {
		return userDao.joinMDB((String) request.getAttribute("userID"));
	} 

}
