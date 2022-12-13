package pr.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pr.user.model.UserDao;
import pr.user.model.UserDto;

public class ChangePwServiceImpl implements ChangePwService {

   private UserDao userDao;
   
   public ChangePwServiceImpl() {
      
      userDao = UserDao.getInstance();
   }
   
   public int execute(HttpServletRequest request, HttpServletResponse response) {
      return userDao.changePw((String)request.getAttribute("userNewPw1"), (String)request.getAttribute("userId"));
   } 
}
