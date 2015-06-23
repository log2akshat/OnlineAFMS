package net.admin.login.action;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import javax.servlet.http.*;
import net.adminsecurity.AdminUser;
import net.candidate.login.dao.DAO;
import net.candidate.login.action.UserList;
import net.database.DBConnection;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ServletRequestAware;

public class ViewProfile extends ActionSupport implements ServletRequestAware{
	
	private int oid = 0;
	private HttpServletRequest request;
	private LoginAction login;
	
	//Data Fetching
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
	   
	   try 
		{
			Connection connect = null;
			ResultSet result = null;
			PreparedStatement pstmt = null;
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			
			int id=0;
			String qry = "SELECT OnlineID FROM applicant WHERE OnlineID=?";
			pstmt = connect.prepareStatement(qry);
			pstmt.setInt(1, oid);
			result = pstmt.executeQuery();
			while(result.next())
			{
				id = result.getInt(1);
			}
			System.out.println(id);
			boolean comparing = (id == 0); 
			
			if (comparing == true)
			{			
				addActionError(getText("id_notexixts"));
		        return ERROR;
			}
			
			else
			{
	   userlistlist=dao.fetch(oid);
	   setState(this.state);
	   setCity(this.city);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	
		
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
	
	//State & City Lists
	private List state = new ArrayList();
	private List city = new ArrayList();
	
	//getter and setter method for state variable//
	public List getState() {
		return state;
	}
	
	public List getCity() {
		return city;
	}
	
	public void setState(List state) {
	//Implementation of the application specific logic to retrieve the data from the database//
		try 
		{
		Connection connect = null;
		PreparedStatement pstmt = null;
		DBConnection getConnect = new DBConnection();
		connect = getConnect.getCon();
		
		int StateID = 0;
		String State = "";
		ResultSet result_state = null;
		String Stateqry = "Select * from state";
		pstmt = connect.prepareStatement(Stateqry);
		result_state = pstmt.executeQuery();
		{
		        while (result_state.next())
		        {
		            StateID = result_state.getInt(1);    
		        	State = result_state.getString(2);
		        	System.out.println(StateID + ":" + State);
		        	state.add(State);
		        }
		 }		
		}
		  
	 catch (SQLException e) {
		e.printStackTrace();
	 }	
	}
	
	public void setCity(List city) {
		//Implementation of the application specific logic to retrieve the data from the database//
			try 
			{
			Connection connect = null;
			PreparedStatement pstmt = null;
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			
			String City = "";
			ResultSet result_city = null;
			String Cityqry = "Select CityName from City";
			pstmt = connect.prepareStatement(Cityqry);
			result_city = pstmt.executeQuery();
			{
			        while (result_city.next())
			        {
			            City = result_city.getString(1);
			        	city.add(City);
			        }
			 }		
			}
			  
		 catch (SQLException e) {
			e.printStackTrace();
		 }	
		}
}