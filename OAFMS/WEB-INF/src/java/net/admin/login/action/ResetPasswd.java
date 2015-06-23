package net.admin.login.action;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import javax.servlet.http.*;

import net.adminsecurity.AdminUser;
import net.admin.login.dao.DAO;
import net.admin.login.dao.AdminDAO;
import net.admin.login.dao.DAOPasswd;
import net.database.DBConnection;

import net.candidate.login.action.*;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ServletRequestAware;

public class ResetPasswd extends ActionSupport implements ServletRequestAware
{	
	String Newpasswd;
	String Enteragain;
	
	private HttpServletRequest request;
	private LoginAction login;
	
	//Data Fetching
	//Data Fetching
	private AdminUserList adminuserlist;
	private List<AdminUserList> adminuserlistlist;
	
	DAO daoadminid = new DAO();
	AdminDAO dao=new AdminDAO();
	DAOPasswd daopasswd = new DAOPasswd();
	
	public AdminUserList getAdminuserlist() {
		return adminuserlist;
	}
	public void setAdminuserlist(AdminUserList adminuserlist) {
		this.adminuserlist = adminuserlist;
	}
	public List<AdminUserList> getAdminuserlistlist() {
		return adminuserlistlist;
	}
	public void setAdminuserlistlist(List<AdminUserList> adminuserlistlist) {
		this.adminuserlistlist = adminuserlistlist;
	}
	//-----------------------------------------------------------------------//
	private UserList userlist;
	private List<UserList> userlistlist;
	
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
	
	public String execute() throws Exception {
	HttpSession session = request.getSession();
	AdminUser user=(AdminUser)session.getAttribute("User");
		
	 String Username = "";
	   Username = session.getAttribute("uname").toString();
	   adminuserlistlist=dao.fetch(Username);
		 
		if(user!=null)
		{
			   if(user.isAdministrator())
			   {
			if(daopasswd.update(getEnteragain(), Username))
			{
				addActionError(getText("paaswd_changed_success"));   
				return "success";
				   
			}
		}
		}
				else
				   {
					   this.addActionError("You are not authorised for this action.");
					   return LOGIN;
				   }
		return LOGIN;
	}	
	
	// Newpasswd Getter and Setter
	public String getNewpasswd() {
		return Newpasswd;
	}
	public void setNewpasswd(String Newpasswd) {
		this.Newpasswd = Newpasswd;
	}
	
	// Enteragain Getter and Setter
	public String getEnteragain() {
		return Enteragain;
	}
	public void setEnteragain(String Enteragain) {
		this.Enteragain = Enteragain;
	}	
}
