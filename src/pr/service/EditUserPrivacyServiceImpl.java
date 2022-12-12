package pr.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pr.user.model.UserDao;
import pr.user.model.UserDto;

public class EditUserPrivacyServiceImpl implements EditUserPrivacyService{
	
	private UserDao userDao;
	
	public EditUserPrivacyServiceImpl() {
		
		userDao = UserDao.getInstance();
	}
	
	public int execute(HttpServletRequest request, HttpServletResponse response) {
		return userDao.editDB((String)request.getAttribute("userid"), (UserDto)request.getAttribute("userDto"));
	} 

}
