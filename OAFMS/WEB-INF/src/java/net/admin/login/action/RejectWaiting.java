package net.admin.login.action;

import java.io.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import net.database.*;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.http.*;

import net.admin.login.action.*;
import net.admin.login.dao.AdminDAO;
import net.adminsecurity.AdminUser;
import net.candidate.login.action.*;
import net.candidate.login.dao.DAO;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.dispatcher.SessionMap;

public class RejectWaiting extends ActionSupport implements ServletRequestAware{
	
	private int oid = 0;
	
	private HttpServletRequest request;
	private LoginAction login;
	
	//Data Fetching
	private AdminUserList adminuserlist;
	private List<AdminUserList> adminuserlistlist;
	
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
	
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
		
	public String execute() throws Exception {
	   HttpSession session = request.getSession();
	   AdminUser user=(AdminUser)session.getAttribute("User");
	
	   String Username = "";
	   Username = session.getAttribute("uname").toString();
	   session.setAttribute("regid",oid);
	   adminuserlistlist=daoprofile.fetch(Username);
	  
	   /*
	    * Select Candidates from Waiting List Code begins from here....
	    */
	    try 
		{
			Connection connect = null;
			ResultSet result = null;
			PreparedStatement pstmt = null;
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();		
			
			System.out.println("JDBC MySQL Select Candidates from Waiting List Connection....");
				String query = "UPDATE applicant SET Status='Rejected' WHERE OnlineID=?";
				pstmt = connect.prepareStatement(query);
				pstmt.setInt(1, oid);
				pstmt.executeUpdate();			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	
		   /*
		    * Select Candidates from Waiting List Code ends from here....
		    */
		
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
