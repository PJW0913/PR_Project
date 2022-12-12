package pr.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pr.user.model.UserDao;
import pr.user.model.UserDto;

public class JoinServiceImpl implements JoinService{
	
	private UserDao userDao;
	
	public JoinServiceImpl() {
		
		userDao = UserDao.getInstance();
	}
	
	public int execute(HttpServletRequest request, HttpServletResponse response) {
		return userDao.joinDB((UserDto) request.getAttribute("userDto"));
	} 

}
