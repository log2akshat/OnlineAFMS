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
import net.admin.login.dao.DAOPrintCand;
import net.candidate.login.action.UserList;
import net.database.DBConnection;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ServletRequestAware;

public class ViewPrintCand extends ActionSupport implements ServletRequestAware{
	
	int offset = 0;
	int prev = 0;
	int starter = 0;
	private int selected = 0;
	
	private HttpServletRequest request;
	private LoginAction login;
	
	//Data Fetching
	private AdminUserList adminuserlist;
	private List<AdminUserList> adminuserlistlist;
	
	DAOPrintCand dao=new DAOPrintCand();
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
	 
	   int prev = 0;
		String ofst="";
		try
		{
		ofst = request.getParameter("offset");
		if(!ofst.equals(null))
		{
		offset = Integer.parseInt(ofst);
		}
		}
		catch(Exception e){}
		
	    userlistlist=dao.fetch(offset);
	    setSelected(this.selected);
	    setOffset(this.offset);
	    setPrev(this.prev);
	    setStarter(this.starter);
		if(prev<0) prev=0;
	     	
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
	
	public int getOffset() {
		return offset;
	}
	
	public void setOffset(int offset) {
		this.offset = offset+25;
	}
	
	public int getPrev() {
		return prev;
	}
	
	public void setPrev(int prev) {
		this.prev = offset-50;
	}
	
	public int getStarter() {
		return starter;
	}
	
	public void setStarter(int starter) {
		this.starter = offset-25+1;
	}
	
	//getter and setter method for Zeroreport variable//
	public int getSelected() {
		return selected;
	}
	
	public void setSelected(int selected) {
		//Implementation of the application specific logic to retrieve the data from the database//
			try 
			{
			Connection connect = null;
			PreparedStatement pstmt = null;
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			
			int SelectedCand = 0;
			ResultSet result = null;
			String qry = "Select count(*) from applicant a where Status = 'Selected'";
			pstmt = connect.prepareStatement(qry);
			result = pstmt.executeQuery();
			{
			        while (result.next())
			        {
			        	SelectedCand = result.getInt(1);
			        	this.selected = SelectedCand;
			        }
			 }		
			}
			  
		 catch (SQLException e) {
			e.printStackTrace();
		 }	
		}
}
