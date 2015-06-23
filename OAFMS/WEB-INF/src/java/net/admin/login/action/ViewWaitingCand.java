package net.admin.login.action;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import javax.servlet.http.*;
import net.adminsecurity.AdminUser;
import net.admin.login.action.RefereeList;
import net.admin.login.dao.DAOWaitingCand;
import net.candidate.login.action.UserList;
import net.database.DBConnection;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ServletRequestAware;

public class ViewWaitingCand extends ActionSupport implements ServletRequestAware{
	
	private HttpServletRequest request;
	private LoginAction login;
	
	//Data Fetching
	private AdminUserList adminuserlist;
	private List<AdminUserList> adminuserlistlist;
	
	DAOWaitingCand dao=new DAOWaitingCand();
	net.admin.login.dao.AdminDAO daoprofile=new net.admin.login.dao.AdminDAO();
	
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
	//--------------------------------------------------------------------------//
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
	   adminuserlistlist=daoprofile.fetch(Username);
	 
	   userlistlist=dao.fetch();
	  	
	   if(user!=null){
		   System.out.println(user);
		   if(user.isCommitteemember())
			   return SUCCESS;
		   else{
			   this.addActionError(getText("authorized_access"));
			   return LOGIN;
		   }
	   }
	   else{
		   this.addActionError(getText("authorized_login"));
		   return LOGIN;
	   }  					
	}	
}
