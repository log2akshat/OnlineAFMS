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
import net.admin.login.dao.DAOOneReport;
import net.candidate.login.action.UserList;
import net.database.DBConnection;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ServletRequestAware;

public class ViewOneReport extends ActionSupport implements ServletRequestAware{
	
	int offset = 0;
	int prev = 0;
	int starter = 0;
	private int onereport = 0;
	
	private HttpServletRequest request;
	private LoginAction login;
	
	//Data Fetching
	private AdminUserList adminuserlist;
	private List<AdminUserList> adminuserlistlist;
	
	DAOOneReport dao=new DAOOneReport();
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
	private RefereeList refereelist;
	private List<RefereeList> refereelistlist;
	
	public RefereeList getRefereelist() {
		return refereelist;
	}
	public void setRefereelist(RefereeList refereelist) {
		this.refereelist = refereelist;
	}
	public List<RefereeList> getRefereelistlist() {
		return refereelistlist;
	}
	public void setRefereelistlist(List<RefereeList> refereelistlist) {
		this.refereelistlist = refereelistlist;
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
		refereelistlist=dao.fetch(offset);
	    setOnereport(this.onereport);
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
		this.offset = offset+5;
	}
	
	public int getPrev() {
		return prev;
	}
	
	public void setPrev(int prev) {
		this.prev = offset-10;
	}
	
	public int getStarter() {
		return starter;
	}
	
	public void setStarter(int starter) {
		this.starter = offset-5+1;
	}
	
	//getter and setter method for Onereport variable//
	public int getOnereport() {
		return onereport;
	}
	
	public void setOnereport(int onereport) {
		//Implementation of the application specific logic to retrieve the data from the database//
			try 
			{
			Connection connect = null;
			PreparedStatement pstmt = null;
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			
			int OneRefereeReport = 0;
			ResultSet result = null;
			String qry = "Select Count(Distinct App_OnlineID) from Referee b where (Select Count(*) from Referee r where r.App_OnlineID = b.App_OnlineID) =1";
			pstmt = connect.prepareStatement(qry);
			result = pstmt.executeQuery();
			{
			        while (result.next())
			        {
			        	OneRefereeReport = result.getInt(1);
			        	System.out.println(OneRefereeReport);
			        	this.onereport = OneRefereeReport;
			        }
			 }		
			}
			  
		 catch (SQLException e) {
			e.printStackTrace();
		 }	
		}
}
