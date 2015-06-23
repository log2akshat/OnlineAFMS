package net.admin.login.action;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import javax.servlet.http.*;
import net.adminsecurity.AdminUser;
import net.admin.login.dao.*;
import net.database.DBConnection;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ServletRequestAware;

public class StatsAction extends ActionSupport implements ServletRequestAware{
	
	private HttpServletRequest request;
	private LoginAction login;
	
	//Data Fetching
	private AdminUserList adminuserlist;
	private List<AdminUserList> adminuserlistlist;
	
	AdminDAO daoprofile = new AdminDAO();
	
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
	   
	   //Statistics Parameters.... 
	   setApplications(this.applications);
	   setRefereereport(this.refereereport);
	   setDistinctrefreport(this.distinctrefreport);
	   setZerorefreport(this.zerorefreport);
	   setOnerefreport(this.onerefreport);
	   setTworefreport(this.tworefreport);
	   setTworefreport(this.tworefreport);
	   setSelected(this.selected);
	   setWaiting(this.waiting);
	   setRejected(this.rejected);
			
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
	
	//Statistics Parameters....
	private int applications;
	private int refereereport;
	private int distinctrefreport;
	private int zerorefreport;
	private int onerefreport;
	private int tworefreport;
	private int selected;
	private int waiting;
	private int rejected;
	
	//getter and setter method for state variable//
	public int getApplications() {
		return applications;
	}
	
	public int getRefereereport() {
		return refereereport;
	}
	
	public int getDistinctrefreport() {
		return distinctrefreport;
	}
	
	public int getZerorefreport() {
		return zerorefreport;
	}
	
	public int getOnerefreport() {
		return onerefreport;
	}
	
	public int getTworefreport() {
		return tworefreport;
	}
	
	public int getSelected() {
		return selected;
	}
	
	public int getWaiting() {
		return waiting;
	}
	
	public int getRejected() {
		return rejected;
	}
	
	public void setApplications(int applications) {
	//Implementation of the application specific logic to retrieve the data from the database//
		try 
		{
		Connection connect = null;
		PreparedStatement pstmt = null;
		DBConnection getConnect = new DBConnection();
		connect = getConnect.getCon();
		
		int Applications = 0;
		ResultSet result = null;
		String qry = "Select count(*) from applicant";
		pstmt = connect.prepareStatement(qry);
		result = pstmt.executeQuery();
		{
		        while (result.next())
		        {
		        	Applications = result.getInt(1);    
		        	this.applications = Applications;
		 }		
		}
		}	  
	 catch (SQLException e) {
		e.printStackTrace();
	 }	
	}
	
	public void setRefereereport(int refereereport) {
		//Implementation of the application specific logic to retrieve the data from the database//
			try 
			{
			Connection connect = null;
			PreparedStatement pstmt = null;
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			
			int Refereereport = 0;
			ResultSet result = null;
			String qry = "Select count(*) from Referee";
			pstmt = connect.prepareStatement(qry);
			result = pstmt.executeQuery();
			{
			        while (result.next())
			        {
			        	Refereereport = result.getInt(1);    
			        	this.refereereport = Refereereport;
			 }		
			}
			}	  
		 catch (SQLException e) {
			e.printStackTrace();
		 }	
		}
	
	public void setDistinctrefreport(int distinctrefreport) {
		//Implementation of the application specific logic to retrieve the data from the database//
			try 
			{
			Connection connect = null;
			PreparedStatement pstmt = null;
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			
			int Distinctrefreport = 0;
			ResultSet result = null;
			String qry = "Select count(DISTINCT App_OnlineID) from Referee";
			pstmt = connect.prepareStatement(qry);
			result = pstmt.executeQuery();
			{
			        while (result.next())
			        {
			        	Distinctrefreport = result.getInt(1);    
			        	this.distinctrefreport = Distinctrefreport;
			 }		
			}
			}	  
		 catch (SQLException e) {
			e.printStackTrace();
		 }	
		}
	
