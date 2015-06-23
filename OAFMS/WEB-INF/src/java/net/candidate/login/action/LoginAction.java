package net.candidate.login.action;

import java.util.List;

import javax.servlet.http.*;

import net.security.SecurityService;
import net.security.SecurityServiceImpl;
import net.security.User;
import net.candidate.login.dao.*;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;

public class LoginAction extends ActionSupport implements ServletRequestAware{

	public int oid;
	private String password;
	private HttpServletRequest request;
	
	//Data Fetching
	private UserList userlist;
	private List<UserList> userlistlist;
	
	DAO dao=new DAO();
	
	public UserList getUserlist() {
		return userlist;
	}
	public void setUserlist(UserList userlist) {
		this.userlist = userlist;
	}
	public List<UserList> getUserlistlist() {
		return userlistlist;
	}
	public void setUserlistlist(List<UserList> userlistlist) {
		this.userlistlist = userlistlist;
	}
	
	//Login Logic
	public void setServletRequest(HttpServletRequest request) {
		this.request=request;		
	}
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String execute() throws Exception {
	   
		HttpSession session = request.getSession();
		session.setAttribute("registrationid",oid);
		SecurityService service = new SecurityServiceImpl();
		try {
			User user = service.authenticate(oid, password);
			session.setAttribute("User", user);
			System.out.println(user);
			userlistlist=dao.fetch(getOid());
			return SUCCESS;
		} catch (Exception e) {
			this.addActionError(e.getMessage());
			return LOGIN;
		}				
	}
}
