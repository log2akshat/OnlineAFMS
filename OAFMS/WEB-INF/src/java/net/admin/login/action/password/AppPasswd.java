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
import net.candidate.login.action.UserList;
import net.database.DBConnection;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ServletRequestAware;

public class AppPasswd extends ActionSupport implements ServletRequestAware{
	
	private HttpServletRequest request;
	
	//Data Fetching//Data Fetching
	private AdminUserList adminuserlist;
	private List<AdminUserList> adminuserlistlist;
	
	DAO dao=new DAO();
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
	   Username = session.getAttribute("uname").toString();	;
	   adminuserlistlist=daoprofile.fetch(Username);
	   setName(this.name);
	   setAppid(this.appid);
		
	   if(user!=null){
		   System.out.println(user);
		   if(user.isAdministrator())
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
	
	//Name & ID Lists
	private List name = new ArrayList();
	private List appid = new ArrayList();
	
	//getter and setter method for state variable//
	public List getName() {
		return name;
	}
	
	public List getAppid() {
		return appid;
	}
	
	public void setName(List name) {
	//Implementation of the application specific logic to retrieve the data from the database//
		try 
		{
		Connection connect = null;
		PreparedStatement pstmt = null;
		DBConnection getConnect = new DBConnection();
		connect = getConnect.getCon();
		
		String Name = "";
		ResultSet result = null;
		String Stateqry = "Select Name from applicant";
		pstmt = connect.prepareStatement(Stateqry);
		result = pstmt.executeQuery();
		{
		        while (result.next())
		        {
		        	Name = result.getString(1);
		        	name.add(Name);
		        }
		 }		
		}
		  
	 catch (SQLException e) {
		e.printStackTrace();
	 }	
	}
	
	public void setAppid(List appid) {
		//Implementation of the application specific logic to retrieve the data from the database//
			try 
			{
			Connection connect = null;
			PreparedStatement pstmt = null;
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			
			String AppID = "";
			ResultSet result = null;
			String qry = "Select OnlineID from applicant";
			pstmt = connect.prepareStatement(qry);
			result = pstmt.executeQuery();
			{
			        while (result.next())
			        {
			        	AppID = result.getString(1);
			            appid.add(AppID);
			        }
			 }		
			}
			  
		 catch (SQLException e) {
			e.printStackTrace();
		 }	
		}
}
