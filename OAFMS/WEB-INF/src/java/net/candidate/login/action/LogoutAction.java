package net.candidate.login.action;

import javax.servlet.http.*;

import net.security.SecurityService;
import net.security.SecurityServiceImpl;
import net.security.User;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.ServletRequestAware;

public class LogoutAction extends ActionSupport implements ServletRequestAware{

	private HttpServletRequest request;	
	public void setServletRequest(HttpServletRequest request) {
		this.request=request;		
	}
	public String execute() throws Exception {	   
		HttpSession session = request.getSession();
		session.invalidate();
		return SUCCESS;					
	}	
}
