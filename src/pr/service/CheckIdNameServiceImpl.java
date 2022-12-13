package pr.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pr.user.model.UserDao;

public class CheckIdNameServiceImpl implements CheckIdNameService{

   private UserDao userDao;
   
   public CheckIdNameServiceImpl() {
      
      userDao = UserDao.getInstance();
   }
   
   public int execute(HttpServletRequest request, HttpServletResponse response) {
      return userDao.checkIdNameDB((String)request.getAttribute("userId"), (String)request.getAttribute("userName"));
   }
}