	public void setZerorefreport(int zerorefreport) {
		//Implementation of the application specific logic to retrieve the data from the database//
			try 
			{
			Connection connect = null;
			PreparedStatement pstmt = null;
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			
			int Zerorefreport = 0;
			ResultSet result = null;
			String qry = "Select count(DISTINCT OnlineID) from applicant a where (Select count(*) from Referee r where r.App_OnlineID = a.OnlineID) = 0";
			pstmt = connect.prepareStatement(qry);
			result = pstmt.executeQuery();
			{
			        while (result.next())
			        {
			        	Zerorefreport = result.getInt(1);    
			        	this.zerorefreport = Zerorefreport;
			 }		
			}
			}	  
		 catch (SQLException e) {
			e.printStackTrace();
		 }	
		}
	
	public void setOnerefreport(int onerefreport) {
		//Implementation of the application specific logic to retrieve the data from the database//
			try 
			{
			Connection connect = null;
			PreparedStatement pstmt = null;
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			
			int Onerefreport = 0;
			ResultSet result = null;
			String qry = "Select count(DISTINCT App_OnlineID) from Referee b where (Select count(*) from Referee r where r.App_OnlineID = b.App_OnlineID) = 1";
			pstmt = connect.prepareStatement(qry);
			result = pstmt.executeQuery();
			{
			        while (result.next())
			        {
			        	Onerefreport = result.getInt(1);    
			        	this.onerefreport = Onerefreport;
			 }		
			}
			}	  
		 catch (SQLException e) {
			e.printStackTrace();
		 }	
		}
	
	public void setTworefreport(int tworefreport) {
		//Implementation of the application specific logic to retrieve the data from the database//
			try 
			{
			Connection connect = null;
			PreparedStatement pstmt = null;
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			
			int Tworefreport = 0;
			ResultSet result = null;
			String qry = "Select count(DISTINCT App_OnlineID) from Referee b where (Select count(*) from Referee r where r.App_OnlineID = b.App_OnlineID) >= 2";
			pstmt = connect.prepareStatement(qry);
			result = pstmt.executeQuery();
			{
			        while (result.next())
			        {
			        	Tworefreport = result.getInt(1);    
			        	this.tworefreport = Tworefreport;
			 }		
			}
			}	  
		 catch (SQLException e) {
			e.printStackTrace();
		 }	
		}
	
	public void setSelected(int selected) {
		//Implementation of the application specific logic to retrieve the data from the database//
			try 
			{
			Connection connect = null;
			PreparedStatement pstmt = null;
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			
			int Selected = 0;
			ResultSet result = null;
			String qry = "Select count(*) from applicant where Status = 'Selected'";
			pstmt = connect.prepareStatement(qry);
			result = pstmt.executeQuery();
			{
			        while (result.next())
			        {
			        	Selected = result.getInt(1);    
			        	this.selected = Selected;
			 }		
			}
			}	  
		 catch (SQLException e) {
			e.printStackTrace();
		 }	
		}
	
	public void setWaiting(int waiting) {
		//Implementation of the application specific logic to retrieve the data from the database//
			try 
			{
			Connection connect = null;
			PreparedStatement pstmt = null;
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			
			int Waiting = 0;
			ResultSet result = null;
			String qry = "Select count(*) from applicant where Status = 'Waiting'";
			pstmt = connect.prepareStatement(qry);
			result = pstmt.executeQuery();
			{
			        while (result.next())
			        {
			        	Waiting = result.getInt(1);    
			        	this.waiting = Waiting;
			 }		
			}
			}	  
		 catch (SQLException e) {
			e.printStackTrace();
		 }	
		}
	
	public void setRejected(int rejected) {
		//Implementation of the application specific logic to retrieve the data from the database//
			try 
			{
			Connection connect = null;
			PreparedStatement pstmt = null;
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			
			int Rejected = 0;
			ResultSet result = null;
			String qry = "Select count(*) from applicant where Status = 'Rejected'";
			pstmt = connect.prepareStatement(qry);
			result = pstmt.executeQuery();
			{
			        while (result.next())
			        {
			        	Rejected = result.getInt(1);    
			        	this.rejected = Rejected;
			 }		
			}
			}	  
		 catch (SQLException e) {
			e.printStackTrace();
		 }	
		}
}