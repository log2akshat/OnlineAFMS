package net.candidate.login.fetch.action;

import java.util.List;
import net.candidate.login.fetch.dao.DAO;
import com.opensymphony.xwork2.ActionSupport;

public class UserListAction extends ActionSupport{
	
	private static final long serialVersionUID = 1L;
	private UserList userlist;
	private List<UserList> userlistlist;
	
	DAO dao=new DAO();
	public String execute(){
		userlistlist=dao.fetch();
		return "success";
	}
	
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
}
