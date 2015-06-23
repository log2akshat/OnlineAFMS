package net.candidate.login.action;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import javax.servlet.http.*;
import net.security.User;
import net.candidate.login.dao.DAO;
import net.database.DBConnection;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ServletRequestAware;

public class ViewProfile extends ActionSupport implements ServletRequestAware{
	
	private String password;
	private HttpServletRequest request;
	private LoginAction login;
	
	//Data Fetching
	private UserList userlist;
	private List<UserList> userlistlist;
	
	DAO dao=new DAO();
	
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
	   User user=(User)session.getAttribute("User");
	
	   String OnlineID = "";
	   OnlineID = session.getAttribute("registrationid").toString();
	   int regid = 0;
	   regid = Integer.parseInt(OnlineID);
	   userlistlist=dao.fetch(regid);
	   setState(this.state);
	   setCity(this.city);
	 
	   if(user!=null){
		   System.out.println(user);
		   if(user.isCandidate())
			   return SUCCESS;
		   else{
			   this.addActionError("You are not authorised for this action.");
			   return LOGIN;
		   }
	   }
	   else{
		   this.addActionError("You must be Logged in.");
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
