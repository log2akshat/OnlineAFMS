package net.admin.login.action.password;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import javax.servlet.http.*;

import net.adminsecurity.AdminUser;
import net.admin.login.action.*;
import net.candidate.login.dao.DAO;
import net.candidate.login.action.*;
import net.admin.login.dao.DAOAppPasswd;
import net.database.DBConnection;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ServletRequestAware;

public class SendAppPasswd extends ActionSupport implements ServletRequestAware
{	
	private HttpServletRequest request;
	
	//Data Fetching
	private AdminUserList adminuserlist;
	private List<AdminUserList> adminuserlistlist;	
	
	DAO dao = new DAO();
	DAOAppPasswd daoAppPasswd = new DAOAppPasswd();
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
	
	   String RegID = "";
	   RegID = session.getAttribute("regid").toString();
	   int oid = 0;
	   oid = Integer.parseInt(RegID);
	   userlistlist=dao.fetch(oid);
	   
		if(user!=null)
		{
			   if(user.isAdministrator())
			   {
			if(daoAppPasswd.send(oid))
			{
				//addActionError(getText("mailsent_applicant"));   
				HttpSession session1 = request.getSession();
				String exc = session1.getAttribute("ex").toString();
				addActionError(exc);
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
	
}