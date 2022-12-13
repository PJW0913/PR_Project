package pr.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface BoardWriteService {
	
	public int execute(HttpServletRequest request, HttpServletResponse response);

}
