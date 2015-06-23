package net.admin.login.action;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import javax.servlet.http.*;

import net.candidate.login.action.UserList;
import net.candidate.login.dao.DAO;
import net.adminsecurity.AdminUser;
import net.admin.login.dao.DAOSelectionUpdate;
import net.database.DBConnection;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ServletRequestAware;

public class SelectionUpdate extends ActionSupport implements ServletRequestAware
{	
	String WrittenTestCall;
	String Status;
	
	private HttpServletRequest request;
	private LoginAction login;
	
	//Data Fetching
	private AdminUserList adminuserlist;
	private List<AdminUserList> adminuserlistlist;
	
	DAO dao = new DAO();
	DAOSelectionUpdate daoselection = new DAOSelectionUpdate();
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
		   String RegID = "";
		   RegID = session.getAttribute("regid").toString();
		   int oid = 0;
		   oid = Integer.parseInt(RegID);
		   
		   adminuserlistlist=daoprofile.fetch(Username);
		   userlistlist=dao.fetch(oid); 
		   System.out.println(oid);
		   
		if(user!=null)
		{
			   if(user.isCommitteemember())
			   {
			if(daoselection.update(getWrittenTestCall(), getStatus(), oid))
			{
				   return "success";
				   
			}
		}
		}
				else
				   {
					this.addActionError(getText("authorized_access"));
					   return LOGIN;
				   }
		return LOGIN;
	}	
	
	// WrittenTestCall Getter and Setter
	public String getWrittenTestCall() {
		return WrittenTestCall;
	}
	public void setWrittenTestCall(String WrittenTestCall) {
		this.WrittenTestCall = WrittenTestCall;
	}
	
	// Status Getter and Setter
	public String getStatus() {
		return Status;
	}
	public void setStatus(String Status) {
		this.Status = Status;
	}
}
